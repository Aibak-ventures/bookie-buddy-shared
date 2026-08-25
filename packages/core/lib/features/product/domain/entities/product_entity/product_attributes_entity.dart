import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_attributes_entity.freezed.dart';

@freezed
abstract class ProductAttributesEntity with _$ProductAttributesEntity {
  const factory ProductAttributesEntity({
    String? pollutionExpiryDate,
    String? insuranceExpiryDate,
    String? fitnessExpiryDate,
    String? permitDate,
    String? registrationNumber,
  }) = _ProductAttributesEntity;
}
