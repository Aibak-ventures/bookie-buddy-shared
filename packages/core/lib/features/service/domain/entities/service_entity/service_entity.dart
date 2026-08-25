import 'package:bookie_buddy_core/core/constants/enums/main_service_type_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_entity.freezed.dart';

@freezed
abstract class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    required int id,
    required String name,
    required String description,
    String? icon,
    required String mainServiceName,
  }) = _ServiceEntity;
}

extension ServiceEntityX on ServiceEntity {
  MainServiceType get mainServiceType =>
      MainServiceType.fromString(mainServiceName);
}
