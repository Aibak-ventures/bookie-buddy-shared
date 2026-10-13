import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_filter_option_entity.freezed.dart';

/// One selectable value of a filter (a fabric, subcategory, model or color).
///
/// The filter request sends [name] only, so that is the identity of an option.
///
/// TODO(marketplace): unverified — [id] and [categoryName] may not exist on
/// every option list; only [name] is assumed to be there.
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
