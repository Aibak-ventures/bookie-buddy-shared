/// Notes and hint text for booking payments and refunds. Shared so mobile and
/// web record and show the same wording.
class PaymentNotes {
  const PaymentNotes._();

  static const String rentPayment = 'Used for rent payment';
  static const String paymentRefund = 'Payment refund';

  /// Refund reason recorded when a booking is cancelled with a refund.
  static const String bookingCancelled = 'Booking cancelled';

  /// Hint shown under the amount field when refunding a payment.
  static const String refundExcludesSecurityInfo =
      'Security deposit is excluded from refund. Use the security section to refund it.';

  /// The note to record for a payment/refund.
  ///
  /// A blank [note] falls back to the default for the transaction type, and
  /// the rent-payment default is never kept on a refund (callers that
  /// pre-fill the field with it would otherwise send it for refunds too).
  static String forTransaction({
    required String? note,
    required bool isRefund,
  }) {
    final trimmed = note?.trim();
    if (trimmed == null || trimmed.isEmpty || trimmed == rentPayment) {
      return isRefund ? paymentRefund : rentPayment;
    }
    return trimmed;
  }
}
