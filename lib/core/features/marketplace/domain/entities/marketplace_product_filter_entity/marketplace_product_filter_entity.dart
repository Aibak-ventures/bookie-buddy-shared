import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_main_category_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_sort_by_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_product_filter_entity.freezed.dart';

/// Criteria for the marketplace listing.
///
/// The API requires at least one category; leave [categories] empty to use
/// the requested [MarketplaceMainCategory] names (see the products usecase).
@freezed
abstract class MarketplaceProductFilterEntity
    with _$MarketplaceProductFilterEntity {
  const factory MarketplaceProductFilterEntity({
    @Default([]) List<String> categories,
    // Fabrics and subcategories are sent by id; colors and models by name.
    @Default([]) List<int> subcategoryIds,
    @Default([]) List<int> fabricIds,
    // TODO(marketplace): unverified — `models` is not in the documented
    // request body yet.
    @Default([]) List<String> models,
    @Default([]) List<String> colors,
    bool? isPremium,
    double? minPrice,
    double? maxPrice,
    String? search,
    MarketplaceSortBy? sortBy,
    @Default(true) bool showSellingPrice,
  }) = _MarketplaceProductFilterEntity;
}

extension MarketplaceProductFilterEntityX on MarketplaceProductFilterEntity {
  bool get hasPriceRange => minPrice != null || maxPrice != null;

  /// How many selections narrow the list: each chosen subcategory, fabric,
  /// model and color, plus one for a price range. Search and sort don't count.
  int get activeFilterCount =>
      subcategoryIds.length +
      fabricIds.length +
      models.length +
      colors.length +
      (hasPriceRange ? 1 : 0);
}
