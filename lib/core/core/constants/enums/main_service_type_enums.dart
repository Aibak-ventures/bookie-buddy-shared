import 'package:bookie_buddy_shared/core/features/service/domain/entities/service_entity/service_entity.dart';

// Split from the mobile app's main_service_type_enums.dart: dropped
// `categoryFieldIcon`/`colorFieldIcon`/`modelFieldIcon` (need
// Flutter's IconData — moved to an extension in bookie_buddy_ui) and
// `colorFieldType`/`modelFieldType` (return ProductColorFieldType/
// ProductModelFieldType, from the mobile app's enums.dart barrel — not
// needed by anything that's been extracted so far). Everything else here
// is pure Dart and unchanged. See docs/PENDING.md in the shared repo.

enum MainServiceType {
  dress('dress'),
  vehicle('vehicle'),
  equipment('equipment'),
  material('material'),
  gadget('gadget'),
  room('room'),
  costume('costume'),
  sale('sale'),
  jewellery('jewellery'),
  other('other');

  final String value;
  const MainServiceType(this.value);

  static MainServiceType fromString(String? serviceName) {
    if (serviceName == null) return MainServiceType.other;
    final serviceType = serviceName.toLowerCase();

    for (final type in MainServiceType.values) {
      if (serviceType.contains(type.value)) {
        return type;
      }
    }
    return MainServiceType.other;
  }

  static String toJson(MainServiceType? type) =>
      type?.value ?? MainServiceType.other.value;

  /// Get MainServiceType from a list of ServiceEntity by serviceId.
  /// Returns `MainServiceType.other` if serviceId is null or not found.
  static MainServiceType fromServiceList(
    List<ServiceEntity> services,
    int? serviceId,
  ) {
    if (serviceId == null) return MainServiceType.other;
    for (final s in services) {
      if (s.id == serviceId) return fromString(s.mainServiceName);
    }
    return MainServiceType.other;
  }

  /// Get MainServiceType from a list of ServiceEntity by serviceId.
  /// Returns `null` if serviceId is null or not found.
  static MainServiceType? tryFromServiceList(
    List<ServiceEntity> services,
    int? serviceId,
  ) {
    if (serviceId == null) return null;
    for (final s in services) {
      if (s.id == serviceId) return fromString(s.mainServiceName);
    }
    return null;
  }
}

/// ---------------------------------------------------------------------------
/// Type checkers — "what kind of service is this?"
/// ---------------------------------------------------------------------------

extension MainServiceTypeCheckers on MainServiceType? {
  bool get isDress => this == MainServiceType.dress;
  bool get isVehicle => this == MainServiceType.vehicle;
  bool get isEquipment => this == MainServiceType.equipment;
  bool get isMaterial => this == MainServiceType.material;
  bool get isGadget => this == MainServiceType.gadget;
  bool get isRoom => this == MainServiceType.room;
  bool get isCostume => this == MainServiceType.costume;
  bool get isSale => this == MainServiceType.sale;
  bool get isJewellery => this == MainServiceType.jewellery;
  bool get isOthers => this == MainServiceType.other;

  bool get isDressType => isDress || isCostume;
  bool get isCustomizableProductType => isDressType || isVehicle;
}

/// ---------------------------------------------------------------------------
/// Variant rules — single vs multi-variant products
/// ---------------------------------------------------------------------------

extension MainServiceTypeVariantRules on MainServiceType? {
  bool get isSingleVariantProductType => !isMultiVariantProductType;

  /// Dress/Costume: multiple sizes with quantities.
  bool get isMultiVariantProductType => isDressType;

  /// True for gadgets — each serial number = one unique item.
  bool get hasUniqueVariantIdentifier => false;
}

/// ---------------------------------------------------------------------------
/// Measurement — quantity vs length
/// ---------------------------------------------------------------------------

extension MainServiceTypeMeasurement on MainServiceType? {
  bool get isProductWithLengthMeasurement => isMaterial;
  bool get isProductWithQuantityMeasurement => !isProductWithLengthMeasurement;
}

/// ---------------------------------------------------------------------------
/// Field labels — display strings for form fields
/// ---------------------------------------------------------------------------

extension MainServiceTypeLabels on MainServiceType? {
  ///
  String get variantAttributeLabel {
    if (isDressType) return 'Size';
    return 'Variant';
  }

  /// "Color" / "Model" / null
  String? get secondaryAttributeLabel => switch (this) {
    .dress || .costume || .other || .jewellery => 'Color',
    .vehicle => 'Model',
    _ => null,
  };

  /// "Unit" / "Length (in meters)" / "Quantity"
  String get quantityFieldLabel => switch (this) {
    .vehicle => 'Unit',
    .material => 'Length (in meters)',
    _ => 'Quantity',
  };

