import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// The Flutter-typed half of `DateTime`/`TimeOfDay` formatting/comparison
/// that's the same regardless of an app's own UI date-display pattern —
/// needs `package:flutter/material.dart` (`TimeOfDay`, `DateUtils`), so it
/// can't live in `lib/core`. The pure-Dart half (`format`, `dateOnly`,
/// `QuickDateFilters`, etc.) lives in
/// `lib/core/core/common/utils/date_time_extensions.dart` instead.
///
/// `smartHeading` — the one member here that *does* bake in a specific UI
/// date pattern (via `AppDateUtils.formatUiDate`) — lives in its own file,
/// `date_time_heading_extensions.dart`, deliberately kept separate so a
/// consumer whose own UI pattern differs can still import everything else
/// in this file without an ambiguous-member conflict.
extension LocalizedDateUi on DateTime {
  bool isSameDay(DateTime? other) => DateUtils.isSameDay(this, other);

  bool get isDateToday => DateUtils.isSameDay(this, DateTime.now());

  TimeOfDay get toTimeOfDay => TimeOfDay(hour: hour, minute: minute);
}

extension TimeX on TimeOfDay {
  /// Formats the [TimeOfDay] as a string based on the given [date] and
  /// [is24Hour] format.
  ///
  /// If [date] is provided, it uses that date; otherwise, it defaults to the
  /// current date.
  ///
  /// Returns the formatted time string in 'HH:mm:ss' format if [is24Hour] is
  /// true, otherwise in 'hh:mm:ss a' format.
  String formatToTime({
    DateTime? date,
    bool is24Hour = true,
    bool addSeconds = false,
  }) {
    final now = date ?? DateTime.now();
    final newDate = DateTime(now.year, now.month, now.day, hour, minute);
    return DateFormat(
      is24Hour
          ? 'HH:mm${addSeconds ? ':ss' : ''}'
          : 'hh:mm${addSeconds ? ':ss' : ''} a',
    ).format(newDate);
  }

  String formatTime12Hour() {
    final hour = hourOfPeriod == 0 ? 12 : hourOfPeriod;
    final minuteX = minute.toString().padLeft(2, '0');
    final periodX = period == DayPeriod.am ? 'AM' : 'PM';
    return '$hour:$minuteX $periodX';
  }

  /// Returns a new TimeOfDay snapped to the nearest 15‑minute block
  /// (00, 15, 30, 45) relative to this time.
  TimeOfDay get clearedTime {
    const quarters = [0, 15, 30, 45];
    int snapped = quarters.first;
    int smallestDiff = 60;

    for (final q in quarters) {
      final diff = (minute + -q).abs();
      if (diff < smallestDiff) {
        smallestDiff = diff;
        snapped = q;
      }
    }

    return TimeOfDay(hour: hour, minute: snapped);
  }
}
