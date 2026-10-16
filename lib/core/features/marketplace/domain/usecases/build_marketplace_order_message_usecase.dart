import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_order_entity/marketplace_order_entity.dart';

/// Builds the text that places an order: what is ordered, then who orders.
///
/// Pure text so mobile and web send identical messages; opening WhatsApp
/// itself is each app's job. Shop details that are empty are left out.
class BuildMarketplaceOrderMessageUseCase {
  const BuildMarketplaceOrderMessageUseCase();

  String call(MarketplaceOrderEntity order) {
    final sizes = order.items.map((i) => '${i.size}-${i.quantity}').join(', ');
    final shopLines = [order.shopName, order.place, order.userName]
        .map((line) => line?.trim() ?? '')
        .where((line) => line.isNotEmpty)
        .map((line) => '- $line');

    return [
      '> Custom order',
      '**Order details**',
      '- ${order.product.name}',
      if (order.fabric != null) '- ${order.fabric!.name}',
      '- ${order.product.productCode}',
      '- Sizes : ($sizes)',
      '- Total Qty - ${order.totalQuantity}',
      '',
      '> Shop details',
      ...shopLines,
    ].join('\n');
  }
}
