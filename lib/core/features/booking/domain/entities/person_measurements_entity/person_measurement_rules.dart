import 'package:bookie_buddy_shared/core/core/constants/measurement_constants.dart';

/// Rules about the people on a product line's measurements that both apps
/// apply the same way.
class PersonMeasurementRules {
  const PersonMeasurementRules._();

  /// Name shown (and saved) for the person at [index]: their own name, or
  /// "Person N" by position when unnamed.
  static String displayName(String name, int index) => name.trim().isNotEmpty
      ? name.trim()
      : MeasurementConstants.personNameAt(index);

  /// How many people a line can list: [maxPeople] (its quantity), or more
  /// when that many are already saved (e.g. the quantity was lowered
  /// afterwards).
  static int capacity(int peopleCount, int maxPeople) =>
      peopleCount > maxPeople ? peopleCount : maxPeople;

  /// Whether the single-person form can be used directly: the per-person
  /// feature is not in play when a line holds at most one unit and at most
  /// one person.
  static bool usesSinglePersonForm(int peopleCount, int maxPeople) =>
      maxPeople <= 1 && peopleCount <= 1;

  /// "3 measurements" / "1 measurement".
  static String countLabel(int count) =>
      count == 1 ? '1 measurement' : '$count measurements';
}
