import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/standard_measurement_fields.dart';
import 'package:test/test.dart';

void main() {
  test('keys are unique, snake_case and match their constants', () {
    final keys = StandardMeasurementFields.all.map((f) => f.key).toList();

    expect(keys.toSet(), hasLength(keys.length));
    for (final k in keys) {
      expect(RegExp(r'^[a-z]+(_[a-z]+)*$').hasMatch(k), isTrue, reason: k);
    }
    expect(StandardMeasurementFields.chest, 'chest');
    expect(StandardMeasurementFields.shoulderWidth, 'shoulder_width');
    expect(keys, contains(StandardMeasurementFields.shirtLength));
  });
}
