import 'package:bookie_buddy_core/core/constants/enums/backend_keyed_enum.dart';

// Extracted from the mobile app's core/constants/enums/enums.dart barrel —
// same reason as booking_rental_unit_enum.dart in this folder: that barrel
// also holds ProductModelFieldType, which needs Flutter (TextInputType),
// so it can't be copied wholesale into this pure-Dart package.
//
// Added for web's BookingDetailsEntity.coolingPeriodType: mobile has no
// equivalent field (it derives cooling-period mode manually from dates
// instead of storing it — see EditBookingFormStateController on mobile),
// but web's backend sends it directly, and web's UI reads it as a typed
// enum today. See docs/PENDING.md in the shared repo.
//
// API shape is web's, not mobile's original enums.dart version: standard
// `fromJson`/`toJson` always return a value (default `.after` — matches
// web's real usage, the required non-nullable field on ShopSettingsModel);
// `tryFromJson`/`tryToJson` are the null-safe pair, now via EnumJsonCodec.
// Mobile's original `fromString`/`fromBoolean` dropped — confirmed unused
// anywhere real (mobile's own app-local copy in enums.dart is untouched by
// this; this only affects what ships in the shared package).

enum CoolingPeriodMode implements BackendKeyedEnum {
  after('after', 'After Return (Maintenance)'),
  before('before', 'Before Pickup (Preparation)');

  @override
  final String value;
  @override
  final String label;

  const CoolingPeriodMode(this.value, this.label);

  static CoolingPeriodMode fromJson(String? value) =>
      EnumJsonCodec.fromJson(value, values, fallback: CoolingPeriodMode.after);

  static String toJson(CoolingPeriodMode mode) => EnumJsonCodec.toJson(mode);

  static CoolingPeriodMode? tryFromJson(String? value) =>
      EnumJsonCodec.tryFromJson(value, values);

  static String? tryToJson(CoolingPeriodMode? mode) =>
      EnumJsonCodec.tryToJson(mode);
}

extension CoolingPeriodModeX on CoolingPeriodMode {
  bool get isAfter => this == CoolingPeriodMode.after;
  bool get isBefore => this == CoolingPeriodMode.before;

  /// Fixed boundary time-of-day for the cooling_period_end timestamp —
  /// single source of truth shared by every place that builds a booking
  /// submission payload. "Before" uses the earliest instant of the day so
  /// it always stays strictly ahead of pickup; "after" uses the latest
  /// instant so it always stays at/after return.
  String get coolingBoundaryTime => isBefore ? '00:00:00' : '23:59:59';
}
