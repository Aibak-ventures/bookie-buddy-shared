// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_other_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingOtherDetailsEntity {

 String? get locationStart; String? get locationFrom; String? get locationTo; int? get totalProductCount; RoomGuestsEntity? get roomGuests; List<RoomMealType>? get roomMeals;// Web-only: vehicle odometer reading. No mobile equivalent. Named
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
 String? get runningKilometers;
/// Create a copy of BookingOtherDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingOtherDetailsEntityCopyWith<BookingOtherDetailsEntity> get copyWith => _$BookingOtherDetailsEntityCopyWithImpl<BookingOtherDetailsEntity>(this as BookingOtherDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingOtherDetailsEntity&&(identical(other.locationStart, locationStart) || other.locationStart == locationStart)&&(identical(other.locationFrom, locationFrom) || other.locationFrom == locationFrom)&&(identical(other.locationTo, locationTo) || other.locationTo == locationTo)&&(identical(other.totalProductCount, totalProductCount) || other.totalProductCount == totalProductCount)&&(identical(other.roomGuests, roomGuests) || other.roomGuests == roomGuests)&&const DeepCollectionEquality().equals(other.roomMeals, roomMeals)&&(identical(other.runningKilometers, runningKilometers) || other.runningKilometers == runningKilometers));
}


@override
int get hashCode => Object.hash(runtimeType,locationStart,locationFrom,locationTo,totalProductCount,roomGuests,const DeepCollectionEquality().hash(roomMeals),runningKilometers);

@override
String toString() {
  return 'BookingOtherDetailsEntity(locationStart: $locationStart, locationFrom: $locationFrom, locationTo: $locationTo, totalProductCount: $totalProductCount, roomGuests: $roomGuests, roomMeals: $roomMeals, runningKilometers: $runningKilometers)';
}


}

