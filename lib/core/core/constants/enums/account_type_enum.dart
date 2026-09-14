enum AccountType {
  cash('cash'),
  bank('bank');

  final String value;

  const AccountType(this.value);

  static AccountType? tryFromJson(String? apiValue) {
    if (apiValue == null || apiValue.isEmpty) return null;
    return AccountType.values.firstWhere(
      (e) => e.value == apiValue,
      orElse: () => AccountType.cash,
    );
  }

  static AccountType fromJson(String apiValue) {
    return AccountType.values.firstWhere(
      (e) => e.value == apiValue,
      orElse: () => AccountType.cash,
    );
  }

  static String toJson(AccountType type) => type.value;
  static String? tryToJson(AccountType? type) => type?.value;
}

enum AccountFilterType {
  all,
  cashOnly,
  bankOnly;

  AccountType? get accountType {
    switch (this) {
      case AccountFilterType.cashOnly:
        return AccountType.cash;
      case AccountFilterType.bankOnly:
        return AccountType.bank;
      case AccountFilterType.all:
        return null;
    }
  }
}
