import 'package:bookie_buddy_shared/core/core/common/utils/string_date_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// The Flutter-typed half of string date/time parsing that's the same
/// regardless of an app's own UI date-display pattern — needs
/// `package:flutter/material.dart` (`TimeOfDay`, `DateUtils`), so it can't
/// live in `lib/core`. The pure-Dart half (`parseToDateTime`,
/// `formatToUiDate`, `formatToUiTime`, `formatToUiDateTime`) lives in
/// `lib/core/core/common/utils/string_date_extensions.dart` instead.
///
/// `getDateHeading` — the one member here that *does* bake in a specific
/// UI date pattern (via `AppDateUtils.formatUiDate`) — lives in its own
/// file, `string_date_heading_extensions.dart`, deliberately kept separate
/// so a consumer whose own UI pattern differs can still import everything
/// else in this file without an ambiguous-member conflict from also
/// getting a `getDateHeading` it doesn't want.
extension StringXDateFormatUi on String {
  TimeOfDay toTimeOfDay() {
    try {
      // Expecting format: HH:mm or HH:mm:ss
      final parsed = DateFormat.Hms().parse(this); // Handles HH:mm:ss
      return TimeOfDay(hour: parsed.hour, minute: parsed.minute);
    } catch (_) {
      try {
        final parsed = DateFormat.Hm().parse(this); // Handles HH:mm
        return TimeOfDay(hour: parsed.hour, minute: parsed.minute);
      } catch (_) {
        throw FormatException('Invalid time format: $this');
      }
    }
  }

  TimeOfDay to24HourTimeOfDayFrom12Format() {
    try {
      // Parses 12-hour format like "12:00 AM", "1:30 PM"
      final parsed = DateFormat('hh:mm a').parse(this);
      return TimeOfDay(hour: parsed.hour, minute: parsed.minute);
    } catch (_) {
      throw FormatException('Invalid 12-hour time format: $this');
    }
  }

  /// Appends time to date in '${date}T${HH:mm:ss}' format
  String appendTimeToDate({
    String? time24HourAsString,
    TimeOfDay? time,
    bool includeIfNull = false,
  }) {
    String? time24Hour;
    if (time24HourAsString != null) {
      time24Hour = time24HourAsString;
    } else if (time != null) {
      final hourStr = time.hour.toString().padLeft(2, '0');
      final minuteStr = time.minute.toString().padLeft(2, '0');
      time24Hour = '$hourStr:$minuteStr:00';
    } else if (includeIfNull) {
      time24Hour = '00:00:00';
    }

    if (includeIfNull || time24HourAsString != null || time != null) {
      return '${this}T$time24Hour';
    } else {
      return this;
    }
  }

  /// Checks if the date is today.
  ///
  /// Returns `true` if the date is today.
  /// Returns `false` if the date is not today
  bool get isDateToday {
    try {
      final today = DateTime.now();
      final given = parseToDateTime();
      return DateUtils.isSameDay(given, today);
    } catch (e, stack) {
      throw FormatException('Unrecognized date format: $this', stack);
    }
  }

  /// Checks if the date is yesterday.
  ///
  /// Returns `true` if the date is yesterday.
  /// Returns `false` if the date is not yesterday
  bool get isDateYesterday {
    try {
      final today = DateTime.now();
      final given = parseToDateTime();
      return DateUtils.isSameDay(given, today.subtract(const Duration(days: 1)));
    } catch (e, stack) {
      throw FormatException('Unrecognized date format: $this', stack);
    }
  }

  /// Checks if the date is tomorrow.
  ///
  /// Returns `true` if the date is tomorrow.
  /// Returns `false` if the date is not tomorrow
  bool get isDateTomorrow {
    try {
      final today = DateTime.now();
      final given = parseToDateTime();
      return DateUtils.isSameDay(given, today.add(const Duration(days: 1)));
    } catch (e, stack) {
      throw FormatException('Unrecognized date format: $this', stack);
    }
  }
}
