import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_payment_request_entity.freezed.dart';

/// One leg of a sale's `payments` array (create/edit request).
///
/// [id] is null for a brand-new payment leg (the backend creates a record)
/// and set to an existing payment's id to update that record in place —
/// e.g. when a split sale is edited, each leg that already existed keeps
/// its id so the backend updates it instead of creating a duplicate.
@freezed
abstract class SalesPaymentRequestEntity with _$SalesPaymentRequestEntity {
  const factory SalesPaymentRequestEntity({
    int? id,
    required int accountId,
    required int amount,
  }) = _SalesPaymentRequestEntity;
}
