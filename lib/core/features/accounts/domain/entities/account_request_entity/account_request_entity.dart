import 'package:bookie_buddy_shared/core/core/constants/enums/account_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_request_entity.freezed.dart';

@freezed
abstract class AccountRequestEntity with _$AccountRequestEntity {
  const factory AccountRequestEntity({
    String? accountName,
    String? accountNumber,
    AccountType? accountType,
    String? description,
    bool? isActive,
    bool? isDefault,
  }) = _AccountRequestEntity;
}
