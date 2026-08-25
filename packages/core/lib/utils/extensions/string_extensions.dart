// Narrow extraction from the mobile app's utils/extensions/string_extensions.dart
// — that file is a large, Flutter-heavy grab-bag (phone formatting, color
// pickers, screen-size helpers, ~10 dependencies) that entities have no
// business depending on. This package only needs the two null/empty
// checks below; see docs/PENDING.md in the shared repo for the same
// pattern applied to date/currency formatting (those live in
// bookie_buddy_ui instead, since only presentation code needs them).

extension StringNullX on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension StringCaseX on String {
  String capitalizeFirstLetter() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}
