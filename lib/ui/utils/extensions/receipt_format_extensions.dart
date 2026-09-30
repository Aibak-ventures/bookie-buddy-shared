import 'package:intl/intl.dart';

// Narrow extraction from the mobile app's utils/extensions/{number,list}
// _extensions.dart — those are large, Flutter-heavy grab-bag files (phone
// formatting, color pickers, screen-size helpers, ~10 dependencies) that
// the receipt pipeline has no business depending on wholesale. Only the
// members the receipt code actually calls are ported here, verbatim.
// See docs/PENDING.md in this repo.
//
// Date parsing/formatting (parseToDateTime, tryParseToDateTime,
// formatToUiTime) used to be narrow-ported here too, but now lives in
// `string_date_extensions.dart` in full — that file is itself lightweight
// (dart:developer, flutter/material for TimeOfDay, intl), so there's no
// more reason for receipt code to keep a second, narrower copy.

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

