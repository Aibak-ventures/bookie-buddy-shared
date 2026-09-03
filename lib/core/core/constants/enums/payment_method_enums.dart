import 'package:bookie_buddy_shared/core/core/constants/enums/backend_keyed_enum.dart';
import 'package:bookie_buddy_shared/core/utils/extensions/string_extensions.dart';
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

  // Not BackendKeyedEnum/EnumJsonCodec here — matching needs to check
  // *two* backend fields (value OR secondValue), which the generic
  // single-field codec doesn't support.
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

  bool get isUpi => this == PaymentMethod.upi;
  bool get isCash => this == PaymentMethod.cash;
}

enum PaymentStatus implements BackendKeyedEnum {
  pending('pending'),
  completed('completed');

  const PaymentStatus(this.value);

  @override
  final String value;

  String get name => value.capitalizeFirstLetter();

  @override
  String get label => name;

  /// Convert from string to PaymentStatus enum
  static PaymentStatus fromString(String? status) =>
      EnumJsonCodec.fromJson(status, values, fallback: PaymentStatus.pending);

  static PaymentStatus fromJson(String? value) =>
      EnumJsonCodec.fromJson(value, values, fallback: PaymentStatus.pending);

  static PaymentStatus fromBool(bool? status) {
    if (status == true) {
      return PaymentStatus.completed;
    } else {
      return PaymentStatus.pending;
    }
  }

  static String? toJson(PaymentStatus? status) =>
      EnumJsonCodec.tryToJson(status);

  bool get isPending => this == PaymentStatus.pending;
  bool get isCompleted => this == PaymentStatus.completed;
}

enum PurchaseMode implements BackendKeyedEnum {
  normal('normal', 'Normal'),
  package('package', 'Package'),
  courier('courier', 'Courier'),
  pickup('pickup', 'Pickup');

  const PurchaseMode(this.value, this.label);

  @override
  final String value;
  @override
  final String label;

  static List<PurchaseMode> get filteredValues => const [normal, courier];

  /// Convert from string to PurchaseMode enum
  static PurchaseMode fromString(String? status) =>
      EnumJsonCodec.fromJson(status, values, fallback: PurchaseMode.normal);

  static PurchaseMode fromJson(String? value) =>
      EnumJsonCodec.fromJson(value, values, fallback: PurchaseMode.normal);

  static String? toJson(PurchaseMode? mode) => EnumJsonCodec.tryToJson(mode);

  bool get isNormal => this == PurchaseMode.normal;
  bool get isPackage => this == PurchaseMode.package;
  bool get isCourier => this == PurchaseMode.courier;
  bool get isPickup => this == PurchaseMode.pickup;
}
