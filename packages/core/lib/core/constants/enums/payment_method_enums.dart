import 'package:bookie_buddy_core/utils/extensions/string_extensions.dart';
import 'package:collection/collection.dart';

enum PaymentMethod {
  upi('UPI', 'upi', 'gpay'),
  cash('Cash', 'cash', 'cash');

  const PaymentMethod(this.name, this.value, this.secondValue);

  // UI name
  final String name;

  // upi or cash
  final String value;
  // some api use old status name, so that's why we use this secondValue variable (mainly for gpay)
  // gpay or cash
  final String secondValue;

  static PaymentMethod? tryFromJson(String? value) {
    if (value == null) {
      return null;
    }
    return PaymentMethod.values.firstWhereOrNull(
      (e) =>
          e.value == value.toLowerCase() ||
          e.secondValue == value.toLowerCase(),
    );
  }

  static PaymentMethod fromJson(String? value) {
    if (value == null) {
      return PaymentMethod.cash;
    }
    return PaymentMethod.values.firstWhere(
      (e) =>
          e.value == value.toLowerCase() ||
          e.secondValue == value.toLowerCase(),
      orElse: () => PaymentMethod.cash,
    );
  }

  static List<PaymentMethod> fromList(List<dynamic> list) =>
      list.map((e) => fromJson(e.toString())).toList();

  static List<String> toList(List<PaymentMethod> list) =>
      list.map((e) => e.value).toList();

  static String? toJson(PaymentMethod? method) => method?.value;
  // static String? toUpiJson(PaymentMethod? method) => method?.secondValue;

  bool get isUpi => this == PaymentMethod.upi;
  bool get isCash => this == PaymentMethod.cash;
}

enum PaymentStatus {
  pending('pending'),
  completed('completed');

  const PaymentStatus(this.value);

  final String value;

  String get name => value.capitalizeFirstLetter();

  /// Convert from string to PaymentStatus enum
  static PaymentStatus fromString(String? status) {
    if (status == null) {
      return PaymentStatus.pending;
    }
    return PaymentStatus.values.firstWhere(
      (e) => e.value == status.toLowerCase(),
      orElse: () => PaymentStatus.pending,
    );
  }

  static PaymentStatus fromJson(String? value) {
    if (value == null) {
      return PaymentStatus.pending;
    }
    return PaymentStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => PaymentStatus.pending,
    );
  }

  static PaymentStatus fromBool(bool? status) {
    if (status == true) {
      return PaymentStatus.completed;
    } else {
      return PaymentStatus.pending;
    }
  }

  static String? toJson(PaymentStatus? status) => status?.value;

  bool get isPending => this == PaymentStatus.pending;
  bool get isCompleted => this == PaymentStatus.completed;
}

/// Extension methods for nullable PaymentStatus enum
// extension PaymentStatusX on PaymentStatus? {
//   bool get isPending => this == PaymentStatus.pending;
//   bool get isCompleted => this == PaymentStatus.completed;
// }

enum PurchaseMode {
  normal('normal', 'Normal'),
  package('package', 'Package'),
  courier('courier', 'Courier'),
  pickup('pickup', 'Pickup');

  const PurchaseMode(this.value, this.label);

  final String value;
  final String label;

  static List<PurchaseMode> get filteredValues => const [normal, courier];

  /// Convert from string to PurchaseMode enum
  static PurchaseMode fromString(String? status) {
    if (status == null) {
      return PurchaseMode.normal;
    }
    return PurchaseMode.values.firstWhere(
      (e) => e.value == status.toLowerCase(),
      orElse: () => PurchaseMode.normal,
    );
  }

  static PurchaseMode fromJson(String? value) {
    if (value == null) {
      return PurchaseMode.normal;
    }
    return PurchaseMode.values.firstWhere(
      (e) => e.value == value,
      orElse: () => PurchaseMode.normal,
    );
  }

  static String? toJson(PurchaseMode? mode) => mode?.value;

  bool get isNormal => this == PurchaseMode.normal;
  bool get isPackage => this == PurchaseMode.package;
  bool get isCourier => this == PurchaseMode.courier;
  bool get isPickup => this == PurchaseMode.pickup;
}

/// Extension methods for nullable PurchaseMode enum
// extension PurchaseModeX on PurchaseMode? {
//   bool get isNormal => this == PurchaseMode.normal;
//   bool get isPackage => this == PurchaseMode.package;
// }
