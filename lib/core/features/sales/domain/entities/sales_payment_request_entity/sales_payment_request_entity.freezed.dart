// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_payment_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesPaymentRequestEntity {

 int? get id; int get accountId; int get amount;
/// Create a copy of SalesPaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesPaymentRequestEntityCopyWith<SalesPaymentRequestEntity> get copyWith => _$SalesPaymentRequestEntityCopyWithImpl<SalesPaymentRequestEntity>(this as SalesPaymentRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesPaymentRequestEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountId,amount);

@override
String toString() {
  return 'SalesPaymentRequestEntity(id: $id, accountId: $accountId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SalesPaymentRequestEntityCopyWith<$Res>  {
  factory $SalesPaymentRequestEntityCopyWith(SalesPaymentRequestEntity value, $Res Function(SalesPaymentRequestEntity) _then) = _$SalesPaymentRequestEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int accountId, int amount
});




}
/// @nodoc
class _$SalesPaymentRequestEntityCopyWithImpl<$Res>
    implements $SalesPaymentRequestEntityCopyWith<$Res> {
  _$SalesPaymentRequestEntityCopyWithImpl(this._self, this._then);

  final SalesPaymentRequestEntity _self;
  final $Res Function(SalesPaymentRequestEntity) _then;

/// Create a copy of SalesPaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? accountId = null,Object? amount = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesPaymentRequestEntity].
extension SalesPaymentRequestEntityPatterns on SalesPaymentRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesPaymentRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesPaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesPaymentRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _SalesPaymentRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesPaymentRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SalesPaymentRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int accountId,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesPaymentRequestEntity() when $default != null:
return $default(_that.id,_that.accountId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int accountId,  int amount)  $default,) {final _that = this;
switch (_that) {
case _SalesPaymentRequestEntity():
return $default(_that.id,_that.accountId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int accountId,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _SalesPaymentRequestEntity() when $default != null:
return $default(_that.id,_that.accountId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _SalesPaymentRequestEntity implements SalesPaymentRequestEntity {
  const _SalesPaymentRequestEntity({this.id, required this.accountId, required this.amount});
  

@override final  int? id;
@override final  int accountId;
@override final  int amount;

/// Create a copy of SalesPaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesPaymentRequestEntityCopyWith<_SalesPaymentRequestEntity> get copyWith => __$SalesPaymentRequestEntityCopyWithImpl<_SalesPaymentRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesPaymentRequestEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,id,accountId,amount);

@override
String toString() {
  return 'SalesPaymentRequestEntity(id: $id, accountId: $accountId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$SalesPaymentRequestEntityCopyWith<$Res> implements $SalesPaymentRequestEntityCopyWith<$Res> {
  factory _$SalesPaymentRequestEntityCopyWith(_SalesPaymentRequestEntity value, $Res Function(_SalesPaymentRequestEntity) _then) = __$SalesPaymentRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int accountId, int amount
});




}
/// @nodoc
class __$SalesPaymentRequestEntityCopyWithImpl<$Res>
    implements _$SalesPaymentRequestEntityCopyWith<$Res> {
  __$SalesPaymentRequestEntityCopyWithImpl(this._self, this._then);

  final _SalesPaymentRequestEntity _self;
  final $Res Function(_SalesPaymentRequestEntity) _then;

/// Create a copy of SalesPaymentRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? accountId = null,Object? amount = null,}) {
  return _then(_SalesPaymentRequestEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
