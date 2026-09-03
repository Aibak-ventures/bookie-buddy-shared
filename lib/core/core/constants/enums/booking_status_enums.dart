import 'package:bookie_buddy_shared/core/core/constants/enums/backend_keyed_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/main_service_type_enums.dart';

// Split from the mobile app's booking_status_enums.dart: this file keeps
// only values, business logic, and JSON mapping — no Flutter dependency.
// DeliveryStatus/ProductDeliveryStatus's `color` fields live instead as
// extensions in bookie_buddy_ui (Color is a Flutter type, doesn't belong
// in this pure-Dart package). See docs/PENDING.md in the shared repo.
//
// All three enums here now implement BackendKeyedEnum and delegate
// fromJson/toJson to EnumJsonCodec instead of hand-rolling the same
// lookup three times — `label` just redirects to the existing `name`
// field so no call site using `.name` needed to change.

enum DeliveryStatus implements BackendKeyedEnum {
  booked('booked', 'Booked'),
  readyToDeliver('ready to deliver', 'Ready to deliver'),
  delivered('delivered', 'Delivered'),
  returned('returned', 'Returned'),
  cancelled('cancelled', 'Cancelled');

  const DeliveryStatus(this.value, this.name);

  @override
  final String value;
  final String name;

  @override
  String get label => name;

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

  static DeliveryStatus fromJson(String? value) =>
      EnumJsonCodec.fromJson(value, values, fallback: DeliveryStatus.booked);

  static String? toJson(DeliveryStatus? status) =>
      EnumJsonCodec.tryToJson(status);
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
enum BookingStatus implements BackendKeyedEnum {
  upcoming('upcoming', 'Upcoming'),
  completed('completed', 'Completed'),
  // Web-only value — real, checked against usage before adding (web's
  // booking list/detail flows distinguish a cancelled booking status,
  // separate from DeliveryStatus.cancelled). Mobile's own switches over
  // this enum all have a `_`/default fallback already, so this doesn't
  // break mobile's exhaustiveness.
  cancelled('cancelled', 'Cancelled');

  const BookingStatus(this.value, this.name);

  @override
  final String value;
  final String name;

  @override
  String get label => name;

  static BookingStatus fromJson(String? value) =>
      EnumJsonCodec.fromJson(value, values, fallback: BookingStatus.upcoming);

  static String? toJson(BookingStatus? status) =>
      EnumJsonCodec.tryToJson(status);
}

/// Extension methods for nullable BookingStatus enum
extension BookingStatusX on BookingStatus? {
  bool get isUpcoming => this == BookingStatus.upcoming;
  bool get isCompleted => this == BookingStatus.completed;
}

/// Which bookings to load — a query parameter, not a status stored on a
/// booking itself. Web has real usage (repository/datasource/usecase
/// layer); mobile's `measurements` value has no web equivalent yet, kept
/// since mobile still uses it.
enum LoadBookingType {
  all('all'),
  upcoming('upcoming'),
  completed('completed'),
  past('past'),
  future('future'),
  measurements('measurements');

  const LoadBookingType(this.value);

  final String value;

  /// Convert from string to LoadBookingType enum
  static LoadBookingType fromString(String? type) {
    if (type == null) {
      return LoadBookingType.all;
    }
    return LoadBookingType.values.firstWhere(
      (e) => e.value == type.toLowerCase(),
      orElse: () => LoadBookingType.all,
    );
  }

  static LoadBookingType fromJson(String? value) {
    if (value == null) {
      return LoadBookingType.all;
    }
    return LoadBookingType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => LoadBookingType.all,
    );
  }

  static String? toJson(LoadBookingType? type) => type?.value;
}

/// Extension methods for nullable LoadBookingType enum
extension LoadBookingTypeX on LoadBookingType? {
  bool get isAll => this == LoadBookingType.all;
  bool get isUpcoming => this == LoadBookingType.upcoming;
  bool get isCompleted => this == LoadBookingType.completed;
  bool get isPast => this == LoadBookingType.past;
  bool get isFuture => this == LoadBookingType.future;
  bool get isMeasurements => this == LoadBookingType.measurements;
}

/// Enum to represent the delivery status of individual products within a booking
enum ProductDeliveryStatus implements BackendKeyedEnum {
  notReturned('not_returned', 'Not Returned'),
  returned('returned', 'Returned');

  @override
  final String value;
  final String name;

  const ProductDeliveryStatus(this.value, this.name);

  @override
  String get label => name;

  static ProductDeliveryStatus fromJson(String? value) => EnumJsonCodec.fromJson(
    value,
    values,
    fallback: ProductDeliveryStatus.notReturned,
  );

  static ProductDeliveryStatus? tryFromJson(String? value) =>
      EnumJsonCodec.tryFromJson(value, values);

  static String? toJson(ProductDeliveryStatus? status) =>
      EnumJsonCodec.tryToJson(status);

  bool get isReturned => this == ProductDeliveryStatus.returned;
  bool get isNotReturned => this == ProductDeliveryStatus.notReturned;
}
