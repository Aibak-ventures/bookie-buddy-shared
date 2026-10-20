import 'package:bookie_buddy_shared/core/core/constants/enums/booking_status_enums.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/booking_rental_unit_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/payment_method_enums.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_details_entity/booking_details_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_other_details_entity/booking_other_details_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_payment_history_entity/booking_payment_history_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_security_payment_entity/booking_security_payment_entity.dart';
import 'package:bookie_buddy_shared/core/features/client/domain/entities/client_entity/client_entity.dart';
import 'package:test/test.dart';

BookingDetailsEntity booking({
  required String bookedDate,
  String? paidAt,
  List<String> transactionDates = const [],
}) => BookingDetailsEntity(
  id: 1,
  invoiceId: 'INV-1',
  createdAt: bookedDate,
  bookedDate: bookedDate,
  pickupDate: null,
  returnDate: bookedDate,
  totalAmount: 0,
  totalAmountWithSecurity: 0,
  paidAmount: 0,
  paidAmountWithSecurity: 0,
  totalPayable: 0,
  purchaseMode: PurchaseMode.normal,
  bookingStatus: BookingStatus.upcoming,
  paymentStatus: PaymentStatus.pending,
  deliveryStatus: DeliveryStatus.booked,
  otherDetails: const BookingOtherDetailsEntity(),
  client: const ClientEntity(name: 'A', phone1: '+910000000000'),
  bookedItems: const [],
  securityTransactionSummary: const BookingSecuritySummaryEntity(
    totalSecurityAmount: 100,
    totalRefunded: 0,
    totalDeducted: 0,
    pendingDeposit: 100,
  ),
  securityTransactionHistory: [
    for (final d in transactionDates)
      BookingSecurityRefundHistoryEntity(
        id: 1,
        amount: 10,
        accountName: null,
        accountId: null,
        note: '',
        type: SecurityPaymentHistoryType.refund,
        createdAt: d,
      ),
  ],
  securityPayment: BookingSecurityPaymentEntity(amount: 100, paidAt: paidAt),
  pickupTime: null,
  returnTime: null,
  refundTotal: 0,
  refundableBalance: 0,
  rentalUnit: BookingRentalUnit.daily,
  balanceAmount: 0,
);

void main() {
  final today = DateTime(2026, 10, 20);

  test('last date is today when there is no refund or deduction', () {
    final b = booking(bookedDate: '2026-10-10');
    expect(b.securityPaidLastDate(today: today), DateTime(2026, 10, 20));
    expect(b.canEditSecurityPaidDate(today: today), isTrue);
  });

  test('last date is capped to the first refund/deduction', () {
    final b = booking(
      bookedDate: '2026-10-10',
      transactionDates: ['2026-10-18', '2026-10-14'],
    );
    expect(b.securityPaidLastDate(today: today), DateTime(2026, 10, 14));
  });

  test('field is not editable when booked today', () {
    final b = booking(bookedDate: '2026-10-20');
    expect(b.canEditSecurityPaidDate(today: today), isFalse);
  });

  test('field is not editable when refunded on the booked date', () {
    final b = booking(
      bookedDate: '2026-10-10',
      transactionDates: ['2026-10-10'],
    );
    expect(b.canEditSecurityPaidDate(today: today), isFalse);
  });

  test('saved date is clamped into the allowed range', () {
    final before = booking(bookedDate: '2026-10-10', paidAt: '2026-10-01');
    expect(before.savedSecurityPaidDate(today: today), DateTime(2026, 10, 10));

    final after = booking(
      bookedDate: '2026-10-10',
      paidAt: '2026-10-19',
      transactionDates: ['2026-10-15'],
    );
    expect(after.savedSecurityPaidDate(today: today), DateTime(2026, 10, 15));

    final inside = booking(bookedDate: '2026-10-10', paidAt: '2026-10-12');
    expect(inside.savedSecurityPaidDate(today: today), DateTime(2026, 10, 12));
  });

  test('saved date defaults to the last allowed date when none saved', () {
    final b = booking(bookedDate: '2026-10-10');
    expect(b.savedSecurityPaidDate(today: today), DateTime(2026, 10, 20));
  });

  test('unparseable dates do not throw', () {
    final b = booking(
      bookedDate: 'garbage',
      paidAt: '',
      transactionDates: ['not a date'],
    );
    expect(b.securityPaidLastDate(today: today), DateTime(2026, 10, 20));
    expect(() => b.bookedDateOnly, returnsNormally);
    expect(() => b.savedSecurityPaidDate(today: today), returnsNormally);
  });

  test('day-first and time-carrying strings are read by calendar day', () {
    final b = booking(
      bookedDate: '10-10-2026',
      paidAt: '2026-10-12 23:59:59',
      transactionDates: ['2026-10-18 08:00:00'],
    );
    expect(b.bookedDateOnly, DateTime(2026, 10, 10));
    expect(b.securityPaidLastDate(today: today), DateTime(2026, 10, 18));
    expect(b.savedSecurityPaidDate(today: today), DateTime(2026, 10, 12));
  });

  test('a UTC timestamp is read as the local calendar day', () {
    final utc = DateTime.utc(2026, 10, 14, 22);
    final local = utc.toLocal();
    final b = booking(
      bookedDate: '2026-10-10',
      transactionDates: [utc.toIso8601String()],
    );
    expect(
      b.securityPaidLastDate(today: today),
      DateTime(local.year, local.month, local.day),
    );
  });

  test('today with a time of day only counts as a calendar day', () {
    final b = booking(bookedDate: '2026-10-10');
    expect(
      b.securityPaidLastDate(today: DateTime(2026, 10, 20, 23, 59)),
      DateTime(2026, 10, 20),
    );
  });

  test('saved date never exceeds the last date for a future booking', () {
    final b = booking(bookedDate: '2026-10-25', paidAt: '2026-10-26');
    expect(b.canEditSecurityPaidDate(today: today), isFalse);
    expect(b.savedSecurityPaidDate(today: today), DateTime(2026, 10, 20));
  });
}
