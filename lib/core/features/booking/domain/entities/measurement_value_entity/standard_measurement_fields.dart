import 'package:bookie_buddy_shared/core/core/constants/enums/gender_type_enums.dart';

/// A measurement the apps offer by default on the measurement form.
class MeasurementFieldDefinition {
  const MeasurementFieldDefinition({
    required this.name,
    required this.key,
    required this.description,
    required this.gender,
  });

  /// Display name, e.g. "Top Round".
  final String name;

  /// Backend key the value is stored under, e.g. "top_round".
  final String key;
  final String description;
  final GenderType gender;
}

/// The standard measurement fields and the keys their values are stored
/// under in the `measurements` blob.
///
/// The backend stores the blob as free-form JSON, so mobile and web must use
/// the same keys; define or change a field here, never in an app.
class StandardMeasurementFields {
  const StandardMeasurementFields._();

  static const String topRound = 'top_round';
  static const String topLength = 'top_length';
  static const String chest = 'chest';
  static const String shape = 'shape';
  static const String sleeveLength = 'sleeve_length';
  static const String sleeveArm = 'sleeve_arm';
  static const String sleeveWidth = 'sleeve_width';
  static const String regal = 'regal';
  static const String frontNeck = 'front_neck';
  static const String backNeck = 'back_neck';
  static const String elbow = 'elbow';
  static const String pad = 'pad';
  static const String shoulderStrap = 'shoulder_strap';
  static const String neckCircumference = 'neck_circumference';
  static const String shirtLength = 'shirt_length';
  static const String armhole = 'armhole';
  static const String upperArm = 'upper_arm';
  static const String wrist = 'wrist';
  static const String pantLength = 'pant_length';
  static const String inseam = 'inseam';
  static const String thigh = 'thigh';
  static const String waist = 'waist';
  static const String shoulderWidth = 'shoulder_width';
  static const String height = 'height';

  /// Every standard field, in the order the form shows them.
  static const List<MeasurementFieldDefinition> all = [
    MeasurementFieldDefinition(
      name: 'Top Round',
      key: topRound,
      description: 'Round measurement around top',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Top Length',
      key: topLength,
      description: 'Vertical length of the top',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Chest',
      key: chest,
      description: 'Fullest part of the chest',
      gender: GenderType.unisex,
    ),
    MeasurementFieldDefinition(
      name: 'Shape',
      key: shape,
      description: 'Garment shape (fitted/flared/etc.)',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Sleeve Length',
      key: sleeveLength,
      description: 'Shoulder to desired sleeve end',
      gender: GenderType.unisex,
    ),
    MeasurementFieldDefinition(
      name: 'Sleeve Arm',
      key: sleeveArm,
      description: 'Around the upper arm',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Sleeve Width',
      key: sleeveWidth,
      description: 'Width at the end of sleeve',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Regal',
      key: regal,
      description: 'Shoulder to bust line or relevant regal line',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Front Neck',
      key: frontNeck,
      description: 'Depth of the front neckline',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Back Neck',
      key: backNeck,
      description: 'Depth of the back neckline',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Elbow',
      key: elbow,
      description: 'Circumference around the elbow',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Pad',
      key: pad,
      description: '',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Shoulder Strap',
      key: shoulderStrap,
      description: '',
      gender: GenderType.female,
    ),
    MeasurementFieldDefinition(
      name: 'Neck Circumference',
      key: neckCircumference,
      description: 'Around the base of the neck',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Shirt/Kurta Length',
      key: shirtLength,
      description: 'Shoulder to desired bottom length',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Armhole',
      key: armhole,
      description: 'Around the arm socket',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Upper Arm',
      key: upperArm,
      description: 'Fullest part of the upper arm',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Wrist',
      key: wrist,
      description: 'Circumference of the wrist',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Pant Length',
      key: pantLength,
      description: 'Waist to ankle',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Inseam',
      key: inseam,
      description: 'Crotch to ankle inside the leg',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Thigh',
      key: thigh,
      description: 'Fullest part of the upper leg',
      gender: GenderType.male,
    ),
    MeasurementFieldDefinition(
      name: 'Waist',
      key: waist,
      description: 'Natural waistline',
      gender: GenderType.unisex,
    ),
    MeasurementFieldDefinition(
      name: 'Shoulder Width',
      key: shoulderWidth,
      description: 'Tip to tip across the back',
      gender: GenderType.unisex,
    ),
    MeasurementFieldDefinition(
      name: 'Height',
      key: height,
      description: 'For total garment length',
      gender: GenderType.unisex,
    ),
  ];
}
