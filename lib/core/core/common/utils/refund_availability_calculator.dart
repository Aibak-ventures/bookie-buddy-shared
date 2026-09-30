import 'package:bookie_buddy_shared/core/core/common/entities/snack_bar_message/snack_bar_message.dart';
import 'package:bookie_buddy_shared/core/core/common/utils/date_time_extensions.dart';

/// A minimal view of a payment- or refund-history record, enough to check
/// refund availability on a given date without depending on any feature's
/// entity.
class PaymentHistoryDateAmount {
  const PaymentHistoryDateAmount({
    required this.date,
    required this.amount,
    this.isRefund = false,
  });

  final DateTime date;
  final int amount;

  /// Whether this record is a refund already issued, rather than an
  /// original payment. Refunds reduce what's still available to refund
  /// again — see [RefundAvailabilityCalculator.totalPaidUpToDate].
  final bool isRefund;
}

/// Why a refund is blocked as of a given date — see
/// [RefundAvailabilityCalculator.classifyUnavailability].
enum RefundUnavailabilityReason {
  /// No payment was recorded on or before the date at all.
  noPaymentByDate,

  /// A payment existed by that date, but every bit of it has since been
  /// refunded (per the whole-ledger minimum, not just refunds dated on or
  /// before that date).
  fullyRefunded,

  /// Some amount is still available as of that date, just less than what
  /// was requested.
  partiallyAvailable,
}

/// The user-facing message for why a refund is blocked as of a date — the
/// single source of truth for this copy so mobile and web don't hand-copy
/// the same three sentences. A [SnackBarMessage] subclass rather than a
/// static builder, so any future case needing its own ready-to-show message
/// (not just refund availability) has the same pattern to extend from.
///
/// Takes [formatDate]/[formatAmount] rather than formatting itself, since
/// date/currency display is app-specific and this class stays pure Dart.
///
/// [reason] should come from [RefundAvailabilityCalculator.classifyUnavailability]
/// for the same [history]/[date], and [availableForDate] from
/// [RefundAvailabilityCalculator.totalPaidUpToDate] for the same — both are
/// taken as params rather than recomputed here since callers already need
/// them for their own availability gate before reaching this message.
class RefundUnavailableMessage extends SnackBarMessage {
  RefundUnavailableMessage({
    required RefundUnavailabilityReason reason,
    required DateTime date,
    required num availableForDate,
    required num requestedAmount,
    required String Function(DateTime date) formatDate,
    required String Function(num amount) formatAmount,
  }) : super(
         title: 'Refund Not Available',
         isError: true,
         message: switch (reason) {
           RefundUnavailabilityReason.noPaymentByDate =>
             'No payment was recorded on or before ${formatDate(date)}, so there\'s nothing to refund for that date.',
           RefundUnavailabilityReason.fullyRefunded =>
             'The amount paid by ${formatDate(date)} has already been fully refunded.',
           RefundUnavailabilityReason.partiallyAvailable =>
             'Only ${formatAmount(availableForDate)} is available to refund as of ${formatDate(date)} — you entered ${formatAmount(requestedAmount)}.',
         },
       );
}

/// Checks whether a refund amount is covered by payments made on or before
/// a given date, net of refunds already issued against them.
class RefundAvailabilityCalculator {
  const RefundAvailabilityCalculator._();

