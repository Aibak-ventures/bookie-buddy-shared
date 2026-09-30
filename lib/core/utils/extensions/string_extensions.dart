// Extracted from the mobile app's utils/extensions/string_extensions.dart —
// that file is a large, Flutter-heavy grab-bag (phone formatting, color
// pickers, screen-size helpers, ~10 dependencies) that entities have no
// business depending on. This package only holds the framework-agnostic,
// pure-Dart string helpers; the Flutter/package-specific ones (color
// parsing, phone number formatting) stay in the mobile app. See
// docs/PENDING.md in the shared repo for the same pattern applied to
// date/currency formatting (those live in bookie_buddy_ui instead, since
// only presentation code needs them).

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

  ///  Splits the string into chunks of words with a maximum of [length] words each.
  List<String> splitByWords([int length = 6]) {
    final split = this.split(' ');
    if (split.isEmpty) return [];

    final List<String> result = [];
    for (var i = 0; i < split.length; i += length) {
      result.add(
        split
            .sublist(i, i + length > split.length ? split.length : i + length)
            .join(' '),
      );
    }
    return result;
  }

  /// Gets the initial letters of the words in the string. return empty string if no words.
  ///
  /// eg: "John Doe" => "JD"
  String get getInitialLetters {
    final parts = trim().split(' ');
    if (parts.isEmpty) return '';
    if (parts.length == 1) {
      return parts[0].isNotEmpty ? parts[0][0].toUpperCase() : '';
    }
    return (parts[0][0] + parts[parts.length - 1][0]).toUpperCase();
  }
}

extension StringNullableUtilsX on String? {
  /// Checks if the string is null.
  bool get isNull => this == null;

  /// Checks if the string is not null.
  bool get isNotNull => this != null;

  /// Checks if the string is null, empty, or equal to 'null' (case-sensitive).
  bool get isNullOrLiteralNull => isNullOrEmpty || this == 'null';

  /// Checks if the string is not empty or not equal to [value].
  bool isNotEmptyOr(dynamic value) => this != value;

  // Returns an empty string if the string is null or returns the string itself.
  String orEmpty() => this ?? '';

  /// Returns 'N/A' if the string is null or empty, otherwise returns the string itself.
  String orNA() => isNullOrEmpty ? 'N/A' : this!;

  /// Returns the provided [fallback] if the string is null or empty, otherwise returns the string itself.
  String orFallback(String fallback) => isNullOrEmpty ? fallback : this!;

  /// Returns `null` if the string is null or empty after trimming, otherwise returns the string itself.
  String? get nullIfEmpty => isNullOrEmpty ? null : this;

  /// The string trimmed, or `null` when it is null or blank.
  ///
  /// What a request model needs before serialization: a field the user never
  /// touched arrives as `''` rather than `null`, so `includeIfNull` never
  /// fires and the endpoint is handed an empty string it then rejects for
  /// failing its format check.
  String? get trimmedOrNull => isNullOrEmpty ? null : this!.trim();

  /// Parses the string to an integer, returning `null` if parsing fails.
  int? toIntOrNull() {
    try {
      if (this == null) return null;
      return int.tryParse(this!);
    } catch (e) {
      log('Failed to parse $this as int: $e, returning null');
      return null;
    }
  }

  /// Capitalizes the first letter of the string.
  String capitalizeFirstLetter() {
    if (isNullOrEmpty) return this ?? '';
    return '${this![0].toUpperCase()}${this!.substring(1)}';
  }

  /// Sanitizes the string by masking part of it with asterisks(*).
  String sanitizeString({int visibleStart = 4, int visibleEnd = 4}) {
    final text = this ?? '';
    if (text.length <= visibleStart + visibleEnd) return '***';
    final start = text.substring(0, visibleStart);
    final end = text.substring(text.length - visibleEnd);
    return '$start...$end';
  }
}

extension StringNumberFieldChangeValidatorX on String? {
  bool hasNumberChangedComparedTo(String newValue) {
    final oldVal = this?.trim();
    final newVal = newValue.trim();

    // If both are null/empty/'null', no change
    final isOldEmpty = oldVal == null || oldVal.isEmpty || oldVal == 'null';
    final isNewEmpty = newVal.isEmpty || newVal == 'null';
    if (isOldEmpty && isNewEmpty) return false;
    // If only one is empty/null, that's a change
    if (isOldEmpty != isNewEmpty) return true;

    final oldNumber = int.tryParse(oldVal ?? '');
    final newNumber = int.tryParse(newVal);

    // If either cannot be parsed, treat as changed
    if (oldNumber == null || newNumber == null) return true;

    return oldNumber != newNumber;
  }
}

extension StringFilePathX on String {
  /// Returns the file name without the path
  ///
  /// e.g. '/path/to/report.pdf' -> 'report.pdf'
  String get getFileName {
    final parts = split('/');
    if (parts.isEmpty) return '';
    return parts[parts.length - 1];
  }

  /// Returns the file name without the extension
  ///
  /// e.g. 'report.pdf' -> 'report'
  String get getFileNameWithoutExtension {
    final fullParts = split('/');
    if (fullParts.isEmpty) return '';
    final fullFileName = fullParts[fullParts.length - 1];
    final parts = fullFileName.split('.');
    if (parts.isEmpty) return '';
    return parts[0];
  }
}
