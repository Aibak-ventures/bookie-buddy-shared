import 'package:bookie_buddy_core/core/constants/enums/main_service_type_enums.dart';

// Split from the mobile app's booking_status_enums.dart: this file keeps
// only values, business logic, and JSON mapping — no Flutter dependency.
// DeliveryStatus/ProductDeliveryStatus's `color` fields live instead as
// extensions in bookie_buddy_ui (Color is a Flutter type, doesn't belong
// in this pure-Dart package). See docs/PENDING.md in the shared repo.

enum DeliveryStatus {
  booked('booked', 'Booked'),
  readyToDeliver('ready to deliver', 'Ready to deliver'),
  delivered('delivered', 'Delivered'),
  returned('returned', 'Returned'),
  cancelled('cancelled', 'Cancelled');

  const DeliveryStatus(this.value, this.name);

  final String value;
  final String name;

  String getServiceSpecificName(MainServiceType? serviceType) {
    if (serviceType == null) return name;
    if (serviceType.isRoom) {
      return switch (this) {
        DeliveryStatus.booked => booked.name,
        DeliveryStatus.readyToDeliver => 'Checked-In',
        DeliveryStatus.delivered => delivered.name,
        DeliveryStatus.returned => 'Checked-Out',
        DeliveryStatus.cancelled => cancelled.name,
      };
    }
    return name;
  }

  static List<DeliveryStatus> getServiceSpecificStatus(
    MainServiceType? serviceType,
  ) {
    if (serviceType == null) return values;

    if (serviceType.isRoom) {
      return values.where((s) => !s.isDelivered).toList();
    }
    return values;
  }

  static DeliveryStatus fromJson(String? value) {
    if (value == null) {
      return DeliveryStatus.booked;
    }
    return DeliveryStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => DeliveryStatus.booked,
    );
  }

  static String? toJson(DeliveryStatus? status) => status?.value;
}

/// Extension methods for nullable DeliveryStatus enum
extension DeliveryStatusX on DeliveryStatus? {
  bool get isDelivered => this == DeliveryStatus.delivered;
  bool get isReturned => this == DeliveryStatus.returned;
  bool get isReadyToDeliver => this == DeliveryStatus.readyToDeliver;
  bool get isBooked => this == DeliveryStatus.booked;
  bool get isCancelled => this == DeliveryStatus.cancelled;
}

/// Enum to represent the status of a booking such as upcoming or completed
enum BookingStatus {
  upcoming('upcoming', 'Upcoming'),
  completed('completed', 'Completed');

  const BookingStatus(this.value, this.name);

  final String value;
  final String name;

  static BookingStatus fromJson(String? value) {
    if (value == null) {
      return BookingStatus.upcoming;
    }
    return BookingStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => BookingStatus.upcoming,
    );
  }

  static String? toJson(BookingStatus? status) => status?.value;
}

/// Extension methods for nullable BookingStatus enum
extension BookingStatusX on BookingStatus? {
  bool get isUpcoming => this == BookingStatus.upcoming;
  bool get isCompleted => this == BookingStatus.completed;
}

/// Enum to represent the delivery status of individual products within a booking
enum ProductDeliveryStatus {
  notReturned('not_returned', 'Not Returned'),
  returned('returned', 'Returned');

  final String value;
  final String name;

  const ProductDeliveryStatus(this.value, this.name);

  static ProductDeliveryStatus fromJson(String? value) {
    if (value == null) {
      return ProductDeliveryStatus.notReturned;
    }
    return ProductDeliveryStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ProductDeliveryStatus.notReturned,
    );
  }

  static ProductDeliveryStatus? tryFromJson(String? value) {
    if (value == null) {
      return null;
    }
    for (final e in ProductDeliveryStatus.values) {
      if (e.value == value) return e;
    }
    return null;
  }

  static String? toJson(ProductDeliveryStatus? status) => status?.value;

  bool get isReturned => this == ProductDeliveryStatus.returned;
  bool get isNotReturned => this == ProductDeliveryStatus.notReturned;
}
