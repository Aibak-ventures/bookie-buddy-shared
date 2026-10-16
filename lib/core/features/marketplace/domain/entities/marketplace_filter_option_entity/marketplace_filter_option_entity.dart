import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_filter_option_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_filter_option_entity.freezed.dart';

/// One selectable value of a filter (a fabric, subcategory, model or color).
///
/// Fabrics and subcategories carry an [id], which is what the filter request
/// sends. Colors and models are plain names with no id.
@freezed
abstract class MarketplaceFilterOptionEntity
    with _$MarketplaceFilterOptionEntity {
  const factory MarketplaceFilterOptionEntity({
    required String name,
    int? id,
    // Set for subcategories, so the UI can narrow them to the chosen category.
    String? categoryName,
  }) = _MarketplaceFilterOptionEntity;
}

/// The option lists of the filters that were asked for, by filter. A filter
/// that was not asked for is not a key.
typedef MarketplaceFilterOptions =
    Map<MarketplaceFilterOptionType, List<MarketplaceFilterOptionEntity>>;
