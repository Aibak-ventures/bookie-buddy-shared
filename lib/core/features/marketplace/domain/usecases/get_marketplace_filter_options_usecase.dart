import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_filter_option_type_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_main_category_enum.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_filter_option_entity/marketplace_filter_option_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/repositories/i_marketplace_repository.dart';

class GetMarketplaceFilterOptionsUseCase {
  final IMarketplaceRepository _repository;
  const GetMarketplaceFilterOptionsUseCase(this._repository);

  /// The options of each filter in [types], within [categoryNames]. Every
  /// filter and the requested main categories when none are given, so a caller
  /// only names what it wants to narrow down.
  Future<MarketplaceFilterOptions> call({
    List<MarketplaceFilterOptionType> types =
        MarketplaceFilterOptionType.values,
    List<String> categoryNames = const [],
  }) => _repository.getFilterOptions(
    types: types,
    categoryNames: categoryNames.isEmpty
        ? MarketplaceMainCategory.requestedBackendNames
        : categoryNames,
  );
}
