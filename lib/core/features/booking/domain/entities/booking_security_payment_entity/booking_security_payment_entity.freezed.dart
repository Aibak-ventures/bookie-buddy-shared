// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_security_payment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingSecurityPaymentEntity {

 int? get id; int get amount; String? get accountName; int? get accountId; String? get paidAt; String? get createdAt;
/// Create a copy of BookingSecurityPaymentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingSecurityPaymentEntityCopyWith<BookingSecurityPaymentEntity> get copyWith => _$BookingSecurityPaymentEntityCopyWithImpl<BookingSecurityPaymentEntity>(this as BookingSecurityPaymentEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BookingSecurityPaymentEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingSecurityPaymentEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.accountName, _this.accountName) || other.accountName == _this.accountName)&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.paidAt, _this.paidAt) || other.paidAt == _this.paidAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as BookingSecurityPaymentEntity;
  return Object.hash(runtimeType,_this.id,_this.amount,_this.accountName,_this.accountId,_this.paidAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as BookingSecurityPaymentEntity;
  return 'BookingSecurityPaymentEntity(id: ${_this.id}, amount: ${_this.amount}, accountName: ${_this.accountName}, accountId: ${_this.accountId}, paidAt: ${_this.paidAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $BookingSecurityPaymentEntityCopyWith<$Res>  {
  factory $BookingSecurityPaymentEntityCopyWith(BookingSecurityPaymentEntity value, $Res Function(BookingSecurityPaymentEntity) _then) = _$BookingSecurityPaymentEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int amount, String? accountName, int? accountId, String? paidAt, String? createdAt
});




}
/// @nodoc
class _$BookingSecurityPaymentEntityCopyWithImpl<$Res>
    implements $BookingSecurityPaymentEntityCopyWith<$Res> {
  _$BookingSecurityPaymentEntityCopyWithImpl(this._self, this._then);

  final BookingSecurityPaymentEntity _self;
  final $Res Function(BookingSecurityPaymentEntity) _then;

/// Create a copy of BookingSecurityPaymentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? paidAt = freezed,Object? createdAt = freezed,}) {
  return _then(BookingSecurityPaymentEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingSecurityPaymentEntity].
extension BookingSecurityPaymentEntityPatterns on BookingSecurityPaymentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingSecurityPaymentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingSecurityPaymentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingSecurityPaymentEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingSecurityPaymentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingSecurityPaymentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingSecurityPaymentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int amount,  String? accountName,  int? accountId,  String? paidAt,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingSecurityPaymentEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int amount,  String? accountName,  int? accountId,  String? paidAt,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BookingSecurityPaymentEntity():
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int amount,  String? accountName,  int? accountId,  String? paidAt,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BookingSecurityPaymentEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.paidAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _BookingSecurityPaymentEntity implements BookingSecurityPaymentEntity {
  const _BookingSecurityPaymentEntity({this.id, required this.amount, this.accountName, this.accountId, this.paidAt, this.createdAt});
  

@override final  int? id;
@override final  int amount;
@override final  String? accountName;
@override final  int? accountId;
@override final  String? paidAt;
@override final  String? createdAt;

/// Create a copy of BookingSecurityPaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingSecurityPaymentEntityCopyWith<_BookingSecurityPaymentEntity> get copyWith => __$BookingSecurityPaymentEntityCopyWithImpl<_BookingSecurityPaymentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingSecurityPaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,amount,accountName,accountId,paidAt,createdAt);
}

@override
String toString() {
    return 'BookingSecurityPaymentEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, paidAt: $paidAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BookingSecurityPaymentEntityCopyWith<$Res> implements $BookingSecurityPaymentEntityCopyWith<$Res> {
  factory _$BookingSecurityPaymentEntityCopyWith(_BookingSecurityPaymentEntity value, $Res Function(_BookingSecurityPaymentEntity) _then) = __$BookingSecurityPaymentEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int amount, String? accountName, int? accountId, String? paidAt, String? createdAt
});




}
/// @nodoc
class __$BookingSecurityPaymentEntityCopyWithImpl<$Res>
    implements _$BookingSecurityPaymentEntityCopyWith<$Res> {
  __$BookingSecurityPaymentEntityCopyWithImpl(this._self, this._then);

  final _BookingSecurityPaymentEntity _self;
  final $Res Function(_BookingSecurityPaymentEntity) _then;

/// Create a copy of BookingSecurityPaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? paidAt = freezed,Object? createdAt = freezed,}) {
  return _then(_BookingSecurityPaymentEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
