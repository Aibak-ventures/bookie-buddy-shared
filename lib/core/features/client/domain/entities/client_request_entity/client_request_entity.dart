import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_request_entity.freezed.dart';

@freezed
abstract class ClientRequestEntity with _$ClientRequestEntity {
  const factory ClientRequestEntity({
    int? id,
    String? name,
    // Always E.164-formatted — see ClientEntity.phone1 for context.
    String? phone1,
    String? phone2,
  }) = _ClientRequestEntity;
}
