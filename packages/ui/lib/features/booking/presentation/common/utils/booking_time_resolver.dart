import 'package:bookie_buddy_core/bookie_buddy_core.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/extensions/receipt_format_extensions.dart';

// Genuinely shared, not printer-specific — was duplicated three ways
// (mobile's own copy, web's own copy, and a private inline copy baked
// into this package's booking_receipt_canvas_builder) before being
// promoted here as the one implementation. Needs Flutter (TimeOfDay), so
// it lives in bookie_buddy_ui rather than bookie_buddy_core, same as the
// receipt canvas itself. Narrow DateTime/TimeOfDay helpers it needs
// (`toTimeOfDay`, `formatTime12Hour`) are inlined below rather than
// pulling in either app's large date_time_extensions.dart for two
// one-line methods.

extension _DateTimeToTimeOfDay on DateTime {
  TimeOfDay get toTimeOfDay => TimeOfDay(hour: hour, minute: minute);
}

extension _TimeOfDayFormat on TimeOfDay {
  String formatTime12Hour() {
    final h = hourOfPeriod == 0 ? 12 : hourOfPeriod;
    final m = minute.toString().padLeft(2, '0');
    final p = period == DayPeriod.am ? 'AM' : 'PM';
    return '$h:$m $p';
  }
}

/// Resolves the pickup/return time actually worth *showing* for a booking —
/// shared by the booking details screen and the printed receipt so both
/// agree on when a time is real versus a placeholder, instead of each
/// re-deriving (and potentially disagreeing on) the same rule.
///
/// Prefers the dedicated `pickupTime`/`returnTime` fields when populated;
/// falls back to the time-of-day baked into `pickupDate`/`returnDate`
/// otherwise — but only when it isn't the sentinel default the backend
/// uses for "no time specified" (00:00 for pickup, 23:59 for return),
/// which would otherwise look like a real recorded time.
extension BookingTimeResolver on BookingDetailsEntity {
  /// Resolves the pickup time if it is actually worth *showing* for a booking
  String? get resolvedPickupTime {
    if (pickupTime.isNotNullOrEmpty) return pickupTime!.formatToUiTime();
    final pickup = pickupDate?.tryParseToDateTime()?.toTimeOfDay;
    if (pickup != null && pickup != const TimeOfDay(hour: 0, minute: 0)) {
      return pickup.formatTime12Hour();
    }
    return null;
  }

  /// Resolves the return time if it is actually worth *showing* for a booking
  String? get resolvedReturnTime {
    if (returnTime.isNotNullOrEmpty) return returnTime!.formatToUiTime();
    final ret = returnDate.tryParseToDateTime()?.toTimeOfDay;
    if (ret != null && ret != const TimeOfDay(hour: 23, minute: 59)) {
      return ret.formatTime12Hour();
    }
    return null;
  }
}
