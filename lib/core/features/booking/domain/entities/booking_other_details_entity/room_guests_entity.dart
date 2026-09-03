import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_guests_entity.freezed.dart';

@freezed
abstract class RoomGuestsEntity with _$RoomGuestsEntity {
  const factory RoomGuestsEntity({
    @Default(0) int adults,
    @Default(0) int children,
  }) = _RoomGuestsEntity;
}
