import 'package:freezed_annotation/freezed_annotation.dart';

part 'unavailable_products_entity.freezed.dart';

/// The stock conflict the API reports when a booking action can't go through
/// because one of its variants is already committed elsewhere.
@freezed
abstract class UnavailableProductsEntity with _$UnavailableProductsEntity {
  const factory UnavailableProductsEntity({
    required String? message,
    required String? dateFrom,
    required String? dateTo,
    required List<int> unavailableProducts,
    required String? bookingInvoiceId,
    required int? bookingId,
  }) = _UnavailableProductsEntity;
}
