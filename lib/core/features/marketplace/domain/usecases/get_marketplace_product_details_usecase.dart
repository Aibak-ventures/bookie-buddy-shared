import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_details_entity/marketplace_product_details_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/repositories/i_marketplace_repository.dart';

class GetMarketplaceProductDetailsUseCase {
  final IMarketplaceRepository _repository;
  const GetMarketplaceProductDetailsUseCase(this._repository);

  Future<MarketplaceProductDetailsEntity> call(int productId) =>
      _repository.getProductDetails(productId);
}
