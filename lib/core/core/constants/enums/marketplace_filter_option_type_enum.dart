/// The facets a marketplace listing can be filtered by, each backed by its own
/// "available options" list on the backend.
enum MarketplaceFilterOptionType {
  fabrics('Fabric'),
  subcategories('Subcategory'),
  // TODO(marketplace): unverified — the models and colors option lists don't
  // exist on the backend yet.
  models('Model'),
  colors('Color');

  final String label;

  const MarketplaceFilterOptionType(this.label);
}
