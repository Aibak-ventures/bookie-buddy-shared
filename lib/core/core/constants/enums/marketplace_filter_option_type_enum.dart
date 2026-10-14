/// The facets a marketplace listing can be filtered by, each backed by its own
/// "available options" list on the backend.
enum MarketplaceFilterOptionType {
  fabrics('Fabric'),
  subcategories('Subcategory'),
  models('Model'),
  colors('Color');

  final String label;

  const MarketplaceFilterOptionType(this.label);

  /// Whether the product filter takes this facet by id (fabrics and
  /// subcategories) rather than by name (colors and models).
  bool get isIdBased => switch (this) {
    fabrics || subcategories => true,
    models || colors => false,
  };
}
