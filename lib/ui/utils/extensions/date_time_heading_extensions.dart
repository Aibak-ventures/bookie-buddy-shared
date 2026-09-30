import 'package:bookie_buddy_shared/core/core/common/utils/app_date_utils.dart';
import 'package:flutter/material.dart';

/// `smartHeading` bakes in a specific UI date pattern (via
/// [AppDateUtils.formatUiDate]) — split into its own file, separate from
/// `date_time_extensions.dart`'s other members, so a consumer with its own
/// different UI date pattern can import everything else in that file
/// without also pulling in a `smartHeading` whose formatting it doesn't
/// want (and would otherwise conflict with its own).
extension LocalizedDateHeadingUi on DateTime {
  /// Smart heading: Today, Yesterday, or full formatted date
  String get smartHeading {
    final today = DateTime.now();
    final yesterday = today.subtract(const Duration(days: 1));

    if (DateUtils.isSameDay(this, today)) return 'Today';
    if (DateUtils.isSameDay(this, yesterday)) return 'Yesterday';

    return AppDateUtils.formatUiDate(this);
  }
}
