import 'package:bookie_buddy_shared/bookie_buddy_shared.dart';
import 'package:flutter/material.dart';

// The Flutter-typed halves of enums that had to be split when their pure
// values moved into bookie_buddy_core (Color/IconData aren't allowed in
// that pure-Dart package) — see docs/PENDING.md in this repo. Call sites
// don't change: `deliveryStatus.color` still works, it just resolves from
// here now instead of living on the enum itself.

extension DeliveryStatusColorX on DeliveryStatus {
  Color get color => switch (this) {
    DeliveryStatus.booked => const Color(0xFFFF9500), // AppColors.orangeVivid
    DeliveryStatus.readyToDeliver => const Color(
      0xFF00C896,
    ), // AppColors.aquamarineMedium
    DeliveryStatus.delivered => const Color.fromARGB(255, 0, 149, 255),
    DeliveryStatus.returned => const Color(0xFF5F33E2), // AppColors.purple
    DeliveryStatus.cancelled => const Color(
      0xFFFF3B30,
    ), // AppColors.redTomato
  };
}

extension ProductDeliveryStatusColorX on ProductDeliveryStatus {
  MaterialColor get color => switch (this) {
    ProductDeliveryStatus.notReturned => Colors.orange,
    ProductDeliveryStatus.returned => Colors.green,
  };
}

extension MainServiceTypeIconsX on MainServiceType? {
  IconData get categoryFieldIcon => switch (this) {
    .room => Icons.meeting_room_outlined,
    _ => Icons.category_outlined,
  };

  IconData get colorFieldIcon => switch (this) {
    .gadget => Icons.shutter_speed_rounded,
    .room => Icons.bed_outlined,
    _ => Icons.palette_outlined,
  };

  IconData get modelFieldIcon => switch (this) {
    .gadget => Icons.date_range_rounded,
    .room => Icons.people_outlined,
    _ => Icons.style_outlined,
  };
}
