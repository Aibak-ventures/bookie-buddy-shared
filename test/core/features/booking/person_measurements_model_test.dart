import 'package:bookie_buddy_shared/core/core/constants/measurement_constants.dart';
import 'package:bookie_buddy_shared/core/features/booking/data/models/measurement_value_model/measurement_value_model.dart';
import 'package:bookie_buddy_shared/core/features/booking/data/models/person_measurements_model/person_measurements_model.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/person_measurements_entity/person_measurements_entity.dart';
import 'package:test/test.dart';

MeasurementValueEntity _m(String key, String value) =>
    MeasurementValueEntity(name: key, key: key, value: value);

PersonMeasurementsEntity _p(String name, Map<String, String> values) =>
    PersonMeasurementsEntity(
      name: name,
      measurements: [for (final e in values.entries) _m(e.key, e.value)],
    );

void main() {
  group('read', () {
    test('legacy flat map is one unnamed person', () {
      final parsed = PersonMeasurementsModel.fromCustomJson({
        'chest': 30,
        'Shoulder': 28,
      });

      expect(parsed, hasLength(1));
      expect(parsed.single.name, isEmpty);
      expect(parsed.single.measurements.map((m) => (m.name, m.key, m.value)), [
        ('Chest', 'chest', '30'),
        ('Shoulder', 'shoulder', '28'),
      ]);
    });

    test('keys are shown as names', () {
      final m = PersonMeasurementsModel.fromCustomJson({
        'shoulder_width': 1,
        'Running Kilometers': 2,
      }).single.measurements;

      expect(m.map((e) => e.name), ['Shoulder width', 'Running Kilometers']);
      expect(m.map((e) => e.key), ['shoulder_width', 'running_kilometers']);
    });

    test('keyed map is one person per key', () {
      final parsed = PersonMeasurementsModel.fromCustomJson({
        'Afnan': {'chest': 30},
        'Riya': {'chest': 34},
      });

      expect(parsed.map((p) => p.name), ['Afnan', 'Riya']);
    });

    test('mixed shape keeps loose entries as an unnamed person', () {
      final parsed = PersonMeasurementsModel.fromCustomJson({
        'chest': 30,
        'Afnan': {'waist': 28},
      });

      expect(parsed.map((p) => p.name), ['', 'Afnan']);
    });

    test('null values are skipped and empty people dropped', () {
      expect(
        PersonMeasurementsModel.fromCustomJson({
          'chest': null,
          'waist': 28,
        }).single.measurements.map((m) => m.value),
        ['28'],
      );
      expect(
        PersonMeasurementsModel.fromCustomJson({
          'Afnan': <String, dynamic>{},
          'John': {'chest': null},
        }),
        isEmpty,
      );
    });

    test('untyped (dynamic-key) maps are read like typed ones', () {
      final parsed = PersonMeasurementsModel.fromCustomJson(<dynamic, dynamic>{
        1: {'chest': 1},
      });

      expect(parsed.single.name, '1');
    });

    final hostile = <String, dynamic>{
      'null': null,
      'string': 'chest 30',
      'number': 7,
      'bool': true,
      'list': [1, 2],
      'list of maps': [
        {'name': 'Chest', 'value': '30'},
      ],
      'empty map': <String, dynamic>{},
      'null value': {'chest': null},
      'person with null': {'Afnan': null},
      'person with scalar list': {
        'Afnan': [1, 2],
      },
      'deep nesting': {
        'Afnan': {
          'chest': {'a': 1},
        },
      },
      'empty person': {'Afnan': <String, dynamic>{}},
      'empty key': {
        '': {'chest': 1},
      },
      'mixed': {
        'chest': 30,
        'Afnan': {'waist': 28},
      },
      'vehicle only': {'running_kilometers': '10'},
      'vehicle as map': {
        'running_kilometers': {'a': 1},
      },
    };
    for (final e in hostile.entries) {
      test('"${e.key}" reads and rewrites without throwing', () {
        late List<PersonMeasurementsModel> parsed;
        expect(
          () => parsed = PersonMeasurementsModel.fromCustomJson(e.value),
          returnsNormally,
        );
        expect(
          () => PersonMeasurementsModel.toCustomJson(parsed),
          returnsNormally,
        );
      });
    }
  });

  group('write', () {
    test('legacy flat becomes keyed, inner values keyed by backend key', () {
      final parsed = PersonMeasurementsModel.fromCustomJson({
        'chest': 30,
        'Shoulder width': 28,
      });

      expect(PersonMeasurementsModel.toCustomJson(parsed), {
        'Person 1': {'chest': '30', 'shoulder_width': '28'},
      });
    });

    test('unnamed people are keyed by position', () {
      final json = PersonMeasurementsModel.toCustomJson([
        const PersonMeasurementsModel(name: ''),
        const PersonMeasurementsModel(name: 'Afnan'),
        const PersonMeasurementsModel(name: ''),
      ]);

      expect(json.keys, ['Person 1', 'Afnan', 'Person 3']);
    });

    test('a key is never overwritten', () {
      final json = PersonMeasurementsModel.toCustomJson([
        const PersonMeasurementsModel(name: ''),
        const PersonMeasurementsModel(name: 'Person 1'),
        const PersonMeasurementsModel(name: 'Person 1'),
      ]);

      expect(json.keys, ['Person 1', 'Person 1 (2)', 'Person 1 (3)']);
    });

    test('a written value reads back unchanged', () {
      final first = PersonMeasurementsModel.fromCustomJson({
        'Afnan': {'Chest': '30'},
        'John': {'Chest': '34'},
      });

      expect(
        PersonMeasurementsModel.fromCustomJson(
          PersonMeasurementsModel.toCustomJson(first),
        ),
        first,
      );
    });

    test('people without values are not sent from entities', () {
      expect(
        [
          _p('Afnan', {}),
          _p('John', {'chest': '34'}),
        ].toMeasurementsJson(),
        {
          'John': {'chest': '34'},
        },
      );
      expect(<PersonMeasurementsEntity>[].toMeasurementsJson(), isNull);
      expect([_p('A', {})].toMeasurementsJson(), isNull);
    });
  });

  group('vehicle values', () {
    const km = VehicleMeasurementKeys.runningKilometers;

    test('are stored beside the people, never inside one', () {
      expect(
        [
          _p('Afnan', {'chest': '30', km: '5'}),
          _p('John', {'chest': '34'}),
        ].toMeasurementsJson(),
        {
          'Afnan': {'chest': '30'},
          'John': {'chest': '34'},
          km: '5',
        },
      );
    });

    test('a vehicle line has no person at all', () {
      expect(
        [
          _p('', {km: '1000 Km'}),
        ].toMeasurementsJson(),
        {km: '1000 Km'},
      );
    });

    test('a flat legacy vehicle payload reads as one unnamed person', () {
      final parsed = PersonMeasurementsModel.fromCustomJson({km: '1000 Km'});

      expect(parsed.single.name, isEmpty);
      expect(parsed.single.measurements.single.key, km);
      expect(parsed.single.measurements.single.value, '1000 Km');
    });

    test('read attaches the value to the first person and round-trips', () {
      final blob = {
        'Afnan': {'chest': 30},
        'John': {'chest': 34},
        km: '5',
      };
      final parsed = PersonMeasurementsModel.fromCustomJson(blob);

      expect(parsed.map((p) => p.name), ['Afnan', 'John']);
      expect(parsed.first.measurements.map((m) => m.key), ['chest', km]);
      expect(parsed.last.measurements.map((m) => m.key), ['chest']);
      expect(PersonMeasurementsModel.toCustomJson(parsed), {
        'Afnan': {'chest': '30'},
        'John': {'chest': '34'},
        km: '5',
      });
    });

    test(
      'legacy flat shape with a stored value keeps it with the measurements',
      () {
        final parsed = PersonMeasurementsModel.fromCustomJson({
          'chest': 30,
          km: '5',
        });

        expect(parsed.single.measurements.map((m) => m.key), ['chest', km]);
      },
    );

    test('a given running kilometers value is authoritative', () {
      final people = [
        _p('', {'chest': '30', km: 'old'}),
      ];

      expect(people.toMeasurementsJson(runningKilometers: 'new'), {
        'Person 1': {'chest': '30'},
        km: 'new',
      });
      // Empty: the stored value is dropped.
      expect(people.toMeasurementsJson(runningKilometers: ''), {
        'Person 1': {'chest': '30'},
      });
      // Absent: the stored value is kept.
      expect(people.toMeasurementsJson(), {
        'Person 1': {'chest': '30'},
        km: 'old',
      });
      // No people at all.
      expect(
        const <PersonMeasurementsEntity>[].toMeasurementsJson(
          runningKilometers: '20 Km',
        ),
        {km: '20 Km'},
      );
    });

    test('the display name of the key does not matter', () {
      expect(
        [
          _p('', {'Running Kilometers': '9'}),
        ].toMeasurementsJson(),
        isNotNull,
      );
      expect(VehicleMeasurementKeys.isVehicleKey('Running Kilometers'), isTrue);
      expect(VehicleMeasurementKeys.isVehicleKey('chest'), isFalse);
      expect(
        VehicleMeasurementKeys.isRunningKilometers('Running Kilometers'),
        isTrue,
      );
      expect(
        VehicleMeasurementKeys.isRunningKilometers('running_kilometers'),
        isTrue,
      );
      expect(VehicleMeasurementKeys.isRunningKilometers('km'), isFalse);
    });
  });

  group('MeasurementValueModel', () {
    test('round-trips through the entity', () {
      const entity = MeasurementValueEntity(
        name: 'Chest',
        key: 'chest',
        value: '1',
      );
      expect(entity.toModel().toEntity(), entity);
    });
  });

  group('naming', () {
    test('people are named by position', () {
      expect(MeasurementConstants.personNameAt(0), 'Person 1');
      expect(MeasurementConstants.personNameAt(4), 'Person 5');
    });
  });
}
