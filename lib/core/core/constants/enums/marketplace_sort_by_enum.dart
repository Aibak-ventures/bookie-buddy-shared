import 'package:bookie_buddy_shared/core/core/constants/enums/backend_keyed_enum.dart';

/// Sort orders accepted by the marketplace product filter API (`sort_by`).
enum MarketplaceSortBy implements BackendKeyedEnum {
  newest('newest', 'Newest'),
  oldest('oldest', 'Oldest'),
  priceLowHigh('price_low_high', 'Price: Low to High'),
  priceHighLow('price_high_low', 'Price: High to Low'),
  nameAsc('name_asc', 'Name: A to Z'),
  nameDesc('name_desc', 'Name: Z to A');

  @override
  final String value;
  @override
  final String label;

  const MarketplaceSortBy(this.value, this.label);
}
