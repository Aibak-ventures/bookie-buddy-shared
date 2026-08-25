import 'package:bookie_buddy_core/core/constants/enums/backend_keyed_enum.dart';

// Extracted from the mobile app's core/constants/enums/enums.dart barrel —
// that file bundles several unrelated enums together, one of which
// (ProductModelFieldType) needs Flutter (TextInputType) and so can't be
// copied wholesale into this pure-Dart package. BookingRentalUnit itself
// has no such dependency, so it gets its own file here instead of pulling
// the whole barrel in. See docs/PENDING.md in the shared repo.

enum BookingRentalUnit implements BackendKeyedEnum {
  hourly('Hourly', 'hourly'),
  daily('Daily', 'daily');

  /// The display name for UI, e.g. "Hourly", "Daily"
  final String name;

  /// The value used for JSON serialization, e.g. "hourly", "daily"
  @override
  final String value;

  const BookingRentalUnit(this.name, this.value);

  @override
  String get label => name;

  /// Used for JSON deserialization
  static BookingRentalUnit fromJson(String? json) =>
      EnumJsonCodec.fromJson(json, values, fallback: BookingRentalUnit.daily);

  /// Used for JSON serialization
  static String toJson(BookingRentalUnit unit) => EnumJsonCodec.toJson(unit);

  /// Safe version that returns null if the unit is null
  static String? tryToJson(BookingRentalUnit? unit) =>
      EnumJsonCodec.tryToJson(unit);
}
