import 'package:bookie_buddy_shared/core/core/common/utils/app_date_utils.dart';
import 'package:intl/intl.dart';

/// `DateTime` formatting that bakes in [AppDateUtils.uiDatePattern] — split
/// out from `date_time_extensions.dart`'s other members, so a consumer with
/// its own different UI date pattern can import everything else in that
/// file without also pulling in formatting whose pattern it doesn't want
/// (and would otherwise conflict with its own).
extension LocalizedDatePattern on DateTime {
  /// Formats the date for UI display using the centralized [AppDateUtils.uiDatePattern].
  String uiFormat() => AppDateUtils.formatUiDate(this);

  /// Formats to the centralized UI date ([AppDateUtils.uiDatePattern]) plus
  /// time, e.g. '12 Jan, 2026 02:30 PM'. This is the wire format's UI
  /// display counterpart — used for date+time picker fields, not API calls.
  String fullDateTime({bool is24Hour = false}) =>
      '${AppDateUtils.formatUiDate(this)} ${DateFormat(is24Hour ? 'HH:mm' : 'hh:mm a').format(this)}';

  /// Smart "time ago" display
  String timeAgo({bool includeTime = false}) {
    final now = DateTime.now();
    final diff = now.difference(toLocal());

    String timeSuffix = '';
    if (includeTime) {
      timeSuffix = ' at ${DateFormat('hh:mm a').format(this)}';
    }

    if (diff.inDays == 0) {
      if (diff.inHours == 0) {
        if (diff.inMinutes == 0) return 'Just now';
        return '${diff.inMinutes}m ago';
      }
      return '${diff.inHours}h ago';
    } else if (diff.inDays == 1) {
      return 'Yesterday${includeTime ? timeSuffix : ''}';
    } else if (diff.inDays < 7) {
      return '${diff.inDays}d ago${includeTime ? timeSuffix : ''}';
    } else if (diff.inDays < 30) {
      final weeks = (diff.inDays / 7).floor();
      return '${weeks}w ago${includeTime ? timeSuffix : ''}';
    } else {
      final datePart = AppDateUtils.formatUiDate(this);
      return includeTime ? '$datePart at ${DateFormat('hh:mm a').format(this)}' : datePart;
    }
  }
}
