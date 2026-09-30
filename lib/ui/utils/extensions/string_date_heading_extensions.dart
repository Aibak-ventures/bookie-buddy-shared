import 'package:bookie_buddy_shared/core/core/common/utils/app_date_utils.dart';
import 'package:bookie_buddy_shared/core/core/common/utils/string_date_extensions.dart';
import 'package:flutter/material.dart';

/// `getDateHeading` bakes in a specific UI date pattern (via
/// [AppDateUtils.formatUiDate]) — split into its own file, separate from
/// `string_date_extensions.dart`'s other members, so a consumer with its
/// own different UI date pattern can import everything else in that file
/// without also pulling in a `getDateHeading` whose formatting it doesn't
/// want (and would otherwise conflict with its own).
extension StringDateHeadingUi on String {
  /// Smart heading like Today, Yesterday, or Full Date
  String getDateHeading({bool suffixSummary = false}) {
    final today = DateTime.now();
    final given = parseToDateTime();
    String date;
    String? suffix;
    if (DateUtils.isSameDay(given, today)) {
      suffix = 'Today';
    } else if (DateUtils.isSameDay(given, today.subtract(const Duration(days: 1)))) {
      suffix = 'Yesterday';
    }
    date = AppDateUtils.formatUiDate(given); // eg: 21 Apr, 2025
    if (suffixSummary && suffix != null && suffix.isNotEmpty) {
      return '$date ($suffix)';
    }
    return suffix != null && suffix.isNotEmpty ? suffix : date;
  }
}
