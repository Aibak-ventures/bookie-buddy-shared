// Extracted from the mobile app's core/constants/enums/enums.dart barrel —
// that file bundles several unrelated enums together, one of which
// (ProductModelFieldType) needs Flutter (TextInputType) and so can't be
// copied wholesale into this pure-Dart package. BookingRentalUnit itself
// has no such dependency, so it gets its own file here instead of pulling
// the whole barrel in. See docs/PENDING.md in the shared repo.

enum BookingRentalUnit {
  hourly('Hourly', 'hourly'),
  daily('Daily', 'daily');

  /// The display name for UI, e.g. "Hourly", "Daily"
  final String name;

  /// The value used for JSON serialization, e.g. "hourly", "daily"
  final String value;

  const BookingRentalUnit(this.name, this.value);

  /// Used for JSON deserialization
  static BookingRentalUnit fromJson(String? json) {
    if (json == null) return BookingRentalUnit.daily; // default value
    return BookingRentalUnit.values.firstWhere(
      (e) => e.value == json,
      orElse: () => BookingRentalUnit.daily, // default if no match
    );
  }

  /// Used for JSON serialization
  static String toJson(BookingRentalUnit unit) => unit.value;

  /// Safe version that returns null if the unit is null
  static String? tryToJson(BookingRentalUnit? unit) => unit?.value;
}
