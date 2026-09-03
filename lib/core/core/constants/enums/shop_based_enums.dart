enum UserPasswordSettingRole {
  all('ALL', 'All'),
  none('NONE', 'None'),
  staff('STAFF', 'Staff'),
  managerAndStaff('MANAGER_AND_STAFF', 'Manager and Staff');

  const UserPasswordSettingRole(this.value, this.name);

  final String value;
  final String name;

  /// Convert from string to UserPasswordSettingRole enum
  static UserPasswordSettingRole fromString(String? value) {
    if (value == null) {
      return UserPasswordSettingRole.all;
    }
    return UserPasswordSettingRole.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => UserPasswordSettingRole.all,
    );
  }

  static UserPasswordSettingRole fromJson(String? value) {
    if (value == null) {
      return UserPasswordSettingRole.all;
    }
    return UserPasswordSettingRole.values.firstWhere(
      (e) => e.value == value,
      orElse: () => UserPasswordSettingRole.all,
    );
  }

  static String? toJson(UserPasswordSettingRole? role) => role?.value;

  bool get isAll => this == UserPasswordSettingRole.all;
  bool get isNone => this == UserPasswordSettingRole.none;
  bool get isStaff => this == UserPasswordSettingRole.staff;
  bool get isManagerAndStaff => this == UserPasswordSettingRole.managerAndStaff;
}

enum ShopRole {
  owner('OWNER', 'Owner'),
  manager('MANAGER', 'Manager'),
  staff('STAFF', 'Staff');

  const ShopRole(this.value, this.name);

  final String value;
  final String name;

  static ShopRole fromJson(String? value) {
    if (value == null) {
      return ShopRole.staff;
    }
    return ShopRole.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => ShopRole.staff,
    );
  }

  static String? toJson(ShopRole? role) => role?.value;

  bool get isStaff => this == ShopRole.staff;
  bool get isManager => this == ShopRole.manager;
  bool get isOwner => this == ShopRole.owner;
}

enum AddButtonDefaultAction {
  booking('BOOKINGS', 'New Booking'),
  sales('SALES', 'New Sales'),
  customWork('CUSTOMIZATION', 'New Customization Work'),
  ask('ASK_EVERY_TIME', 'Ask every time');

  const AddButtonDefaultAction(this.value, this.label);

  final String value;
  final String label;

  /// Convert from string to AddButtonDefaultAction enum
  static AddButtonDefaultAction fromString(String? value) {
    if (value == null) {
      return AddButtonDefaultAction.booking;
    }
    return AddButtonDefaultAction.values.firstWhere(
      (e) => e.value == value.toUpperCase(),
      orElse: () => AddButtonDefaultAction.booking,
    );
  }

  static AddButtonDefaultAction fromJson(String? value) {
    if (value == null) {
      return AddButtonDefaultAction.booking;
    }
    return AddButtonDefaultAction.values.firstWhere(
      (e) => e.value == value,
      orElse: () => AddButtonDefaultAction.booking,
    );
  }

  static String? toJson(AddButtonDefaultAction? action) => action?.value;

  static List<AddButtonDefaultAction> without(AddButtonDefaultAction action) =>
      AddButtonDefaultAction.values.where((e) => e != action).toList();

  bool get isBooking => this == AddButtonDefaultAction.booking;
  bool get isSales => this == AddButtonDefaultAction.sales;
  bool get isCustomWork => this == AddButtonDefaultAction.customWork;
  bool get isAsk => this == AddButtonDefaultAction.ask;
}
