// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_measurements_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonMeasurementsModel {

 String get name; List<MeasurementValueModel> get measurements;
/// Create a copy of PersonMeasurementsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonMeasurementsModelCopyWith<PersonMeasurementsModel> get copyWith => _$PersonMeasurementsModelCopyWithImpl<PersonMeasurementsModel>(this as PersonMeasurementsModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PersonMeasurementsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonMeasurementsModel&&(identical(other.name, _this.name) || other.name == _this.name)&&const DeepCollectionEquality().equals(other.measurements, _this.measurements));
}


@override
int get hashCode {
  final _this = this as PersonMeasurementsModel;
  return Object.hash(runtimeType,_this.name,const DeepCollectionEquality().hash(_this.measurements));
}

@override
String toString() {
  final _this = this as PersonMeasurementsModel;
  return 'PersonMeasurementsModel(name: ${_this.name}, measurements: ${_this.measurements})';
}


}

/// @nodoc
abstract mixin class $PersonMeasurementsModelCopyWith<$Res>  {
  factory $PersonMeasurementsModelCopyWith(PersonMeasurementsModel value, $Res Function(PersonMeasurementsModel) _then) = _$PersonMeasurementsModelCopyWithImpl;
@useResult
$Res call({
 String name, List<MeasurementValueModel> measurements
});




}
/// @nodoc
class _$PersonMeasurementsModelCopyWithImpl<$Res>
    implements $PersonMeasurementsModelCopyWith<$Res> {
  _$PersonMeasurementsModelCopyWithImpl(this._self, this._then);

  final PersonMeasurementsModel _self;
  final $Res Function(PersonMeasurementsModel) _then;

/// Create a copy of PersonMeasurementsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? measurements = null,}) {
  return _then(PersonMeasurementsModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measurements: null == measurements ? _self.measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<MeasurementValueModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonMeasurementsModel].
extension PersonMeasurementsModelPatterns on PersonMeasurementsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonMeasurementsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonMeasurementsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonMeasurementsModel value)  $default,){
final _that = this;
switch (_that) {
case _PersonMeasurementsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonMeasurementsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PersonMeasurementsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<MeasurementValueModel> measurements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonMeasurementsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<MeasurementValueModel> measurements)  $default,) {final _that = this;
switch (_that) {
case _PersonMeasurementsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<MeasurementValueModel> measurements)?  $default,) {final _that = this;
switch (_that) {
case _PersonMeasurementsModel() when $default != null:
return $default(_that.name,_that.measurements);case _:
  return null;

}
}

}

/// @nodoc


class _PersonMeasurementsModel implements PersonMeasurementsModel {
  const _PersonMeasurementsModel({required this.name,  List<MeasurementValueModel> measurements = const []}): _measurements = measurements;
  

@override final  String name;
 final  List<MeasurementValueModel> _measurements;
@override@JsonKey() List<MeasurementValueModel> get measurements {
  if (_measurements is EqualUnmodifiableListView) return _measurements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_measurements);
}


/// Create a copy of PersonMeasurementsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonMeasurementsModelCopyWith<_PersonMeasurementsModel> get copyWith => __$PersonMeasurementsModelCopyWithImpl<_PersonMeasurementsModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonMeasurementsModel&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.measurements, _measurements));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_measurements));
}

@override
String toString() {
    return 'PersonMeasurementsModel(name: $name, measurements: $measurements)';
}


}

/// @nodoc
abstract mixin class _$PersonMeasurementsModelCopyWith<$Res> implements $PersonMeasurementsModelCopyWith<$Res> {
  factory _$PersonMeasurementsModelCopyWith(_PersonMeasurementsModel value, $Res Function(_PersonMeasurementsModel) _then) = __$PersonMeasurementsModelCopyWithImpl;
@override @useResult
$Res call({
 String name, List<MeasurementValueModel> measurements
});




}
/// @nodoc
class __$PersonMeasurementsModelCopyWithImpl<$Res>
    implements _$PersonMeasurementsModelCopyWith<$Res> {
  __$PersonMeasurementsModelCopyWithImpl(this._self, this._then);

  final _PersonMeasurementsModel _self;
  final $Res Function(_PersonMeasurementsModel) _then;

/// Create a copy of PersonMeasurementsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? measurements = null,}) {
  return _then(_PersonMeasurementsModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measurements: null == measurements ? _self._measurements : measurements // ignore: cast_nullable_to_non_nullable
as List<MeasurementValueModel>,
  ));
}


}

// dart format on
