import 'package:bookie_buddy_shared/core/core/constants/enums/backend_keyed_enum.dart';
import 'package:bookie_buddy_shared/core/features/service/domain/entities/service_entity/service_entity.dart';

/// The main categories the marketplace is organized by. The backend can add
/// subcategories under each, but the main categories are fixed here.
///
/// Every product listing request must carry at least one of these; see
/// [requestedBackendNames] for which ones are sent.
enum MarketplaceMainCategory implements BackendKeyedEnum {
  grooms('Grooms', 'Grooms', [r'\bgrooms?\b', r'\bdress code\b']);

  /// The category name sent to the backend.
  @override
  final String value;

  @override
  final String label;

  /// Case-insensitive patterns that, when found in a shop's sub-service name,
  /// mean the shop should see this category. There is no other way to tell
  /// which main category a shop belongs to. Whole words only, so "Grooming"
  /// does not match "groom".
  final List<String> serviceNamePatterns;

  const MarketplaceMainCategory(
    this.value,
    this.label,
    this.serviceNamePatterns,
  );

  /// The categories sent on listing and filter-option requests.
  ///
  /// Only Grooms for now, as it is the only category the backend has models
  /// for. Widen this (or use [availableFor]) when more categories go live.
  static List<String> get requestedBackendNames => [grooms.value];

  /// Whether any of [services] (by sub-service name) belongs to this category.
  bool matchesAny(List<ServiceEntity> services) {
    final patterns = serviceNamePatterns.map(_compile);
    return services.any((s) => patterns.any((p) => p.hasMatch(s.name)));
  }

  /// The main categories a shop with these services qualifies for.
  static List<MarketplaceMainCategory> availableFor(
    List<ServiceEntity> services,
  ) => values.where((c) => c.matchesAny(services)).toList();

  /// Whether the marketplace should be offered to a shop with these services.
  static bool isAvailableFor(List<ServiceEntity> services) =>
      availableFor(services).isNotEmpty;
}

/// Compiled once per pattern — [MarketplaceMainCategory.matchesAny] can run on
/// every UI rebuild.
final _compiledPatterns = <String, RegExp>{};

RegExp _compile(String pattern) => _compiledPatterns.putIfAbsent(
  pattern,
  () => RegExp(pattern, caseSensitive: false),
);
