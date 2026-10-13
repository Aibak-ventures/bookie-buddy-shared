import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_filter_option_type_enum.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_filter_option_entity/marketplace_filter_option_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/repositories/i_marketplace_repository.dart';

class GetMarketplaceFilterOptionsUseCase {
  final IMarketplaceRepository _repository;
  const GetMarketplaceFilterOptionsUseCase(this._repository);

  Future<List<MarketplaceFilterOptionEntity>> call(
    MarketplaceFilterOptionType type,
  ) => _repository.getFilterOptions(type);
}
