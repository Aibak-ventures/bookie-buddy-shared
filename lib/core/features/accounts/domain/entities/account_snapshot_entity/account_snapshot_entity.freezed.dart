// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_snapshot_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountSnapshotEntity {

 String get name; double get amount;
/// Create a copy of AccountSnapshotEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSnapshotEntityCopyWith<AccountSnapshotEntity> get copyWith => _$AccountSnapshotEntityCopyWithImpl<AccountSnapshotEntity>(this as AccountSnapshotEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AccountSnapshotEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSnapshotEntity&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}


@override
int get hashCode {
  final _this = this as AccountSnapshotEntity;
  return Object.hash(runtimeType,_this.name,_this.amount);
}

@override
String toString() {
  final _this = this as AccountSnapshotEntity;
  return 'AccountSnapshotEntity(name: ${_this.name}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $AccountSnapshotEntityCopyWith<$Res>  {
  factory $AccountSnapshotEntityCopyWith(AccountSnapshotEntity value, $Res Function(AccountSnapshotEntity) _then) = _$AccountSnapshotEntityCopyWithImpl;
@useResult
$Res call({
 String name, double amount
});




}
/// @nodoc
class _$AccountSnapshotEntityCopyWithImpl<$Res>
    implements $AccountSnapshotEntityCopyWith<$Res> {
  _$AccountSnapshotEntityCopyWithImpl(this._self, this._then);

  final AccountSnapshotEntity _self;
  final $Res Function(AccountSnapshotEntity) _then;

/// Create a copy of AccountSnapshotEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? amount = null,}) {
  return _then(AccountSnapshotEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountSnapshotEntity].
extension AccountSnapshotEntityPatterns on AccountSnapshotEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSnapshotEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSnapshotEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSnapshotEntity value)  $default,){
final _that = this;
switch (_that) {
case _AccountSnapshotEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSnapshotEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSnapshotEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSnapshotEntity() when $default != null:
return $default(_that.name,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double amount)  $default,) {final _that = this;
switch (_that) {
case _AccountSnapshotEntity():
return $default(_that.name,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _AccountSnapshotEntity() when $default != null:
return $default(_that.name,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _AccountSnapshotEntity implements AccountSnapshotEntity {
  const _AccountSnapshotEntity({required this.name, required this.amount});
  

@override final  String name;
@override final  double amount;

/// Create a copy of AccountSnapshotEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSnapshotEntityCopyWith<_AccountSnapshotEntity> get copyWith => __$AccountSnapshotEntityCopyWithImpl<_AccountSnapshotEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSnapshotEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,amount);
}

@override
String toString() {
    return 'AccountSnapshotEntity(name: $name, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$AccountSnapshotEntityCopyWith<$Res> implements $AccountSnapshotEntityCopyWith<$Res> {
  factory _$AccountSnapshotEntityCopyWith(_AccountSnapshotEntity value, $Res Function(_AccountSnapshotEntity) _then) = __$AccountSnapshotEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, double amount
});




}
/// @nodoc
class __$AccountSnapshotEntityCopyWithImpl<$Res>
    implements _$AccountSnapshotEntityCopyWith<$Res> {
  __$AccountSnapshotEntityCopyWithImpl(this._self, this._then);

  final _AccountSnapshotEntity _self;
  final $Res Function(_AccountSnapshotEntity) _then;

/// Create a copy of AccountSnapshotEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? amount = null,}) {
  return _then(_AccountSnapshotEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
