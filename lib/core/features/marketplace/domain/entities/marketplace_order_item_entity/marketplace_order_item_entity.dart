import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_order_item_entity.freezed.dart';

/// One line of an order: how many pieces of a single size.
@freezed
abstract class MarketplaceOrderItemEntity with _$MarketplaceOrderItemEntity {
  const factory MarketplaceOrderItemEntity({
    required int size,
    required int quantity,
  }) = _MarketplaceOrderItemEntity;
}
