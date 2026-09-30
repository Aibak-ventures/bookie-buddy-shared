import 'package:bookie_buddy_shared/core/core/common/utils/refund_availability_calculator.dart';
import 'package:bookie_buddy_shared/core/core/common/utils/string_date_extensions.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_details_entity/booking_details_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_payment_history_entity/booking_payment_history_entity.dart';

extension BookingDetailsRefundCheckMapper on BookingDetailsEntity {
  /// Combines [paymentHistory] and [refundHistory] into the minimal shape
  /// [RefundAvailabilityCalculator] needs to check refund availability by
  /// date, net of refunds already issued.
  ///
  /// [paymentHistory] mixes regular booking payments with security-deposit
  /// payments (distinguished by [BookingPaymentHistoryEntity.paymentType]).
  /// Security deposits are a separate pool with their own refund/deduction
  /// mechanism (see the security-refund dialog) — including them here would
  /// let a general refund draw on money that was never actually part of
  /// this pool, overstating what's available.
  List<PaymentHistoryDateAmount> toRefundAvailabilityHistory() => [
    ...paymentHistory
        .where((e) => e.paymentType == BookingPaymentHistoryPaymentType.payment)
        .map(
          (e) => PaymentHistoryDateAmount(
            date: e.createdAt.parseToDateTime(),
            amount: e.amount,
          ),
        ),
    ...refundHistory.map(
      (e) => PaymentHistoryDateAmount(
        date: e.createdAt.parseToDateTime(),
        amount: e.amount,
        isRefund: true,
      ),
    ),
  ];
}
