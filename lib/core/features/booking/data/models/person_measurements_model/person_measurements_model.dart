import 'package:bookie_buddy_shared/core/core/constants/measurement_constants.dart';
import 'package:bookie_buddy_shared/core/features/booking/data/models/measurement_value_model/measurement_value_model.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/person_measurements_entity/person_measurements_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_measurements_model.freezed.dart';

/// One person's measurements. The `measurements` JSON is a free-form blob the
/// apps own, so this model has no `fromJson`; use [fromCustomJson] /
/// [toCustomJson] for the whole blob.
///
/// The blob:
/// - **Read** accepts the legacy flat shape `{"chest": 30}` (one unnamed
///   person) and the keyed shape `{"Afnan": {"chest": 30}}` (one person per
///   key). Plain `key: value` entries next to people form one unnamed person.
///   Anything else reads as no people and never throws.
/// - **Write** is always keyed. Inner values are keyed by the backend key
///   (`chest`), not the display name. An unnamed person is stored as
///   "Person 1", "Person 2", ... by position; two people never share a key.
/// - Values that belong to the product, not a person (see
///   [VehicleMeasurementKeys]), are stored as plain entries beside the people:
///   `{"Afnan": {...}, "running_kilometers": "100"}`. They read back as part of
///   the first person (or as an unnamed person when there are none), so the
///   apps can keep treating them as an ordinary measurement value.
@freezed
abstract class PersonMeasurementsModel with _$PersonMeasurementsModel {
  const factory PersonMeasurementsModel({
    required String name,
    @Default([]) List<MeasurementValueModel> measurements,
  }) = _PersonMeasurementsModel;

  factory PersonMeasurementsModel.fromEntity(PersonMeasurementsEntity entity) =>
      PersonMeasurementsModel(
        name: entity.name,
        measurements: entity.measurements
            .map(MeasurementValueModel.fromEntity)
            .toList(),
      );

  /// Parses the `measurements` blob.
  static List<PersonMeasurementsModel> fromCustomJson(dynamic json) {
    if (json is! Map || json.isEmpty) return [];

    final people = [
      for (final person in json.entries)
        if (person.value is Map)
          PersonMeasurementsModel(
            name: person.key.toString(),
            measurements: MeasurementValueModel.fromCustomJson(person.value),
          ),
    ];

    final loose = MeasurementValueModel.fromCustomJson({
      for (final e in json.entries)
        if (e.value is! Map) e.key: e.value,
    });
    final vehicle = loose
        .where((m) => VehicleMeasurementKeys.isVehicleKey(m.key))
        .toList();
    // Plain `key: value` entries (the legacy shape, or stray ones next to
    // people) belong to one unnamed person, so no data is dropped.
    final personal = loose.where((m) => !vehicle.contains(m)).toList();

    final result = [
      if (personal.isNotEmpty)
        PersonMeasurementsModel(name: '', measurements: personal),
      ...people,
    ].where((p) => p.measurements.isNotEmpty).toList();

    if (vehicle.isEmpty) return result;
    if (result.isEmpty) {
      return [PersonMeasurementsModel(name: '', measurements: vehicle)];
    }
    return [
      result.first.copyWith(
        measurements: [...result.first.measurements, ...vehicle],
      ),
      ...result.skip(1),
    ];
  }

  /// Inverse of [fromCustomJson]; see the class docs for the shape.
  ///
  /// [runningKilometers], when given, is the authoritative odometer value: any
  /// running-kilometers value held by a person is replaced by it (or dropped
  /// when empty). When `null`, a value held by a person is kept, moved beside
  /// the people.
  static Map<String, dynamic> toCustomJson(
    List<PersonMeasurementsModel> list, {
    String? runningKilometers,
  }) {
    final json = <String, dynamic>{};
    final vehicle = <String, String>{};
    for (final (i, p) in list.indexed) {
      final own = <MeasurementValueModel>[];
      for (final m in p.measurements) {
        if (VehicleMeasurementKeys.isVehicleKey(m.key)) {
          vehicle.putIfAbsent(
            VehicleMeasurementKeys.normalize(m.key),
            () => m.value,
          );
        } else {
          own.add(m);
        }
      }
      // A person whose only values were the product's own has nothing left.
      if (own.isEmpty && p.measurements.isNotEmpty) continue;

      final name = p.name.trim();
      final base = name.isEmpty ? MeasurementConstants.personNameAt(i) : name;
      // Two people must never share a key, or one would overwrite the other.
      // The first keeps [base]; later ones become "base (2)", "base (3)", ...
      var key = base;
      for (var n = 2; json.containsKey(key); n++) {
        key = '$base ($n)';
      }
      json[key] = {for (final m in own) m.key: m.value};
    }

    if (runningKilometers != null) {
      vehicle.remove(VehicleMeasurementKeys.runningKilometers);
      if (runningKilometers.isNotEmpty) {
        vehicle[VehicleMeasurementKeys.runningKilometers] = runningKilometers;
      }
    }
    // Beside the people, but a person named like a vehicle key keeps theirs.
    for (final e in vehicle.entries) {
      json.putIfAbsent(e.key, () => e.value);
    }
    return json;
  }
}

extension PersonMeasurementsModelMapper on PersonMeasurementsModel {
  PersonMeasurementsEntity toEntity() => PersonMeasurementsEntity(
    name: name,
    measurements: measurements.map((e) => e.toEntity()).toList(),
  );
}

extension PersonMeasurementsEntityJsonX on List<PersonMeasurementsEntity> {
  /// The `measurements` value of a write request, or `null` when there is
  /// nothing to send. People without values are not written. See
  /// [PersonMeasurementsModel.toCustomJson] for [runningKilometers].
  Map<String, dynamic>? toMeasurementsJson({String? runningKilometers}) {
    final json = PersonMeasurementsModel.toCustomJson([
      for (final p in this)
        if (p.measurements.isNotEmpty) PersonMeasurementsModel.fromEntity(p),
    ], runningKilometers: runningKilometers);
    return json.isEmpty ? null : json;
  }
}
