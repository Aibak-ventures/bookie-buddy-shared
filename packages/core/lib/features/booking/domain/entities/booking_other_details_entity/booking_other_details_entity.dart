import 'package:bookie_buddy_core/features/booking/domain/entities/booking_other_details_entity/room_guests_entity.dart';
import 'package:bookie_buddy_core/features/booking/domain/entities/booking_other_details_entity/room_meal_type_enum.dart';
import 'package:bookie_buddy_core/utils/extensions/string_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_other_details_entity.freezed.dart';

@freezed
abstract class BookingOtherDetailsEntity with _$BookingOtherDetailsEntity {
  const factory BookingOtherDetailsEntity({
    String? locationStart,
    String? locationFrom,
    String? locationTo,
    int? totalProductCount,
    RoomGuestsEntity? roomGuests,
    List<RoomMealType>? roomMeals,
  }) = _BookingOtherDetailsEntity;
}

extension BookingOtherDetailsEntityX on BookingOtherDetailsEntity {
  bool get isLocationDetailsEmpty =>
      locationStart.isNullOrEmpty &&
      locationFrom.isNullOrEmpty &&
      locationTo.isNullOrEmpty;

  bool get isLocationDetailsNotEmpty => !isLocationDetailsEmpty;
}
