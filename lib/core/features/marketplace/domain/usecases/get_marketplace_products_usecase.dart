import 'package:bookie_buddy_shared/core/core/common/models/pagination_model/pagination_model.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_main_category_enum.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_entity/marketplace_product_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_filter_entity/marketplace_product_filter_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/repositories/i_marketplace_repository.dart';

class GetMarketplaceProductsUseCase {
  final IMarketplaceRepository _repository;
  const GetMarketplaceProductsUseCase(this._repository);

  Future<PaginationModel<MarketplaceProductEntity>> call(
    MarketplaceProductFilterEntity filter, {
    int page = 1,
  }) => _repository.getProducts(
    // The backend rejects a listing without a category, so fall back to all
    // main categories.
    filter.categories.isEmpty
        ? filter.copyWith(categories: MarketplaceMainCategory.allBackendNames)
        : filter,
    page: page,
  );
}