  /// "Brand" / "Fabric Type" / "Category"
  String get categoryFieldLabel => switch (this) {
    .vehicle => 'Brand',
    .material => 'Fabric Type',
    .room => 'Room Type',
    _ => 'Category',
  };

  /// "Shutter Count" / "Color"
  String get colorFieldLabel => switch (this) {
    .gadget => 'Shutter Count',
    .room => 'Bed Type',
    _ => 'Color',
  };

  /// "Year of Manufacture" / "Model"
  String get modelFieldLabel => switch (this) {
    .gadget => 'Year of Manufacture',
    .room => 'Max Occupancy',
    _ => 'Model',
  };

  /// Product name label for display in booking details, product list, etc.
  String get productNameLabel => switch (this) {
    .vehicle => 'Vehicle',
    .material => 'Material',
    .room => 'Room',
    _ => 'Product',
  };

  /// Get hint text for the product name field.
  String get productNameHint => 'Enter ${productNameLabel.toLowerCase()} name';

  String get quantityHint => switch (this) {
    .vehicle => 'Enter unit',
    .material => 'Enter length in meters',
    _ => 'Enter quantity',
  };

  String get pickupLabel => isRoom ? 'Check-in' : 'Pickup';
  String get returnLabel => isRoom ? 'Check-out' : 'Return';
  String get pickupDateLabel => '$pickupLabel Date';
  String get returnDateLabel => '$returnLabel Date';
  String get pickupTimeLabel => '$pickupLabel Time';
  String get returnTimeLabel => '$returnLabel Time';

  String get rentalUnitTypeLabel => isRoom ? 'Duration Type' : 'Rental Type';

  String get clientNameType => isRoom ? 'Guest' : 'Client';

  /// Used as the action word for return-confirmation UI (titles, buttons).
  String get returnActionLabel => isRoom ? returnLabel : 'Return';

  /// Confirmation-dialog question asking whether all booked items came back.
  String get allItemsReturnedQuestion => switch (this) {
    .room => 'Have all rooms vacated?',
    _ => 'Have all products from this booking returned?',
  };

  /// Checkbox label confirming the physical check was done.
  String get physicalCheckConfirmationLabel => switch (this) {
    .room => 'I have physically checked and verified all rooms',
    _ => 'I have physically checked and received all products',
  };

  /// Unit word used when counting confirmed-returned items.
  String get returnCountUnitLabel => isRoom ? 'Room' : 'items';

  /// Instructional copy for the partial-return product checklist.
  String get productCheckInstructionLabel => switch (this) {
    .room => 'Check the ${productNameLabel}s are vacated properly',
    _ => 'Check the ${productNameLabel}s that have been physically returned:',
  };

  String get stockManagementLabel => isRoom ? 'Room' : 'Stock';

  String get tabReturnsLabel => isRoom ? 'Occupied' : 'Returns';

  String get bookedItemsLabel => isRoom ? 'Rooms' : 'Items';
}

/// ---------------------------------------------------------------------------
/// Display / form visibility rules — what to show or hide in the UI
/// ---------------------------------------------------------------------------

extension MainServiceTypeDisplayRules on MainServiceType? {
  /// Requires a date range (pickup + return) for bookings.
  bool get requiresDateRange =>
      isVehicle || isEquipment || isGadget || isCostume;

  /// Show the color field on the product form.
  bool get showsColorField =>
      isMultiVariantProductType || isOthers || isJewellery || isRoom;

  /// Show the model field on the product form.
  bool get showsModelField => isVehicle;

  /// Show the quantity field when adding/editing a product or booking.
  bool get showProductQuantityField => !isRoom;

  /// Show the sale price field on the product form.
  bool get showProductSalePriceField => !isRoom;

  /// Show the purchase price field on the product form.
  bool get showProductPurchasePriceField => !isRoom;

  /// Default quantity to 1 when adding a product (rooms always have 1 unit).
  bool get setDefaultProductQuantityOnAdd => isRoom;

  /// Show total product count in booking details (jewellery sets).
  bool get hasTotalProductCount => isJewellery;

  bool get showCoolingPeriodField => !isRoom;

  /// Allow decimal input in the quantity field (material length in meters).
  bool get allowsDecimalQuantity => isMaterial;

  /// Default stock for a new variant.
  int get defaultVariantStock => hasUniqueVariantIdentifier ? 1 : 0;

  bool get showTransferProduct => !isRoom;
}

/// ---------------------------------------------------------------------------
/// Pricing — price formatting helpers
/// ---------------------------------------------------------------------------

extension MainServiceTypePricing on MainServiceType? {
  String getPriceSuffix([int? price]) {
    if (price == null || price == 0) return '';
    return isMaterial ? '/m' : '';
  }
}
