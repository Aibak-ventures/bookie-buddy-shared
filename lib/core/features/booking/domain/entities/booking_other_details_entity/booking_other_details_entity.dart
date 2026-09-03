import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_other_details_entity/room_guests_entity.dart';
import 'package:bookie_buddy_shared/core/features/booking/domain/entities/booking_other_details_entity/room_meal_type_enum.dart';
import 'package:bookie_buddy_shared/core/utils/extensions/string_extensions.dart';
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
    // Web-only: vehicle odometer reading. No mobile equivalent. Named
    // `runningKilometers` here — web's own model/JSON key is just `end`, an
    // unclear legacy name kept as-is in the data layer since renaming a
    // JSON key is a bigger, separate change.
    //
    // Read/display only — this value is never submitted back through this
    // entity. Its one consumer prefills an edit-screen text field; the
    // value the user actually types is submitted per-product instead
    // (ProductSelectedEntity.runningKilometers on web), not via
    // BookingOtherDetails at all, on either the new-booking or edit path.
    // Don't add a write-side counterpart for this field — there's no write
    // path here to model.
    String? runningKilometers,
  }) = _BookingOtherDetailsEntity;
}

extension BookingOtherDetailsEntityX on BookingOtherDetailsEntity {
  bool get isLocationDetailsEmpty =>
      locationStart.isNullOrEmpty &&
      locationFrom.isNullOrEmpty &&
      locationTo.isNullOrEmpty;

  bool get isLocationDetailsNotEmpty => !isLocationDetailsEmpty;
}
