import 'package:bookie_buddy_shared/core/features/booking/data/models/person_measurements_model/person_measurements_model.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/person_measurements_entity/person_measurements_entity.dart';
import 'package:test/test.dart';

/// Payloads already stored by older builds must keep loading, keep their
/// values (including running kilometers) and survive an edit-and-save.
void main() {
  List<PersonMeasurementsEntity> read(dynamic blob) =>
      PersonMeasurementsModel.fromCustomJson(
        blob,
      ).map((p) => p.toEntity()).toList();

  Map<String, String> valuesOf(List<PersonMeasurementsEntity> people) => {
    for (final m in people.allValues) m.key: m.value,
  };

  final legacy = <String, dynamic>{
    // Web before per-person measurements: backend keys, km beside them.
    'web dress': {'chest': '30', 'shoulder_width': '28'},
    'web vehicle': {'running_kilometers': '55'},
    'web dress with km on the line': {
      'chest': '30',
      'running_kilometers': '55',
    },
    // Mobile before per-person measurements: display names as keys.
    'mobile dress': {'Chest': '30', 'Shoulder Width': '28'},
    'mobile vehicle': {'Running Kilometers': '20500 Km'},
    // Per-person shape written by a build with this feature.
    'keyed': {
      'Afnan': {'chest': '30'},
      'John': {'chest': '34'},
      'running_kilometers': '5',
    },
  };

  for (final e in legacy.entries) {
    group(e.key, () {
      test('loads with every value', () {
        final values = valuesOf(read(e.value));
        final expected = <String, String>{};
        void collect(Map m) {
          m.forEach((k, v) {
            if (v is Map) {
              collect(v);
            } else {
              expected[k.toString().toLowerCase().replaceAll(' ', '_')] = v
                  .toString();
            }
          });
        }

        collect(e.value as Map);
        expect(values, expected);
      });

      test('keeps its values through load, save and load again', () {
        final first = read(e.value);
        final second = read(first.toMeasurementsJson());

        // The only thing a save may change is the name of an unnamed person
        // ("" becomes "Person 1"); from then on it is stable.
        expect(valuesOf(second), valuesOf(first));
        expect(second.length, first.length);
        final third = read(second.toMeasurementsJson());
        expect(third.fingerprint, second.fingerprint);
      });

      test('saving with the stored odometer value keeps it', () {
        final first = read(e.value);
        final km = valuesOf(first)['running_kilometers'];
        final saved = first.toMeasurementsJson(runningKilometers: km ?? '');

        expect(valuesOf(read(saved)), valuesOf(first));
      });
    });
  }

  test('the odometer value is shown under its own name', () {
    final km = read({'Running Kilometers': '20500 Km'}).allValues.single;

    expect(km.key, 'running_kilometers');
    expect(km.value, '20500 Km');
    expect(km.name, 'Running Kilometers');
  });

  test('a vehicle is stored exactly as the old flat shape plus the key', () {
    expect(read({'Running Kilometers': '20500 Km'}).toMeasurementsJson(), {
      'running_kilometers': '20500 Km',
    });
  });

  test('an old dress with a form-built value keeps its form key', () {
    final people = read({'Shoulder Width': '28'});

    expect(people.allValues.single.key, 'shoulder_width');
    expect(people.toMeasurementsJson(), {
      'Person 1': {'shoulder_width': '28'},
    });
  });

  test('values with odd types are read as text', () {
    expect(
      valuesOf(read({'chest': 30, 'waist': 28.5, 'running_kilometers': 10})),
      {'chest': '30', 'waist': '28.5', 'running_kilometers': '10'},
    );
  });
}
