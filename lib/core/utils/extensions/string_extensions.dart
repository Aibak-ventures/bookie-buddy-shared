// Narrow extraction from the mobile app's utils/extensions/string_extensions.dart
// — that file is a large, Flutter-heavy grab-bag (phone formatting, color
// pickers, screen-size helpers, ~10 dependencies) that entities have no
// business depending on. This package only needs the two null/empty
// checks below; see docs/PENDING.md in the shared repo for the same
// pattern applied to date/currency formatting (those live in
// bookie_buddy_ui instead, since only presentation code needs them).

import 'dart:developer';

extension StringNullX on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension StringCaseX on String {
  String capitalizeFirstLetter() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}

extension StringNumberX on String {
  /// Parses the string to an integer.
  int toInt() {
    try {
      return int.parse(this);
    } catch (e) {
      return double.parse(this).toInt();
    }
  }

  /// Parses the string to an integer, returning `null` if parsing fails.
  int? toIntOrNull() {
    try {
      return toInt();
    } catch (e) {
      return null;
    }
  }

  /// Parses the string to a double.
  double toDouble() => double.parse(this);

  /// Parses the string to a double, returning `null` if parsing fails.
  double? toDoubleOrNull() {
    try {
      return double.parse(this);
    } catch (e) {
      log('Failed to parse $this as double: $e, returning null');
      return null;
    }
  }

  /// Parses the string to a double, returning [defaultValue] if parsing fails.
  double toDoubleOrDefault([double defaultValue = 0]) =>
      toDoubleOrNull() ?? defaultValue;

  /// Parses the string to an integer, returning [defaultValue] if parsing fails.
  int toIntOrDefault([int defaultValue = 0]) => toIntOrNull() ?? defaultValue;

  /// Converts various types to double. Defaults to 0.0 if conversion fails.
  ///
  /// eg:
  /// ```
  /// StringX.toDoubleFromString("12.34") => 12.34
  static double toDoubleFromString(dynamic value) {
    if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else if (value is String) {
      return value.toDoubleOrDefault();
    } else {
      return 0.0;
    }
  }

  static double? toDoubleFromStringNullable(dynamic value) {
    if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else if (value is String) {
      return value.toDoubleOrNull();
    } else {
      return null;
    }
  }

  /// Converts various types to int.
  ///
  /// eg:
  /// ```
  /// StringX.toIntFromString("123") => 123
  /// ```
  static int toIntFromString(dynamic value) {
    if (value is int) {
      return value;
    } else if (value is double) {
      return value.toInt();
    } else if (value is String) {
      return value.toIntOrDefault();
    } else {
      return 0;
    }
  }

  static int? toIntFromStringNullable(dynamic value) {
    if (value is int) {
      return value;
    } else if (value is double) {
      return value.toInt();
    } else if (value is String) {
      return value.toIntOrNull();
    } else {
      return null;
    }
  }
}
