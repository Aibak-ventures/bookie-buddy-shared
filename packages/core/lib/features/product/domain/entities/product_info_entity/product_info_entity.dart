import 'package:bookie_buddy_core/core/constants/enums/booking_status_enums.dart';
import 'package:bookie_buddy_core/core/constants/enums/main_service_type_enums.dart';
import 'package:bookie_buddy_core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
import 'package:bookie_buddy_core/features/product/domain/entities/product_entity/product_attributes_entity.dart';
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
    int? hourlyRentPrice,
    @Default(ProductDeliveryStatus.notReturned)
    ProductDeliveryStatus deliveryStatus,
    String? returnedAt,
    @Default(ProductAttributesEntity()) ProductAttributesEntity attributes,
  }) = _ProductInfoEntity;
}
