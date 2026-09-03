// Ported from the mobile app's core/constants/enums/backend_keyed_enum.dart
// verbatim, except tryFromJson's lookup: mobile's version leans on its own
// custom list_extensions.dart firstWhereOrNull(test, {orElse}) — a
// different signature from package:collection's standard
// firstWhereOrNull(test) (no orElse). Rewritten below to get the same
// result (found value, or fallback if none) using only the standard one,
// already a dependency here, rather than porting a whole extension file
// for one caller.

import 'package:collection/collection.dart';

/// Interface to enforce instance properties [label], [value] across all backend enums
abstract interface class BackendKeyedEnum {
  /// UI display name
  String get label;

  /// Backend value (json key)
  String get value;
}

/// Generic JSON codec that works for ANY enum implementing [BackendKeyedEnum].
///
/// Matching is case-insensitive on [BackendKeyedEnum.value] — note this is
/// slightly more permissive than a couple of the hand-rolled `fromJson`
/// implementations this replaced (which did an exact-match), though every
/// real value in this package is already lowercase, so this shouldn't
/// change what any real backend payload resolves to.
abstract class EnumJsonCodec {
  static T fromJson<T extends BackendKeyedEnum>(
    String? rawValue,
    List<T> values, {
    required T fallback,
  }) {
    if (rawValue == null || rawValue.isEmpty) return fallback;
    final normalized = rawValue.toLowerCase();

    return values.firstWhere(
      (type) => type.value.toLowerCase() == normalized,
      orElse: () => fallback,
    );
  }

  static T? tryFromJson<T extends BackendKeyedEnum>(
    String? rawValue,
    List<T> values, {
    T? fallback,
  }) {
    if (rawValue == null || rawValue.isEmpty) return fallback;
    final normalized = rawValue.toLowerCase();

    return values.firstWhereOrNull(
          (type) => type.value.toLowerCase() == normalized,
        ) ??
        fallback;
  }

  static String toJson(BackendKeyedEnum type) => type.value;

  static String? tryToJson(BackendKeyedEnum? type) => type?.value;
}
