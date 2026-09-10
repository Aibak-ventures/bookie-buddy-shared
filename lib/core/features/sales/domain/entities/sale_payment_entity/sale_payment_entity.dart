import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/enums/payment_method_enums.dart';

part 'sale_payment_entity.freezed.dart';

/// One payment record on an existing sale, as returned by the sale
/// details/list endpoints' `payments` array (length 1 for a plain sale,
/// 2 for a cash/bank split sale). [id] is the payment record's id — needed
/// so an edit can update this exact leg instead of creating a new one.
@freezed
abstract class SalePaymentEntity with _$SalePaymentEntity {
  const factory SalePaymentEntity({
    required int id,
    required int amount,
    required String? accountName,
    required int? accountId,
    required String date,
    required PaymentMethod paymentMethod,
  }) = _SalePaymentEntity;
}