/// @nodoc
abstract mixin class $BookingOtherDetailsEntityCopyWith<$Res>  {
  factory $BookingOtherDetailsEntityCopyWith(BookingOtherDetailsEntity value, $Res Function(BookingOtherDetailsEntity) _then) = _$BookingOtherDetailsEntityCopyWithImpl;
@useResult
$Res call({
 String? locationStart, String? locationFrom, String? locationTo, int? totalProductCount, RoomGuestsEntity? roomGuests, List<RoomMealType>? roomMeals, String? runningKilometers
});


$RoomGuestsEntityCopyWith<$Res>? get roomGuests;

}
/// @nodoc
class _$BookingOtherDetailsEntityCopyWithImpl<$Res>
    implements $BookingOtherDetailsEntityCopyWith<$Res> {
  _$BookingOtherDetailsEntityCopyWithImpl(this._self, this._then);

  final BookingOtherDetailsEntity _self;
  final $Res Function(BookingOtherDetailsEntity) _then;

/// Create a copy of BookingOtherDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationStart = freezed,Object? locationFrom = freezed,Object? locationTo = freezed,Object? totalProductCount = freezed,Object? roomGuests = freezed,Object? roomMeals = freezed,Object? runningKilometers = freezed,}) {
  return _then(_self.copyWith(
locationStart: freezed == locationStart ? _self.locationStart : locationStart // ignore: cast_nullable_to_non_nullable
as String?,locationFrom: freezed == locationFrom ? _self.locationFrom : locationFrom // ignore: cast_nullable_to_non_nullable
as String?,locationTo: freezed == locationTo ? _self.locationTo : locationTo // ignore: cast_nullable_to_non_nullable
as String?,totalProductCount: freezed == totalProductCount ? _self.totalProductCount : totalProductCount // ignore: cast_nullable_to_non_nullable
as int?,roomGuests: freezed == roomGuests ? _self.roomGuests : roomGuests // ignore: cast_nullable_to_non_nullable
as RoomGuestsEntity?,roomMeals: freezed == roomMeals ? _self.roomMeals : roomMeals // ignore: cast_nullable_to_non_nullable
as List<RoomMealType>?,runningKilometers: freezed == runningKilometers ? _self.runningKilometers : runningKilometers // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BookingOtherDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomGuestsEntityCopyWith<$Res>? get roomGuests {
    if (_self.roomGuests == null) {
    return null;
  }

  return $RoomGuestsEntityCopyWith<$Res>(_self.roomGuests!, (value) {
    return _then(_self.copyWith(roomGuests: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingOtherDetailsEntity].
extension BookingOtherDetailsEntityPatterns on BookingOtherDetailsEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingOtherDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingOtherDetailsEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingOtherDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingOtherDetailsEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingOtherDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingOtherDetailsEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? locationStart,  String? locationFrom,  String? locationTo,  int? totalProductCount,  RoomGuestsEntity? roomGuests,  List<RoomMealType>? roomMeals,  String? runningKilometers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingOtherDetailsEntity() when $default != null:
return $default(_that.locationStart,_that.locationFrom,_that.locationTo,_that.totalProductCount,_that.roomGuests,_that.roomMeals,_that.runningKilometers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? locationStart,  String? locationFrom,  String? locationTo,  int? totalProductCount,  RoomGuestsEntity? roomGuests,  List<RoomMealType>? roomMeals,  String? runningKilometers)  $default,) {final _that = this;
switch (_that) {
case _BookingOtherDetailsEntity():
return $default(_that.locationStart,_that.locationFrom,_that.locationTo,_that.totalProductCount,_that.roomGuests,_that.roomMeals,_that.runningKilometers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? locationStart,  String? locationFrom,  String? locationTo,  int? totalProductCount,  RoomGuestsEntity? roomGuests,  List<RoomMealType>? roomMeals,  String? runningKilometers)?  $default,) {final _that = this;
switch (_that) {
case _BookingOtherDetailsEntity() when $default != null:
return $default(_that.locationStart,_that.locationFrom,_that.locationTo,_that.totalProductCount,_that.roomGuests,_that.roomMeals,_that.runningKilometers);case _:
  return null;

}
}

}

/// @nodoc


class _BookingOtherDetailsEntity implements BookingOtherDetailsEntity {
  const _BookingOtherDetailsEntity({this.locationStart, this.locationFrom, this.locationTo, this.totalProductCount, this.roomGuests, final  List<RoomMealType>? roomMeals, this.runningKilometers}): _roomMeals = roomMeals;
  

@override final  String? locationStart;
@override final  String? locationFrom;
@override final  String? locationTo;
@override final  int? totalProductCount;
@override final  RoomGuestsEntity? roomGuests;
 final  List<RoomMealType>? _roomMeals;
@override List<RoomMealType>? get roomMeals {
  final value = _roomMeals;
  if (value == null) return null;
  if (_roomMeals is EqualUnmodifiableListView) return _roomMeals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

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
@override final  String? runningKilometers;

/// Create a copy of BookingOtherDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingOtherDetailsEntityCopyWith<_BookingOtherDetailsEntity> get copyWith => __$BookingOtherDetailsEntityCopyWithImpl<_BookingOtherDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingOtherDetailsEntity&&(identical(other.locationStart, locationStart) || other.locationStart == locationStart)&&(identical(other.locationFrom, locationFrom) || other.locationFrom == locationFrom)&&(identical(other.locationTo, locationTo) || other.locationTo == locationTo)&&(identical(other.totalProductCount, totalProductCount) || other.totalProductCount == totalProductCount)&&(identical(other.roomGuests, roomGuests) || other.roomGuests == roomGuests)&&const DeepCollectionEquality().equals(other._roomMeals, _roomMeals)&&(identical(other.runningKilometers, runningKilometers) || other.runningKilometers == runningKilometers));
}


@override
int get hashCode => Object.hash(runtimeType,locationStart,locationFrom,locationTo,totalProductCount,roomGuests,const DeepCollectionEquality().hash(_roomMeals),runningKilometers);

@override
String toString() {
  return 'BookingOtherDetailsEntity(locationStart: $locationStart, locationFrom: $locationFrom, locationTo: $locationTo, totalProductCount: $totalProductCount, roomGuests: $roomGuests, roomMeals: $roomMeals, runningKilometers: $runningKilometers)';
}


}

/// @nodoc
abstract mixin class _$BookingOtherDetailsEntityCopyWith<$Res> implements $BookingOtherDetailsEntityCopyWith<$Res> {
  factory _$BookingOtherDetailsEntityCopyWith(_BookingOtherDetailsEntity value, $Res Function(_BookingOtherDetailsEntity) _then) = __$BookingOtherDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 String? locationStart, String? locationFrom, String? locationTo, int? totalProductCount, RoomGuestsEntity? roomGuests, List<RoomMealType>? roomMeals, String? runningKilometers
});


@override $RoomGuestsEntityCopyWith<$Res>? get roomGuests;

}
/// @nodoc
class __$BookingOtherDetailsEntityCopyWithImpl<$Res>
    implements _$BookingOtherDetailsEntityCopyWith<$Res> {
  __$BookingOtherDetailsEntityCopyWithImpl(this._self, this._then);

  final _BookingOtherDetailsEntity _self;
  final $Res Function(_BookingOtherDetailsEntity) _then;

/// Create a copy of BookingOtherDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationStart = freezed,Object? locationFrom = freezed,Object? locationTo = freezed,Object? totalProductCount = freezed,Object? roomGuests = freezed,Object? roomMeals = freezed,Object? runningKilometers = freezed,}) {
  return _then(_BookingOtherDetailsEntity(
locationStart: freezed == locationStart ? _self.locationStart : locationStart // ignore: cast_nullable_to_non_nullable
as String?,locationFrom: freezed == locationFrom ? _self.locationFrom : locationFrom // ignore: cast_nullable_to_non_nullable
as String?,locationTo: freezed == locationTo ? _self.locationTo : locationTo // ignore: cast_nullable_to_non_nullable
as String?,totalProductCount: freezed == totalProductCount ? _self.totalProductCount : totalProductCount // ignore: cast_nullable_to_non_nullable
as int?,roomGuests: freezed == roomGuests ? _self.roomGuests : roomGuests // ignore: cast_nullable_to_non_nullable
as RoomGuestsEntity?,roomMeals: freezed == roomMeals ? _self._roomMeals : roomMeals // ignore: cast_nullable_to_non_nullable
as List<RoomMealType>?,runningKilometers: freezed == runningKilometers ? _self.runningKilometers : runningKilometers // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BookingOtherDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomGuestsEntityCopyWith<$Res>? get roomGuests {
    if (_self.roomGuests == null) {
    return null;
  }

  return $RoomGuestsEntityCopyWith<$Res>(_self.roomGuests!, (value) {
    return _then(_self.copyWith(roomGuests: value));
  });
}
}

// dart format on
