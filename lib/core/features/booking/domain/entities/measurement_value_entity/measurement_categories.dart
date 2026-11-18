import 'package:bookie_buddy_shared/core/features/booking/domain/entities/measurement_value_entity/standard_measurement_fields.dart';

class MeasurementCategory {
  const MeasurementCategory({
    required this.key,
    required this.name,
    required this.fields,
  });

  final String key;
  final String name;
  final List<MeasurementFieldDefinition> fields;

  bool get isGeneral => key == MeasurementCategories.general.key;

  bool contains(String fieldKey) => fields.any((f) => f.key == fieldKey);
}

class MeasurementCategories {
  const MeasurementCategories._();

  static const general = MeasurementCategory(
    key: 'general',
    name: 'General',
    fields: StandardMeasurementFields.all,
  );

  static const suitIndoWestern = MeasurementCategory(
    key: 'suit_indo_western',
    name: 'Suit & Indo-Western',
    fields: [
      StandardMeasurementFields.suitLength,
      StandardMeasurementFields.indoWesternLength,
      StandardMeasurementFields.shoulder,
      StandardMeasurementFields.chest,
      StandardMeasurementFields.stomach,
      StandardMeasurementFields.sleeveLength,
      StandardMeasurementFields.seat,
      StandardMeasurementFields.biceps,
      StandardMeasurementFields.collar,
    ],
  );

  static const pant = MeasurementCategory(
    key: 'pant',
    name: 'Pant',
    fields: [
      StandardMeasurementFields.pantLength,
      StandardMeasurementFields.waist,
      StandardMeasurementFields.seat,
      StandardMeasurementFields.thigh,
      StandardMeasurementFields.kage,
      StandardMeasurementFields.bottom,
      StandardMeasurementFields.u,
    ],
  );

  static const shirt = MeasurementCategory(
    key: 'shirt',
    name: 'Shirt',
    fields: [
      StandardMeasurementFields.shirtLength,
      StandardMeasurementFields.shoulder,
      StandardMeasurementFields.sleeveLength,
      StandardMeasurementFields.collar,
      StandardMeasurementFields.chest,
      StandardMeasurementFields.stomach,
      StandardMeasurementFields.seat,
      StandardMeasurementFields.biceps,
    ],
  );

  static const List<MeasurementCategory> all = [
    general,
    shirt,
    pant,
    suitIndoWestern,
  ];

  static final Set<String> allFieldKeys = {
    for (final c in all)
      for (final f in c.fields) f.key,
  };

  static MeasurementCategory infer(Iterable<String> savedKeys) {
    final known = savedKeys.where(allFieldKeys.contains).toSet();
    if (known.every(general.contains)) return general;
    for (final c in all) {
      if (!c.isGeneral && known.every(c.contains)) return c;
    }
    return general;
  }
}
