import 'package:bookie_buddy_shared/core/core/constants/enums/gender_type_enums.dart';
import 'package:bookie_buddy_shared/core/core/constants/measurement_constants.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
import 'package:bookie_buddy_shared/core/utils/extensions/string_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_value_model.freezed.dart';
part 'measurement_value_model.g.dart';

@freezed
abstract class MeasurementValueModel with _$MeasurementValueModel {
  const factory MeasurementValueModel({
    required String name,
    required String key,
    required String value,
    GenderType? gender,
  }) = _MeasurementValueModel;

  factory MeasurementValueModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurementValueModelFromJson(json);

  factory MeasurementValueModel.fromEntity(MeasurementValueEntity entity) =>
      MeasurementValueModel(
        name: entity.name,
        key: entity.key,
        value: entity.value,
        gender: entity.gender,
      );

  /// Parses a flat `{"chest": 30}` map. Anything else gives an empty list;
  /// entries without a value are skipped. The display name is the key with
  /// underscores as spaces and a capital first letter ("shoulder_width" →
  /// "Shoulder width"), so what is stored by key is shown as a name.
  static List<MeasurementValueModel> fromCustomJson(dynamic json) {
    if (json is! Map) return [];
    return [
      for (final entry in json.entries)
        if (entry.value != null)
          MeasurementValueModel(
            name: entry.key
                .toString()
                .replaceAll('_', ' ')
                .capitalizeFirstLetter(),
            key: VehicleMeasurementKeys.normalize(entry.key.toString()),
            value: entry.value.toString(),
          ),
    ];
  }
}

extension MeasurementValueModelMapper on MeasurementValueModel {
  MeasurementValueEntity toEntity() => MeasurementValueEntity(
    name: name,
    key: key,
    value: value,
    gender: gender,
  );
}

extension MeasurementValueEntityMapper on MeasurementValueEntity {
  MeasurementValueModel toModel() => MeasurementValueModel.fromEntity(this);
}
