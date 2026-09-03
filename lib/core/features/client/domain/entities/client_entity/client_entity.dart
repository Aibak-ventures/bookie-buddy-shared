import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_entity.freezed.dart';

@freezed
abstract class ClientEntity with _$ClientEntity {
  const factory ClientEntity({
    int? id,
    required String name,
    // Always E.164-formatted (e.g. "+919876543210") — mobile only ever
    // stores/uses the phone number in this one form. Web additionally
    // keeps a raw-digits-without-country-code form for its own internal
    // use (phone input widgets, a numeric presence check before display),
    // but that's a web-local/data-layer concern, not a shared one — its
    // model maps straight into this field, no separate field needed here.
    required String phone1,
    String? phone2,
  }) = _ClientEntity;
}
