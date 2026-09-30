import 'dart:developer';

import 'package:bookie_buddy_shared/core/core/common/utils/app_date_utils.dart';
import 'package:intl/intl.dart';

/// The pure-Dart half of string date/time parsing — no Flutter dependency,
/// so it's usable from `lib/core`. The Flutter-typed half (`toTimeOfDay`,
/// `to24HourTimeOfDayFrom12Format`, `appendTimeToDate`'s `TimeOfDay` param,
/// `isDateToday`/`isDateYesterday`/`isDateTomorrow`, `getDateHeading` —
/// anything touching `TimeOfDay`/`DateUtils`) lives in
/// `lib/ui/utils/extensions/string_date_extensions.dart` instead.
extension StringXDateFormat on String {
  /// Parses any valid date string and auto handles both `yyyy-MM-dd` and `dd-MM-yyyy`.
  DateTime parseToDateTime() {
    final cleaned = trim();

    final formats = [
      'yyyy-MM-dd HH:mm:ss',
      'dd-MM-yyyy HH:mm:ss',
      // Day-first with a 'T' separator, the shape the purchase payment
      // endpoint documents. It is not ISO, so the DateTime.parse fallback
      // below cannot read it and it has to be listed here.
      "dd-MM-yyyy'T'HH:mm:ss",
      "dd-MM-yyyy'T'HH:mm",
      "yyyy-MM-dd'T'HH:mm:ss",
      'dd-MM-yyyy hh:mm a',
      'dd-MM-yyyy HH:mm',
      'yyyy-MM-dd HH:mm',
      'yyyy-MM-dd',
      'dd-MM-yyyy',
      // UI display format (e.g. '12 Jan, 2026') — date-picker controllers
      // store this and some callers re-parse `.text` for validation, so it
      // has to round-trip through here too.
      AppDateUtils.uiDatePattern,
      // UI display date+time, from `DateTime.fullDateTime()` — the
      // combined date+time picker fields store and re-parse this.
      '${AppDateUtils.uiDatePattern} HH:mm',
      '${AppDateUtils.uiDatePattern} hh:mm a',
    ];

    for (final format in formats) {
      try {
        return DateFormat(format).parseStrict(cleaned);
      } catch (_) {
        // continue to next format
      }
    }

    try {
      return DateTime.parse(this); // ISO or other valid format
    } catch (_) {}

    if (contains('T')) {
      // Try splitting date and time parts
      final parts = split('T');
      if (parts.length == 2) {
        final datePart = parts[0];
        final timePart = parts[1];
        for (final format in formats) {
          try {
            return DateFormat(format).parseStrict('$datePart $timePart');
          } catch (_) {
            // continue to next format
          }
        }
      }
    }

    throw FormatException(
      'Unrecognized date/time format: $this. Tried formats: ${formats.join(', ')}',
    );
  }

  DateTime? tryParseToDateTime() {
    try {
      return parseToDateTime();
    } catch (_) {
      return null;
    }
  }

  /// Formats to the centralized UI date format ([AppDateUtils.uiDatePattern])
  String formatToUiDate({bool removeTime = false, bool tryParse = false}) {
    try {
      String cleaned = trim();
      if (removeTime) {
        // Remove time part if present
        final spaceIndex = cleaned.indexOf(' ');
        if (spaceIndex != -1) {
          cleaned = cleaned.substring(0, spaceIndex);
        }
      }
      return AppDateUtils.formatUiDate(cleaned.parseToDateTime());
    } catch (e) {
      if (tryParse) {
        return this;
      } else {
        log('Failed to parse date: $this, error: $e');
      }
      rethrow;
    }
  }

  /// Extracts and formats time if needed (supports both 24hr and 12hr)
  String formatToUiTime({bool is24Hour = false, bool tryParse = false}) {
    final cleaned = trim();
    final outFormat = DateFormat(is24Hour ? 'HH:mm' : 'hh:mm a');

    // 1) Time-only inputs (common from backend): "07:45:00", "07:45", "07:45 PM"
    final timeOnlyFormats = <DateFormat>[
      DateFormat('HH:mm:ss'),
      DateFormat('HH:mm'),
      DateFormat('hh:mm a'),
    ];
    for (final f in timeOnlyFormats) {
      try {
        return outFormat.format(f.parseStrict(cleaned));
      } catch (_) {
        // continue
      }
    }

    // 2) Date + time inputs
    final dateTimeFormats = <DateFormat>[
      DateFormat('dd-MM-yyyy hh:mm a'),
      DateFormat('dd-MM-yyyy HH:mm:ss'),
      DateFormat('yyyy-MM-dd HH:mm:ss'),
    ];

    for (final f in dateTimeFormats) {
      try {
        return outFormat.format(f.parseStrict(cleaned));
      } catch (_) {
        // continue
      }
    }

    // 3) Fallback: ISO parsing or last-resort "now"
    try {
      final dateTime = DateTime.tryParse(cleaned);
      if (dateTime != null) return outFormat.format(dateTime);
    } catch (_) {
      // ignore
    }

    if (!tryParse) {
      throw FormatException('Unrecognized time format: $this');
    }
    log('Failed to parse time: $this');
    return outFormat.format(DateTime.now());
  }

  /// Formats to full Date + Time if needed
  String formatToUiDateTime({bool is24Hour = true, String? betweenText}) {
    final dateTime = DateTime.tryParse(this) ?? parseToDateTime();
    final datePart = AppDateUtils.formatUiDate(dateTime);
    final timePart = DateFormat(is24Hour ? 'HH:mm' : 'hh:mm a').format(dateTime);
    return betweenText != null && betweenText.isNotEmpty
        ? '$datePart $betweenText $timePart'
        : '$datePart $timePart';
  }
}
