import 'package:bookie_buddy_shared/core/core/constants/enums/booking_status_enums.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/main_service_type_enums.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
import 'package:bookie_buddy_shared/core/features/product/domain/entities/product_entity/product_attributes_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_info_entity.freezed.dart';

@freezed
abstract class ProductInfoEntity with _$ProductInfoEntity {
  const factory ProductInfoEntity({
    required int id,
    required int? productId,
    required int? variantId,
    int? serviceId,
    required String name,
    required String? thumbnailImage,
    String? productImage,
    MainServiceType? mainServiceType,
    String? variantAttribute,
    String? color,
    String? category,
    String? model,
    required int quantity,
    required double fabricLength,
    required int amount,
    @Default([]) List<MeasurementValueEntity> measurements,
    // Mobile-only: a rental's return lifecycle. Rented items don't need
    // live stock counts — they still "exist", they just need to come
    // back — so mobile tracks this instead of stock/remainingStock.
    int? hourlyRentPrice,
    @Default(ProductDeliveryStatus.notReturned)
    ProductDeliveryStatus deliveryStatus,
    String? returnedAt,
    // Web-only: direct-sale stock tracking, real usage across booking,
    // sales, and product-management screens. No mobile equivalent because
    // mobile doesn't track live stock at this level — see hourlyRentPrice/
    // deliveryStatus/returnedAt above for what it tracks instead. Not the
    // same concept as mobile's catalog-level ProductVariantEntity.stock;
    // this is the line-item snapshot's own value.
    int? stock,
    int? remainingStock,
    @Default(ProductAttributesEntity()) ProductAttributesEntity attributes,
  }) = _ProductInfoEntity;
}
