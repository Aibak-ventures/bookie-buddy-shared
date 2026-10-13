import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_fabric_entity/marketplace_fabric_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_media_entity/marketplace_media_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_product_entity.freezed.dart';

/// A marketplace model as shown in the listing (summary view).
@freezed
abstract class MarketplaceProductEntity with _$MarketplaceProductEntity {
  const factory MarketplaceProductEntity({
    required int id,
    required String productCode,
    required String name,
    required int categoryId,
    required String categoryName,
    int? subcategoryId,
    String? subcategoryName,
    @Default(false) bool isPremium,
    String? color,
    String? model,
    String? description,
    MarketplaceMediaEntity? thumbnail,
    @Default(false) bool showSellingPrice,
    @Default(1) int minimumOrderQuantity,
    int? maximumOrderQuantity,
    @Default([]) List<MarketplaceFabricEntity> fabrics,
  }) = _MarketplaceProductEntity;
}

extension MarketplaceProductEntityX on MarketplaceProductEntity {
  /// Cheapest priced fabric, or null when prices are hidden / not set.
  double? get startingPrice => fabrics.startingPrice(showSellingPrice);
}

extension MarketplaceFabricListX on List<MarketplaceFabricEntity> {
  /// Lowest fabric price, or null when prices are hidden or no fabric has one.
  double? startingPrice(bool showSellingPrice) {
    if (!showSellingPrice) return null;
    final prices = map((f) => f.sellingPrice).whereType<double>();
    return prices.isEmpty ? null : prices.reduce((a, b) => a < b ? a : b);
  }
}
