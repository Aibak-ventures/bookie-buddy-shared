import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_entity.freezed.dart';

@freezed
abstract class ClientEntity with _$ClientEntity {
  const factory ClientEntity({
    int? id,
    required String name,
    required String phone1,
    String? phone2,
  }) = _ClientEntity;
}
