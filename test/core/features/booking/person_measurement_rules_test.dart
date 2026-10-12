import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/person_measurements_entity/person_measurement_rules.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/person_measurements_entity/person_measurements_entity.dart';
import 'package:test/test.dart';

void main() {
  test('unnamed people are shown by position', () {
    expect(PersonMeasurementRules.displayName('', 1), 'Person 2');
    expect(PersonMeasurementRules.displayName('  ', 0), 'Person 1');
    expect(PersonMeasurementRules.displayName(' Mary ', 3), 'Mary');
  });

  test('capacity grows to hold everyone already saved', () {
    expect(PersonMeasurementRules.capacity(2, 5), 5);
    expect(PersonMeasurementRules.capacity(4, 2), 4);
    expect(PersonMeasurementRules.capacity(0, 1), 1);
  });

  test(
    'the single-person form is used only when the feature is not in play',
    () {
      expect(PersonMeasurementRules.usesSinglePersonForm(0, 1), isTrue);
      expect(PersonMeasurementRules.usesSinglePersonForm(1, 1), isTrue);
      expect(PersonMeasurementRules.usesSinglePersonForm(1, 0), isTrue);
      expect(PersonMeasurementRules.usesSinglePersonForm(0, 2), isFalse);
      expect(PersonMeasurementRules.usesSinglePersonForm(2, 1), isFalse);
    },
  );

  test('count label pluralises', () {
    expect(PersonMeasurementRules.countLabel(1), '1 measurement');
    expect(PersonMeasurementRules.countLabel(0), '0 measurements');
    expect(PersonMeasurementRules.countLabel(3), '3 measurements');
  });

  test('withoutEmptyPeople drops empty people and keeps names as they are', () {
    const v = MeasurementValueEntity(name: 'x', key: 'x', value: '1');
    final saved = [
      const PersonMeasurementsEntity(name: 'Afnan', measurements: [v]),
      const PersonMeasurementsEntity(name: 'Person 2'),
      const PersonMeasurementsEntity(name: '', measurements: [v]),
    ].withoutEmptyPeople();

    expect(saved.map((p) => p.name), ['Afnan', '']);
  });
}
