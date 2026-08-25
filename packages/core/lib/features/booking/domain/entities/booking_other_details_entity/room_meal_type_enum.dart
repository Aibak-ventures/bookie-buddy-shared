import 'package:json_annotation/json_annotation.dart';

enum RoomMealType {
  @JsonValue('breakfast')
  breakfast,

  @JsonValue('dinner')
  dinner;

  String get label => switch (this) {
    breakfast => 'Breakfast',
    dinner => 'Dinner',
  };
}
