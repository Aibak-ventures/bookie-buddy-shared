import 'package:bookie_buddy_shared/core/core/common/entities/additional_charges_entity/additional_charges_entity.dart';
import 'package:bookie_buddy_shared/core/core/common/entities/applied_tax_entity/applied_tax_entity.dart';
import 'package:bookie_buddy_shared/core/core/common/entities/document_details_entity/document_details_entity.dart';
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
