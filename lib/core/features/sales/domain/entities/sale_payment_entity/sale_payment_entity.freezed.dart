// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_payment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalePaymentEntity {

 int get id; int get amount; String? get accountName; int? get accountId; String get date; PaymentMethod get paymentMethod;
/// Create a copy of SalePaymentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalePaymentEntityCopyWith<SalePaymentEntity> get copyWith => _$SalePaymentEntityCopyWithImpl<SalePaymentEntity>(this as SalePaymentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalePaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,date,paymentMethod);

@override
String toString() {
  return 'SalePaymentEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, date: $date, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $SalePaymentEntityCopyWith<$Res>  {
  factory $SalePaymentEntityCopyWith(SalePaymentEntity value, $Res Function(SalePaymentEntity) _then) = _$SalePaymentEntityCopyWithImpl;
@useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String date, PaymentMethod paymentMethod
});




}
/// @nodoc
class _$SalePaymentEntityCopyWithImpl<$Res>
    implements $SalePaymentEntityCopyWith<$Res> {
  _$SalePaymentEntityCopyWithImpl(this._self, this._then);

  final SalePaymentEntity _self;
  final $Res Function(SalePaymentEntity) _then;

/// Create a copy of SalePaymentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? date = null,Object? paymentMethod = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,
  ));
}

}


/// Adds pattern-matching-related methods to [SalePaymentEntity].
extension SalePaymentEntityPatterns on SalePaymentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalePaymentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalePaymentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalePaymentEntity value)  $default,){
final _that = this;
switch (_that) {
case _SalePaymentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalePaymentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SalePaymentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount,  String? accountName,  int? accountId,  String date,  PaymentMethod paymentMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalePaymentEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.date,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount,  String? accountName,  int? accountId,  String date,  PaymentMethod paymentMethod)  $default,) {final _that = this;
switch (_that) {
case _SalePaymentEntity():
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.date,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount,  String? accountName,  int? accountId,  String date,  PaymentMethod paymentMethod)?  $default,) {final _that = this;
switch (_that) {
case _SalePaymentEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.date,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc


class _SalePaymentEntity implements SalePaymentEntity {
  const _SalePaymentEntity({required this.id, required this.amount, required this.accountName, required this.accountId, required this.date, required this.paymentMethod});
  

@override final  int id;
@override final  int amount;
@override final  String? accountName;
@override final  int? accountId;
@override final  String date;
@override final  PaymentMethod paymentMethod;

/// Create a copy of SalePaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalePaymentEntityCopyWith<_SalePaymentEntity> get copyWith => __$SalePaymentEntityCopyWithImpl<_SalePaymentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalePaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,date,paymentMethod);

@override
String toString() {
  return 'SalePaymentEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, date: $date, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$SalePaymentEntityCopyWith<$Res> implements $SalePaymentEntityCopyWith<$Res> {
  factory _$SalePaymentEntityCopyWith(_SalePaymentEntity value, $Res Function(_SalePaymentEntity) _then) = __$SalePaymentEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String date, PaymentMethod paymentMethod
});




}
/// @nodoc
class __$SalePaymentEntityCopyWithImpl<$Res>
    implements _$SalePaymentEntityCopyWith<$Res> {
  __$SalePaymentEntityCopyWithImpl(this._self, this._then);

  final _SalePaymentEntity _self;
  final $Res Function(_SalePaymentEntity) _then;

/// Create a copy of SalePaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? date = null,Object? paymentMethod = null,}) {
  return _then(_SalePaymentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,
  ));
}


}

// dart format on
