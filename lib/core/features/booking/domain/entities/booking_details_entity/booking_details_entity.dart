import 'package:bookie_buddy_shared/core/core/common/entities/additional_charges_entity/additional_charges_entity.dart';
import 'package:bookie_buddy_shared/core/core/common/entities/applied_tax_entity/applied_tax_entity.dart';
import 'package:bookie_buddy_shared/core/core/common/entities/document_details_entity/document_details_entity.dart';
import 'package:bookie_buddy_shared/core/core/common/utils/date_time_extensions.dart';
import 'package:bookie_buddy_shared/core/core/common/utils/string_date_extensions.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/booking_status_enums.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/booking_rental_unit_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/cooling_period_mode_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/payment_method_enums.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_other_details_entity/booking_other_details_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_payment_history_entity/booking_payment_history_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_refund_history_entity/booking_refund_history_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_security_payment_entity/booking_security_payment_entity.dart';
import 'package:bookie_buddy_shared/core/features/client/domain/entities/client_entity/client_entity.dart';
import 'package:bookie_buddy_shared/core/features/product/domain/entities/product_info_entity/product_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_details_entity.freezed.dart';

@freezed
abstract class BookingDetailsEntity with _$BookingDetailsEntity {
  const factory BookingDetailsEntity({
    required int id,
    required String invoiceId,
    required String createdAt,
    required String bookedDate,
    String? bookingCompletedDate,
    required String? pickupDate,
    required String returnDate,
    String? coolingPeriodDate,
    // Mobile has no equivalent — it derives cooling-period mode manually
    // from dates instead of storing it (see EditBookingFormStateController
    // on mobile). Added for web, which gets this directly from its
    // backend and reads it as a typed enum already.
    CoolingPeriodMode? coolingPeriodType,
    required int totalAmount,
    required int totalAmountWithSecurity,
    int? discountAmount,
    required int paidAmount,
    required int paidAmountWithSecurity,
    required int totalPayable,
    required PurchaseMode purchaseMode,
    required BookingStatus bookingStatus,
    required PaymentStatus paymentStatus,
    required DeliveryStatus deliveryStatus,
    String? staffName,
    int? staffId,
    required BookingOtherDetailsEntity otherDetails,
    String? address,
    required ClientEntity client,
    String? description,
    required List<ProductInfoEntity> bookedItems,
    @Default([]) List<AdditionalChargesEntity> additionalCharges,
    @Default([]) List<BookingPaymentHistoryEntity> paymentHistory,
    @Default([])
    List<BookingSecurityRefundHistoryEntity> securityTransactionHistory,
    required BookingSecuritySummaryEntity securityTransactionSummary,
    @Default([]) List<BookingRefundHistoryEntity> refundHistory,
    BookingSecurityPaymentEntity? securityPayment,
    required String? pickupTime,
    required String? returnTime,
    required int refundTotal,
    required int refundableBalance,
    @Default([]) List<String> documents,
    DocumentDetailsEntity? documentsDetails,
    required BookingRentalUnit rentalUnit,
    @Default(false) bool isSecurityPaid,
    required int balanceAmount,
    @Default([]) List<AppliedTaxEntity> appliedTaxes,
  }) = _BookingDetailsEntity;
}

extension BookingDetailsEntityX on BookingDetailsEntity {
  /// The security refund section (and using security as payment) is available
  /// only once the security is paid and the booking is returned/cancelled, or
  /// a refund/deduction has already been made.
  bool get shouldShowSecurityRefundSection {
    if (securityTransactionSummary.totalSecurityAmount <= 0 ||
        !isSecurityPaid) {
      return false;
    }
    return deliveryStatus.isBookingClosed ||
        securityTransactionHistory.isNotEmpty;
  }
}

/// Rules for the date the security deposit was paid, shared by the apps'
/// edit-booking screens so they can't drift apart.
///
/// The paid date can't be before the booked date, and can't be after the
/// first security refund/deduction (the deposit can't be paid after it was
/// already refunded or deducted) or after today. Only the calendar day of
/// every date counts; a UTC timestamp is read as the local calendar day.
extension BookingDetailsSecurityPaidDateX on BookingDetailsEntity {
  /// Earliest allowed security paid date (and pickup date): the booked date.
  /// Falls back to the creation date, then today, if it can't be parsed.
  DateTime get bookedDateOnly =>
      _calendarDay(bookedDate) ??
      _calendarDay(createdAt) ??
      DateTime.now().dateOnly;

  /// Latest allowed security paid date: [today] (defaults to now) or the day
  /// of the first security refund/deduction (any entry in
  /// [securityTransactionHistory]), whichever is earlier. Entries with an
  /// unparseable date are ignored.
  DateTime securityPaidLastDate({DateTime? today}) {
    var last = (today ?? DateTime.now()).dateOnly;
    for (final transaction in securityTransactionHistory) {
      final day = _calendarDay(transaction.createdAt);
      if (day != null && day.isBefore(last)) last = day;
    }
    return last;
  }

  /// Whether there is more than one day to choose from. When the booked date
  /// and the latest allowed date are the same day, the date field is pointless.
  bool canEditSecurityPaidDate({DateTime? today}) =>
      securityPaidLastDate(today: today).isAfter(bookedDateOnly);

  /// The saved security paid date, clamped into the allowed range (old data
  /// may sit outside it). Defaults to the latest allowed date when none is
  /// saved. The result is never after [securityPaidLastDate].
  DateTime savedSecurityPaidDate({DateTime? today}) {
    final last = securityPaidLastDate(today: today);
    final saved = _calendarDay(securityPayment?.paidAt) ?? last;
    final booked = bookedDateOnly;
    final lowerBounded = saved.isBefore(booked) ? booked : saved;
    return lowerBounded.isAfter(last) ? last : lowerBounded;
  }
}

/// Local calendar day of [value], or `null` when it is empty/unparseable.
DateTime? _calendarDay(String? value) {
  final parsed = value?.tryParseToDateTime();
  if (parsed == null) return null;
  return (parsed.isUtc ? parsed.toLocal() : parsed).dateOnly;
}
