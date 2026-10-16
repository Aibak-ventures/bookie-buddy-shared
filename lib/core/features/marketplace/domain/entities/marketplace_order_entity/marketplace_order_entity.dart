import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_fabric_entity/marketplace_fabric_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_order_item_entity/marketplace_order_item_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_details_entity/marketplace_product_details_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_order_entity.freezed.dart';

/// What a shop orders from one model, and who is ordering.
///
/// Today it only feeds a WhatsApp message. It is deliberately channel-neutral
/// so the same entity can later be submitted to the API.
@freezed
abstract class MarketplaceOrderEntity with _$MarketplaceOrderEntity {
  const factory MarketplaceOrderEntity({
    required MarketplaceProductDetailsEntity product,
    MarketplaceFabricEntity? fabric,
    @Default([]) List<MarketplaceOrderItemEntity> items,
    String? shopName,
    String? place,
    String? userName,
  }) = _MarketplaceOrderEntity;
}

extension MarketplaceOrderEntityX on MarketplaceOrderEntity {
  int get totalQuantity => items.fold(0, (sum, item) => sum + item.quantity);
}
