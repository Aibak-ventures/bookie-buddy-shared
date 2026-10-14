import 'package:bookie_buddy_shared/core/core/common/models/pagination_model/pagination_model.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/marketplace_filter_option_type_enum.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_filter_option_entity/marketplace_filter_option_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_details_entity/marketplace_product_details_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_entity/marketplace_product_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_filter_entity/marketplace_product_filter_entity.dart';

abstract interface class IMarketplaceRepository {
  //
  Future<PaginationModel<MarketplaceProductEntity>> getProducts(
    MarketplaceProductFilterEntity filter, {
    int page = 1,
  });

  //
  Future<MarketplaceProductDetailsEntity> getProductDetails(int productId);

  /// Every available option for [type], across all pages, limited to the main
  /// categories in [categoryNames].
  Future<List<MarketplaceFilterOptionEntity>> getFilterOptions(
    MarketplaceFilterOptionType type, {
    required List<String> categoryNames,
  });
}
