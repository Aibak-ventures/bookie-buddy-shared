import 'package:bookie_buddy_shared/core/core/common/utils/date_time_extensions.dart';
import 'package:flutter/material.dart';

/// `TimeOfDay`-dependent date/time helpers — split out of `AppDateUtils`
/// (now pure Dart, in `lib/core`) because `TimeOfDay` is a Flutter type.
class AppTimeOfDayUtils {
  const AppTimeOfDayUtils._();

  /// Calculates the time difference in hours between two DateTime objects, optionally considering specific times of day.
  static int timeDifferenceInHours({
    required DateTime fromDate,
    required DateTime toDate,
    TimeOfDay? fromTime,
    TimeOfDay? toTime,
  }) {
    if (fromTime != null) {
      fromDate = fromDate.dateOnly.add(
        Duration(hours: fromTime.hour, minutes: fromTime.minute),
      );
    }
    if (toTime != null) {
      toDate = toDate.dateOnly.add(
        Duration(hours: toTime.hour, minutes: toTime.minute),
      );
    }
    return toDate.difference(fromDate).inHours;
  }

  /// Calculates the date difference in days between two DateTime objects, optionally considering specific times of day.
  static int dateDifferenceInDaysUsingTime({
    required DateTime fromDate,
    required DateTime toDate,
    TimeOfDay? fromTime,
    TimeOfDay? toTime,
  }) {
    // Combine date + time
    if (fromTime != null) {
      fromDate = fromDate.dateOnly.add(
        Duration(hours: fromTime.hour, minutes: fromTime.minute),
      );
    }

    if (toTime != null) {
      toDate = toDate.dateOnly.add(
        Duration(hours: toTime.hour, minutes: toTime.minute),
      );
    }

    if (!toDate.isAfter(fromDate)) return 0;

    final hours = toDate.difference(fromDate).inMinutes / 60;

    // Ceiling division → booking style day count
    return (hours / 24).ceil();
  }

  static int? calculateDurationInHours({
    required DateTime fromDate,
    required DateTime toDate,
    required TimeOfDay? fromTime,
    required TimeOfDay? toTime,
    bool enforceFullHour = false,
  }) {
    // Require both times
    if (fromTime == null || toTime == null) return null;

    final fromDateTime = DateTime(
      fromDate.year,
      fromDate.month,
      fromDate.day,
      fromTime.hour,
      fromTime.minute,
    );

    final toDateTime = DateTime(
      toDate.year,
      toDate.month,
      toDate.day,
      toTime.hour,
      toTime.minute,
    );

    // Prevent negative duration
    if (!toDateTime.isAfter(fromDateTime)) return 0;

    final totalMinutes = toDateTime.difference(fromDateTime).inMinutes;

    // Optional hourly-rental validation
    if (enforceFullHour && totalMinutes % 60 != 0) {
      return null;
    }

    return totalMinutes ~/ 60;
  }
}
