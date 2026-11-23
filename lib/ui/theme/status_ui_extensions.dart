import 'package:bookie_buddy_shared/bookie_buddy_shared.dart';
import 'package:material_ui/material_ui.dart';

// The Flutter-typed halves of enums that had to be split when their pure
// values moved into bookie_buddy_core (Color/IconData aren't allowed in
// that pure-Dart package) — see docs/PENDING.md in this repo. Call sites
// don't change: `deliveryStatus.color` still works, it just resolves from
// here now instead of living on the enum itself.

extension DeliveryStatusColorX on DeliveryStatus {
  Color get color => switch (this) {
    DeliveryStatus.booked => const Color(0xFFFF9500),
    DeliveryStatus.readyToDeliver => const Color(0xFF00C896),
    DeliveryStatus.delivered => const Color.fromARGB(255, 0, 149, 255),
    DeliveryStatus.washing => const Color(0xFF00ACC1),
    DeliveryStatus.returned => const Color(0xFF5F33E2),
    DeliveryStatus.cancelled => const Color(0xFFFF3B30),
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
