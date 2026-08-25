import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_payment_history_entity.freezed.dart';

@freezed
abstract class BookingPaymentHistoryEntity with _$BookingPaymentHistoryEntity {
  const factory BookingPaymentHistoryEntity({
    required int id,
    required int amount,
    required String? accountName,
    required int? accountId,
    required String createdAt,
    @Default(BookingPaymentHistoryPaymentType.payment)
    BookingPaymentHistoryPaymentType paymentType,
  }) = _BookingPaymentHistoryEntity;
}

@freezed
abstract class BookingSecurityRefundHistoryEntity
    with _$BookingSecurityRefundHistoryEntity {
  const factory BookingSecurityRefundHistoryEntity({
    required int id,
    required int amount,
    required String? accountName,
    required int? accountId,
    required String note,
    required SecurityPaymentHistoryType type,
    required String createdAt,
  }) = _BookingSecurityRefundHistoryEntity;
}

@freezed
abstract class BookingSecuritySummaryEntity
    with _$BookingSecuritySummaryEntity {
  const factory BookingSecuritySummaryEntity({
    required int totalSecurityAmount,
    required int totalRefunded,
    required int totalDeducted,
    required int pendingDeposit,
  }) = _BookingSecuritySummaryEntity;
}

enum SecurityPaymentHistoryType {
  refund('refund'),
  deduction('deduction');

  final String value;

  const SecurityPaymentHistoryType(this.value);

  static SecurityPaymentHistoryType fromJson(String? value) {
    if (value == null) return SecurityPaymentHistoryType.refund;
    return SecurityPaymentHistoryType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => SecurityPaymentHistoryType.refund,
    );
  }

  bool get isRefund => this == SecurityPaymentHistoryType.refund;
  bool get isDeduction => this == SecurityPaymentHistoryType.deduction;
}

enum BookingPaymentHistoryPaymentType {
  payment('payments'),
  security('security');

  final String value;
  const BookingPaymentHistoryPaymentType(this.value);

  static BookingPaymentHistoryPaymentType fromJson(String? apiValue) {
    if (apiValue == null) return .payment;
    return values.firstWhere(
      (e) => e.value == apiValue,
      orElse: () => .payment,
    );
  }

  static String toJson(BookingPaymentHistoryPaymentType type) => type.value;
}
