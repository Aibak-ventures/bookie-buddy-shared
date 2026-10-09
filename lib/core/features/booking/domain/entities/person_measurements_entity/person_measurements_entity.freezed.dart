// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_measurements_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonMeasurementsEntity {

 String get name; List<MeasurementValueEntity> get measurements;
/// Create a copy of PersonMeasurementsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonMeasurementsEntityCopyWith<PersonMeasurementsEntity> get copyWith => _$PersonMeasurementsEntityCopyWithImpl<PersonMeasurementsEntity>(this as PersonMeasurementsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonMeasurementsEntity&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.measurements, measurements));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(measurements));

@override
String toString() {
  return 'PersonMeasurementsEntity(name: $name, measurements: $measurements)';
}


}

/// @nodoc
abstract mixin class $PersonMeasurementsEntityCopyWith<$Res>  {
  factory $PersonMeasurementsEntityCopyWith(PersonMeasurementsEntity value, $Res Function(PersonMeasurementsEntity) _then) = _$PersonMeasurementsEntityCopyWithImpl;
@useResult
$Res call({
 String name, List<MeasurementValueEntity> measurements
});




}
/// @nodoc
class _$PersonMeasurementsEntityCopyWithImpl<$Res>
    implements $PersonMeasurementsEntityCopyWith<$Res> {
  _$PersonMeasurementsEntityCopyWithImpl(this._self, this._then);

  final PersonMeasurementsEntity _self;
  final $Res Function(PersonMeasurementsEntity) _then;

/// Create a copy of PersonMeasurementsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? measurements = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measurements: null == measurements ? _self.measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<MeasurementValueEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonMeasurementsEntity].
extension PersonMeasurementsEntityPatterns on PersonMeasurementsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonMeasurementsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonMeasurementsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonMeasurementsEntity value)  $default,){
final _that = this;
switch (_that) {
case _PersonMeasurementsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonMeasurementsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PersonMeasurementsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<MeasurementValueEntity> measurements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonMeasurementsEntity() when $default != null:
return $default(_that.name,_that.measurements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<MeasurementValueEntity> measurements)  $default,) {final _that = this;
switch (_that) {
case _PersonMeasurementsEntity():
return $default(_that.name,_that.measurements);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<MeasurementValueEntity> measurements)?  $default,) {final _that = this;
switch (_that) {
case _PersonMeasurementsEntity() when $default != null:
return $default(_that.name,_that.measurements);case _:
  return null;

}
}

}

/// @nodoc


class _PersonMeasurementsEntity implements PersonMeasurementsEntity {
  const _PersonMeasurementsEntity({required this.name, final  List<MeasurementValueEntity> measurements = const []}): _measurements = measurements;
  

@override final  String name;
 final  List<MeasurementValueEntity> _measurements;
@override@JsonKey() List<MeasurementValueEntity> get measurements {
  if (_measurements is EqualUnmodifiableListView) return _measurements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_measurements);
}


/// Create a copy of PersonMeasurementsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonMeasurementsEntityCopyWith<_PersonMeasurementsEntity> get copyWith => __$PersonMeasurementsEntityCopyWithImpl<_PersonMeasurementsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonMeasurementsEntity&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._measurements, _measurements));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_measurements));

@override
String toString() {
  return 'PersonMeasurementsEntity(name: $name, measurements: $measurements)';
}


}

/// @nodoc
abstract mixin class _$PersonMeasurementsEntityCopyWith<$Res> implements $PersonMeasurementsEntityCopyWith<$Res> {
  factory _$PersonMeasurementsEntityCopyWith(_PersonMeasurementsEntity value, $Res Function(_PersonMeasurementsEntity) _then) = __$PersonMeasurementsEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, List<MeasurementValueEntity> measurements
});




}
/// @nodoc
class __$PersonMeasurementsEntityCopyWithImpl<$Res>
    implements _$PersonMeasurementsEntityCopyWith<$Res> {
  __$PersonMeasurementsEntityCopyWithImpl(this._self, this._then);

  final _PersonMeasurementsEntity _self;
  final $Res Function(_PersonMeasurementsEntity) _then;

/// Create a copy of PersonMeasurementsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? measurements = null,}) {
  return _then(_PersonMeasurementsEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measurements: null == measurements ? _self._measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<MeasurementValueEntity>,
  ));
}


}

// dart format on
