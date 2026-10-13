import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_main_category_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_sort_by_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_product_filter_entity.freezed.dart';

/// Criteria for the marketplace listing. Every facet is sent by name.
///
/// The API requires at least one category; leave [categories] empty to use
/// every [MarketplaceMainCategory] (see the products usecase).
@freezed
abstract class MarketplaceProductFilterEntity
    with _$MarketplaceProductFilterEntity {
  const factory MarketplaceProductFilterEntity({
    @Default([]) List<String> categories,
    // TODO(marketplace): unverified — the `subcategories`, `fabrics` and
    // `models` filters are not in the documented request body yet.
    @Default([]) List<String> subcategories,
    @Default([]) List<String> fabrics,
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