  /// Net amount still available to refund as of [date]: simulates the real
  /// chronological ledger (every payment and refund in [history], in the
  /// order they actually happened) and returns the *lowest* balance that
  /// ledger ever reaches from [date] onward, through to the most recent
  /// entry.
  ///
  /// Checking only two points — the balance at [date] and the balance now —
  /// isn't enough: a refund already issued *after* [date] has permanently
  /// removed money from the pool the moment it happened, regardless of what
  /// date a *new* refund is backdated to. A new refund inserted at [date]
  /// can never exceed the lowest point the real balance dips to anywhere
  /// between [date] and now, or it would retroactively make that later,
  /// already-issued refund impossible. Taking the minimum across the whole
  /// suffix (not just its endpoints) is what actually catches that.
  ///
  /// [date] is compared day-granular (inclusive of the whole day) — entries
  /// recorded on the same calendar day as [date] count toward the balance
  /// at [date], not the suffix after it.
  static int totalPaidUpToDate({
    required List<PaymentHistoryDateAmount> history,
    required DateTime date,
  }) {
    if (history.isEmpty) return 0;

    final chronological = [...history]..sort((a, b) => a.date.compareTo(b.date));

    var balance = 0;
    var index = 0;

    // Balance accumulated through the end of `date`.
    for (; index < chronological.length; index++) {
      final record = chronological[index];
      if (!record.date.isOnOrBeforeDate(date)) break;
      balance += record.isRefund ? -record.amount : record.amount;
    }

    // Continue the same running balance through every later, real entry,
    // tracking the lowest point it ever reaches.
    var minBalanceFromDateOnward = balance;
    for (; index < chronological.length; index++) {
      final record = chronological[index];
      balance += record.isRefund ? -record.amount : record.amount;
      if (balance < minBalanceFromDateOnward) {
        minBalanceFromDateOnward = balance;
      }
    }

    return minBalanceFromDateOnward < 0 ? 0 : minBalanceFromDateOnward;
  }

  /// Whether [refundAmount] can be covered by the payments made on or before
  /// [date], net of refunds already issued — i.e. the net amount still
  /// available as of that date is at least [refundAmount].
  static bool isRefundAmountAvailableOnDate({
    required List<PaymentHistoryDateAmount> history,
    required DateTime date,
    required int refundAmount,
  }) => totalPaidUpToDate(history: history, date: date) >= refundAmount;

  /// Why a refund isn't (fully) available as of [date] — for surfacing a
  /// specific reason to the user rather than a generic "not enough"
  /// message. Only meaningful when the caller already knows the requested
  /// amount exceeds [totalPaidUpToDate] for [date]; this doesn't take the
  /// requested amount itself, since the distinction is about the *state* of
  /// the ledger at that date, not about any one amount.
  static RefundUnavailabilityReason classifyUnavailability({
    required List<PaymentHistoryDateAmount> history,
    required DateTime date,
  }) {
    final hasAnyPaymentByDate = history.any(
      (record) => !record.isRefund && record.date.isOnOrBeforeDate(date),
    );
    if (!hasAnyPaymentByDate) {
      return RefundUnavailabilityReason.noPaymentByDate;
    }
    return totalPaidUpToDate(history: history, date: date) <= 0
        ? RefundUnavailabilityReason.fullyRefunded
        : RefundUnavailabilityReason.partiallyAvailable;
  }

  /// A timestamp safe to send to the backend for a refund on [date], when
  /// the caller can only supply a day (no time) and the backend fills in
  /// whatever time the API request happens to land at.
  ///
  /// That's a problem when [date] is a *past* day that also has a payment
  /// recorded on it: "now" at submit time can be earlier than that
  /// payment's own timestamp, and a backend that checks "was this paid by
  /// this exact instant" rejects the refund as not yet paid. This returns a
  /// timestamp just after the latest *payment* (not refund) recorded on
  /// [date] to guard against that.
  ///
  /// Returns `null` when [date] is today (the actual submit time is the
  /// real time there — nothing to correct) or when no payment entry in
  /// [history] falls on [date] (no same-day collision to guard against);
  /// either way, the caller should fall back to sending [date] alone.
  static DateTime? safeRefundTimestampForDate({
    required List<PaymentHistoryDateAmount> history,
    required DateTime date,
  }) {
    if (date.dateOnly == DateTime.now().dateOnly) return null;

    final paymentsOnDate = history.where(
      (record) => !record.isRefund && record.date.dateOnly == date.dateOnly,
    );
    if (paymentsOnDate.isEmpty) return null;

    final latestPaymentOnDate = paymentsOnDate
        .map((record) => record.date)
        .reduce((a, b) => a.isAfter(b) ? a : b);
    final bumped = latestPaymentOnDate.add(const Duration(minutes: 1));
    return bumped.dateOnly == latestPaymentOnDate.dateOnly
        ? bumped
        : DateTime(
            latestPaymentOnDate.year,
            latestPaymentOnDate.month,
            latestPaymentOnDate.day,
            23,
            59,
            59,
          );
  }
}
