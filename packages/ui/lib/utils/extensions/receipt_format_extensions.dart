import 'dart:developer';

import 'package:intl/intl.dart';

// Narrow extraction from the mobile app's utils/extensions/{number,list,
// string}_extensions.dart — those are large, Flutter-heavy grab-bag files
// (phone formatting, color pickers, screen-size helpers, ~10 dependencies)
// that the receipt pipeline has no business depending on wholesale. Only
// the members the receipt code actually calls are ported here, verbatim.
// See docs/PENDING.md in this repo.

const _currencyLocale = 'en_IN';

extension ReceiptNumFormat on num {
  /// Example: 12345.toCurrency() => "₹12,345"
  String toCurrency({int decimalDigits = 0, bool symbol = true}) =>
      NumberFormat.currency(
        locale: _currencyLocale,
        symbol: symbol ? '₹' : '',
        decimalDigits: decimalDigits,
      ).format(this);
}

extension ReceiptListSum<T> on List<T> {
  /// Returns the sum of all values returned by [selector] applied to each
  /// element in the list. If the list is empty, returns 0.
  N sum<N extends num>(N Function(T element) selector) {
    if (isEmpty) return 0 as N;
    return fold(0 as N, (pv, e) => (pv + selector(e)) as N);
  }
}

extension ReceiptDateParsing on String {
  /// Parses any valid date string and auto handles both `yyyy-MM-dd` and
  /// `dd-MM-yyyy`.
  DateTime parseToDateTime() {
    final cleaned = trim();

    final formats = [
      'yyyy-MM-dd HH:mm:ss',
      'dd-MM-yyyy HH:mm:ss',
      'dd-MM-yyyy hh:mm a',
      'dd-MM-yyyy HH:mm',
      'yyyy-MM-dd HH:mm',
      'yyyy-MM-dd',
      'dd-MM-yyyy',
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
}
