import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_fabric_entity/marketplace_fabric_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_media_entity/marketplace_media_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_entity/marketplace_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_product_details_entity.freezed.dart';

/// A marketplace model with its full gallery and specifications.
@freezed
abstract class MarketplaceProductDetailsEntity
    with _$MarketplaceProductDetailsEntity {
  const factory MarketplaceProductDetailsEntity({
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
    // Up to 3 images, ordered by sortOrder.
    @Default([]) List<MarketplaceMediaEntity> images,
    // Up to 1 video.
    @Default([]) List<MarketplaceMediaEntity> videos,
    @Default(false) bool showSellingPrice,
    @Default([]) List<int> sizeOptions,
    @Default(1) int minimumOrderQuantity,
    int? maximumOrderQuantity,
    @Default([]) List<MarketplaceFabricEntity> fabrics,
    DateTime? publishedAt,
  }) = _MarketplaceProductDetailsEntity;
}

extension MarketplaceProductDetailsEntityX on MarketplaceProductDetailsEntity {
  double? get startingPrice => fabrics.startingPrice(showSellingPrice);
}
