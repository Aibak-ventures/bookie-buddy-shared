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
// `isAfter`/`isBefore` and `tryFromJson`/`tryToJson` come from web's own
// local copy of this enum (core/constants/enums/shop_based_enums.dart) —
// both actively used across its booking screens — rather than mobile's,
// since mobile never needed either. Kept alongside mobile's original
// `fromJson`/`fromString`/`fromBoolean` rather than replacing them:
// `tryFromJson` returns `null` on no match, mobile's `fromJson` defaults to
// `.before` — genuinely different behavior, not just a naming difference,
// so both stay available under their own names.

import 'package:collection/collection.dart';

enum CoolingPeriodMode {
  before('before'),
  after('after');

  final String value;

  const CoolingPeriodMode(this.value);

  static String? toJson(CoolingPeriodMode? mode) {
    return mode?.value;
  }

  static CoolingPeriodMode? fromJson(String? json) {
    if (json == null) return null;
    return CoolingPeriodMode.values.firstWhere(
      (e) => e.value == json,
      orElse: () => CoolingPeriodMode.before,
    );
  }

  static CoolingPeriodMode fromString(String? value) {
    return CoolingPeriodMode.values.firstWhere(
      (mode) => mode.value == value,
      orElse: () => CoolingPeriodMode.after,
    );
  }

  static CoolingPeriodMode fromBoolean(bool? value) {
    if (value == null) return CoolingPeriodMode.after;
    return value ? CoolingPeriodMode.after : CoolingPeriodMode.before;
  }

  static CoolingPeriodMode? tryFromJson(String? value) {
    if (value == null) return null;
    return CoolingPeriodMode.values.firstWhereOrNull(
      (e) => e.value == value.toLowerCase(),
    );
  }

  static String? tryToJson(CoolingPeriodMode? mode) => mode?.value;
}

extension CoolingPeriodModeX on CoolingPeriodMode {
  bool get isAfter => this == CoolingPeriodMode.after;
  bool get isBefore => this == CoolingPeriodMode.before;
}
