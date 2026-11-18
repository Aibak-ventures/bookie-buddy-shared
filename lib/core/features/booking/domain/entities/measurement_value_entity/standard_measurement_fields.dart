import 'package:bookie_buddy_shared/core/core/constants/enums/gender_type_enums.dart';

class MeasurementFieldDefinition {
  const MeasurementFieldDefinition({
    required this.name,
    required this.key,
    required this.description,
    required this.gender,
  });

  final String name;

  final String key;
  final String description;
  final GenderType gender;
}

class StandardMeasurementFields {
  const StandardMeasurementFields._();

  static const topRound = MeasurementFieldDefinition(
    name: 'Top Round',
    key: 'top_round',
    description: 'Round measurement around top',
    gender: GenderType.female,
  );
  static const topLength = MeasurementFieldDefinition(
    name: 'Top Length',
    key: 'top_length',
    description: 'Vertical length of the top',
    gender: GenderType.female,
  );
  static const chest = MeasurementFieldDefinition(
    name: 'Chest',
    key: 'chest',
    description: 'Fullest part of the chest',
    gender: GenderType.unisex,
  );
  static const shape = MeasurementFieldDefinition(
    name: 'Shape',
    key: 'shape',
    description: 'Garment shape (fitted/flared/etc.)',
    gender: GenderType.female,
  );
  static const sleeveLength = MeasurementFieldDefinition(
    name: 'Sleeve Length',
    key: 'sleeve_length',
    description: 'Shoulder to desired sleeve end',
    gender: GenderType.unisex,
  );
  static const sleeveArm = MeasurementFieldDefinition(
    name: 'Sleeve Arm',
    key: 'sleeve_arm',
    description: 'Around the upper arm',
    gender: GenderType.female,
  );
  static const sleeveWidth = MeasurementFieldDefinition(
    name: 'Sleeve Width',
    key: 'sleeve_width',
    description: 'Width at the end of sleeve',
    gender: GenderType.female,
  );
  static const regal = MeasurementFieldDefinition(
    name: 'Regal',
    key: 'regal',
    description: 'Shoulder to bust line or relevant regal line',
    gender: GenderType.female,
  );
  static const frontNeck = MeasurementFieldDefinition(
    name: 'Front Neck',
    key: 'front_neck',
    description: 'Depth of the front neckline',
    gender: GenderType.female,
  );
  static const backNeck = MeasurementFieldDefinition(
    name: 'Back Neck',
    key: 'back_neck',
    description: 'Depth of the back neckline',
    gender: GenderType.female,
  );
  static const elbow = MeasurementFieldDefinition(
    name: 'Elbow',
    key: 'elbow',
    description: 'Circumference around the elbow',
    gender: GenderType.female,
  );
  static const pad = MeasurementFieldDefinition(
    name: 'Pad',
    key: 'pad',
    description: '',
    gender: GenderType.female,
  );
  static const shoulderStrap = MeasurementFieldDefinition(
    name: 'Shoulder Strap',
    key: 'shoulder_strap',
    description: '',
    gender: GenderType.female,
  );
  static const collar = MeasurementFieldDefinition(
    name: 'Collar',
    key: 'neck_circumference',
    description: 'Around the base of the neck',
    gender: GenderType.male,
  );
  static const shirtLength = MeasurementFieldDefinition(
    name: 'Shirt Length',
    key: 'shirt_length',
    description: 'Shoulder to desired bottom length',
    gender: GenderType.male,
  );
  static const armhole = MeasurementFieldDefinition(
    name: 'Armhole',
    key: 'armhole',
    description: 'Around the arm socket',
    gender: GenderType.male,
  );
  static const biceps = MeasurementFieldDefinition(
    name: 'Biceps',
    key: 'upper_arm',
    description: 'Fullest part of the upper arm',
    gender: GenderType.male,
  );
  static const wrist = MeasurementFieldDefinition(
    name: 'Wrist',
    key: 'wrist',
    description: 'Circumference of the wrist',
    gender: GenderType.male,
  );
  static const pantLength = MeasurementFieldDefinition(
    name: 'Pant Length',
    key: 'pant_length',
    description: 'Waist to ankle',
    gender: GenderType.male,
  );
  static const inseam = MeasurementFieldDefinition(
    name: 'Inseam',
    key: 'inseam',
    description: 'Crotch to ankle inside the leg',
    gender: GenderType.male,
  );
  static const thigh = MeasurementFieldDefinition(
    name: 'Thigh',
    key: 'thigh',
    description: 'Fullest part of the upper leg',
    gender: GenderType.male,
  );
  static const waist = MeasurementFieldDefinition(
    name: 'Waist',
    key: 'waist',
    description: 'Natural waistline',
    gender: GenderType.unisex,
  );
  static const shoulder = MeasurementFieldDefinition(
    name: 'Shoulder',
    key: 'shoulder_width',
    description: 'Tip to tip across the back',
    gender: GenderType.unisex,
  );
  static const height = MeasurementFieldDefinition(
    name: 'Height',
    key: 'height',
    description: 'For total garment length',
    gender: GenderType.unisex,
  );
  static const suitLength = MeasurementFieldDefinition(
    name: 'Suit Length',
    key: 'suit_length',
    description: 'Shoulder to desired suit bottom',
    gender: GenderType.unisex,
  );
  static const indoWesternLength = MeasurementFieldDefinition(
    name: 'Indo-western Length',
    key: 'indo_western_length',
    description: 'Shoulder to desired indo-western bottom',
    gender: GenderType.unisex,
  );
  static const stomach = MeasurementFieldDefinition(
    name: 'Stomach',
    key: 'stomach',
    description: 'Around the stomach',
    gender: GenderType.unisex,
  );
  static const seat = MeasurementFieldDefinition(
    name: 'Seat',
    key: 'seat',
    description: 'Fullest part of the hips',
    gender: GenderType.unisex,
  );
  static const kage = MeasurementFieldDefinition(
    name: 'Kage',
    key: 'kage',
    description: 'Around the knee',
    gender: GenderType.unisex,
  );
  static const bottom = MeasurementFieldDefinition(
    name: 'Bottom',
    key: 'bottom',
    description: 'Width at the pant opening',
    gender: GenderType.unisex,
  );
  static const u = MeasurementFieldDefinition(
    name: 'U',
    key: 'u',
    description: 'Front waist through crotch to back waist',
    gender: GenderType.unisex,
  );

  static const List<MeasurementFieldDefinition> all = [
    topRound,
    topLength,
    chest,
    shape,
    sleeveLength,
    sleeveArm,
    sleeveWidth,
    regal,
    frontNeck,
    backNeck,
    elbow,
    pad,
    shoulderStrap,
    collar,
    shirtLength,
    armhole,
    biceps,
    wrist,
    pantLength,
    inseam,
    thigh,
    waist,
    shoulder,
    height,
  ];
}
