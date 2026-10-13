import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_fabric_entity.freezed.dart';

/// A fabric a model can be made in. Price depends on the fabric, not the model.
@freezed
abstract class MarketplaceFabricEntity with _$MarketplaceFabricEntity {
  const factory MarketplaceFabricEntity({
    required int id,
    required String name,
    String? category,
    // Null when the shop is not allowed to see prices for this model
    // (`showSellingPrice == false`).
    double? sellingPrice,
  }) = _MarketplaceFabricEntity;
}
