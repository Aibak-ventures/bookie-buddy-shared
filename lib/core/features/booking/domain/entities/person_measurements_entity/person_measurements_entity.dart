import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_measurements_entity.freezed.dart';

/// The measurements taken for one person on a product line.
///
/// A line with quantity N can hold up to N of these (e.g. five dresses for five
/// different people). An empty [name] is the legacy single, unnamed set.
@freezed
abstract class PersonMeasurementsEntity with _$PersonMeasurementsEntity {
  const factory PersonMeasurementsEntity({
    required String name,
    @Default([]) List<MeasurementValueEntity> measurements,
  }) = _PersonMeasurementsEntity;
}

extension PersonMeasurementsEntityListX on List<PersonMeasurementsEntity> {
  ///
  bool get haveMultiple => length > 1;

  ///
  bool get isSingle => length == 1;

  /// Every measurement value, regardless of person.
  List<MeasurementValueEntity> get allValues => [
    for (final person in this) ...person.measurements,
  ];

  /// The first [max] people. A line with quantity N can only hold N people,
  /// so when the quantity shrinks the trailing ones are the ones dropped.
  List<PersonMeasurementsEntity> limitedTo(int max) =>
      take(max < 0 ? 0 : max).toList();

  /// Stable, order-independent string of the content, for change detection
  /// (e.g. "did the user edit this line?"). Equal content gives an equal
  /// fingerprint no matter how people or values are ordered. People without
  /// measurements hold nothing, so they do not count.
  String get fingerprint {
    final people = [
      for (final p in this)
        if (p.measurements.isNotEmpty)
          '${p.name}{${(p.measurements.map((m) => '${m.key}:${m.value}').toList()..sort()).join(',')}}',
    ]..sort();
    return people.join('|');
  }
}

extension MeasurementValueListX on List<MeasurementValueEntity> {
  /// Wraps a flat list as a single unnamed person, for flows that only ever
  /// have one set of measurements.
  List<PersonMeasurementsEntity> toSinglePerson() => isEmpty
      ? const []
      : [PersonMeasurementsEntity(name: '', measurements: this)];
}
