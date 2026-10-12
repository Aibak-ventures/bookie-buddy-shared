import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/person_measurements_entity/person_measurements_entity.dart';
import 'package:test/test.dart';

MeasurementValueEntity _m(String key, String value) =>
    MeasurementValueEntity(name: key, key: key, value: value);

void main() {
  test(
    'fingerprint ignores ordering and empty people, detects real changes',
    () {
      final a = [
        PersonMeasurementsEntity(
          name: 'A',
          measurements: [_m('x', '1'), _m('y', '2')],
        ),
        PersonMeasurementsEntity(name: 'B', measurements: [_m('x', '3')]),
      ];
      final reordered = [
        a[1],
        PersonMeasurementsEntity(
          name: 'A',
          measurements: [_m('y', '2'), _m('x', '1')],
        ),
      ];

      expect(a.fingerprint, reordered.fingerprint);
      expect(
        [...a, const PersonMeasurementsEntity(name: 'Empty')].fingerprint,
        a.fingerprint,
      );
      expect(
        [const PersonMeasurementsEntity(name: '')].fingerprint,
        const <PersonMeasurementsEntity>[].fingerprint,
      );
      expect(
        a.fingerprint,
        isNot([a[0].copyWith(name: 'C'), a[1]].fingerprint),
      );
      expect(
        a.fingerprint,
        isNot(
          [
            a[0],
            a[1].copyWith(measurements: [_m('x', '4')]),
          ].fingerprint,
        ),
      );
    },
  );

  test('limitedTo never throws on a zero or negative quantity', () {
    final people = [
      PersonMeasurementsEntity(name: 'A', measurements: [_m('x', '1')]),
      PersonMeasurementsEntity(name: 'B', measurements: [_m('x', '1')]),
    ];

    expect(people.limitedTo(0), isEmpty);
    expect(people.limitedTo(-3), isEmpty);
    expect(people.limitedTo(10), people);
    expect(people.limitedTo(1), [people.first]);
  });

  test('toSinglePerson wraps a flat list, and nothing for an empty one', () {
    expect([_m('x', '1')].toSinglePerson().single.name, isEmpty);
    expect(<MeasurementValueEntity>[].toSinglePerson(), isEmpty);
  });
}
