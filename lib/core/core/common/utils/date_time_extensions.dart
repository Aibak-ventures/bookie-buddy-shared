import 'package:intl/intl.dart';

/// The pure-Dart, pattern-independent half of `DateTime` formatting/
/// comparison — no Flutter dependency, so it's usable from `lib/core`, and
/// no baked-in UI date pattern, so it's safe for any consumer regardless of
/// that app's own display convention.
///
/// `uiFormat`/`fullDateTime`/`timeAgo` (which bake in
/// [AppDateUtils.uiDatePattern]) live in their own file,
/// `date_time_pattern_extensions.dart`, deliberately kept separate so a
/// consumer whose own UI pattern differs can still import everything here
/// without an ambiguous-member conflict from also getting formatting it
/// doesn't want. The Flutter-typed half (`isSameDay`, `isDateToday`,
/// `toTimeOfDay` — anything touching `TimeOfDay`/`DateUtils`) lives in
/// `lib/ui/utils/extensions/date_time_extensions.dart` instead.
extension LocalizedDate on DateTime {
  /// Formats the date with a custom or default pattern.
  /// If [reverse] is true, it forces 'yyyy-MM-dd' format.
  ///
  /// This is the wire format used for API payloads/params, not UI display.
  String format({String pattern = 'dd-MM-yyyy', bool reverse = false}) =>
      DateFormat(reverse ? 'yyyy-MM-dd' : pattern).format(this);

  /// Formats the time in HH:mm or hh:mm a format.
  /// Default is 12-hour format like '2:00 PM'
  String timeFormat({bool is24Hour = false}) =>
      DateFormat(is24Hour ? 'HH:mm' : 'hh:mm a').format(this);

  /// Returns the date without time
  ///
  /// ```dart
  /// final now = DateTime.now(); // e.g. 2024-06-15 14:30:00
  /// final dateOnly = now.dateOnly; // 2024-06-15 // DateTime(year, month, day)
  /// ```
  DateTime get dateOnly => DateTime(year, month, day);

  /// Whether this date falls on or before [other], comparing calendar days
  /// only — the time-of-day component of both is ignored.
  bool isOnOrBeforeDate(DateTime other) => !dateOnly.isAfter(other.dateOnly);
}

extension QuickDateFilters on DateTime {
  /// Returns today's date (with only date part)
  DateTime get asToday => dateOnly;

  /// Start of current week (Monday)
  DateTime get weekStart => subtract(Duration(days: weekday - 1)).dateOnly;

  /// End of current week (Sunday)
  DateTime get weekEnd => weekStart.add(const Duration(days: 6)).dateOnly;

  /// Start of current month
  DateTime get monthStart => DateTime(year, month).dateOnly;

  /// End of current month
  DateTime get monthEnd => DateTime(year, month + 1, 0).dateOnly;

  /// 7 days ago
  DateTime get last7Days => subtract(const Duration(days: 7)).dateOnly;

  /// 30 days ago
  DateTime get last30Days => subtract(const Duration(days: 30)).dateOnly;
}
