import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/measurement_categories.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/standard_measurement_fields.dart';
import 'package:test/test.dart';

void main() {
  group('MeasurementCategories', () {
    test('category keys are unique and no category repeats a field', () {
      final keys = MeasurementCategories.all.map((c) => c.key).toList();
      expect(keys.toSet(), hasLength(keys.length));
      for (final c in MeasurementCategories.all) {
        final fieldKeys = c.fields.map((f) => f.key).toList();
        expect(fieldKeys.toSet(), hasLength(fieldKeys.length), reason: c.name);
      }
    });

    test('general is the standard field list', () {
      expect(
        MeasurementCategories.general.fields,
        same(StandardMeasurementFields.all),
      );
    });

    group('infer', () {
      MeasurementCategory infer(List<String> keys) =>
          MeasurementCategories.infer(keys);

      test('empty, custom-only or general-only keys stay general', () {
        expect(infer([]), MeasurementCategories.general);
        expect(infer(['my_custom']), MeasurementCategories.general);
        expect(
          infer(['chest', 'sleeve_length']),
          MeasurementCategories.general,
        );
        expect(infer(['top_round']), MeasurementCategories.general);
      });

      test('picks the garment category holding every known key', () {
        expect(infer(['pant_length', 'kage']), MeasurementCategories.pant);
        expect(
          infer(['suit_length', 'chest']),
          MeasurementCategories.suitIndoWestern,
        );
        expect(
          infer(['shirt_length', 'seat', 'my_custom']),
          MeasurementCategories.shirt,
        );
      });

      test('keys spanning categories fall back to general', () {
        expect(infer(['kage', 'shirt_length']), MeasurementCategories.general);
      });
    });
  });
}
