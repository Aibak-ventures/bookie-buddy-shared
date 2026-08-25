// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_guests_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomGuestsEntity {

 int get adults; int get children;
/// Create a copy of RoomGuestsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomGuestsEntityCopyWith<RoomGuestsEntity> get copyWith => _$RoomGuestsEntityCopyWithImpl<RoomGuestsEntity>(this as RoomGuestsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomGuestsEntity&&(identical(other.adults, adults) || other.adults == adults)&&(identical(other.children, children) || other.children == children));
}


@override
int get hashCode => Object.hash(runtimeType,adults,children);

@override
String toString() {
  return 'RoomGuestsEntity(adults: $adults, children: $children)';
}


}

/// @nodoc
abstract mixin class $RoomGuestsEntityCopyWith<$Res>  {
  factory $RoomGuestsEntityCopyWith(RoomGuestsEntity value, $Res Function(RoomGuestsEntity) _then) = _$RoomGuestsEntityCopyWithImpl;
@useResult
$Res call({
 int adults, int children
});




}
/// @nodoc
class _$RoomGuestsEntityCopyWithImpl<$Res>
    implements $RoomGuestsEntityCopyWith<$Res> {
  _$RoomGuestsEntityCopyWithImpl(this._self, this._then);

  final RoomGuestsEntity _self;
  final $Res Function(RoomGuestsEntity) _then;

/// Create a copy of RoomGuestsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adults = null,Object? children = null,}) {
  return _then(_self.copyWith(
adults: null == adults ? _self.adults : adults // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomGuestsEntity].
extension RoomGuestsEntityPatterns on RoomGuestsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomGuestsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomGuestsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomGuestsEntity value)  $default,){
final _that = this;
switch (_that) {
case _RoomGuestsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomGuestsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RoomGuestsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int adults,  int children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomGuestsEntity() when $default != null:
return $default(_that.adults,_that.children);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int adults,  int children)  $default,) {final _that = this;
switch (_that) {
case _RoomGuestsEntity():
return $default(_that.adults,_that.children);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int adults,  int children)?  $default,) {final _that = this;
switch (_that) {
case _RoomGuestsEntity() when $default != null:
return $default(_that.adults,_that.children);case _:
  return null;

}
}

}

/// @nodoc


class _RoomGuestsEntity implements RoomGuestsEntity {
  const _RoomGuestsEntity({this.adults = 0, this.children = 0});
  

@override@JsonKey() final  int adults;
@override@JsonKey() final  int children;

/// Create a copy of RoomGuestsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomGuestsEntityCopyWith<_RoomGuestsEntity> get copyWith => __$RoomGuestsEntityCopyWithImpl<_RoomGuestsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomGuestsEntity&&(identical(other.adults, adults) || other.adults == adults)&&(identical(other.children, children) || other.children == children));
}


@override
int get hashCode => Object.hash(runtimeType,adults,children);

@override
String toString() {
  return 'RoomGuestsEntity(adults: $adults, children: $children)';
}


}

/// @nodoc
abstract mixin class _$RoomGuestsEntityCopyWith<$Res> implements $RoomGuestsEntityCopyWith<$Res> {
  factory _$RoomGuestsEntityCopyWith(_RoomGuestsEntity value, $Res Function(_RoomGuestsEntity) _then) = __$RoomGuestsEntityCopyWithImpl;
@override @useResult
$Res call({
 int adults, int children
});




}
/// @nodoc
class __$RoomGuestsEntityCopyWithImpl<$Res>
    implements _$RoomGuestsEntityCopyWith<$Res> {
  __$RoomGuestsEntityCopyWithImpl(this._self, this._then);

  final _RoomGuestsEntity _self;
  final $Res Function(_RoomGuestsEntity) _then;

/// Create a copy of RoomGuestsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adults = null,Object? children = null,}) {
  return _then(_RoomGuestsEntity(
adults: null == adults ? _self.adults : adults // ignore: cast_nullable_to_non_nullable
as int,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
