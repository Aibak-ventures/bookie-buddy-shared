// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unavailable_products_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnavailableProductsEntity {

 String? get message; String? get dateFrom; String? get dateTo; List<int> get unavailableProducts; String? get bookingInvoiceId; int? get bookingId;
/// Create a copy of UnavailableProductsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnavailableProductsEntityCopyWith<UnavailableProductsEntity> get copyWith => _$UnavailableProductsEntityCopyWithImpl<UnavailableProductsEntity>(this as UnavailableProductsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnavailableProductsEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom)&&(identical(other.dateTo, dateTo) || other.dateTo == dateTo)&&const DeepCollectionEquality().equals(other.unavailableProducts, unavailableProducts)&&(identical(other.bookingInvoiceId, bookingInvoiceId) || other.bookingInvoiceId == bookingInvoiceId)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId));
}


@override
int get hashCode => Object.hash(runtimeType,message,dateFrom,dateTo,const DeepCollectionEquality().hash(unavailableProducts),bookingInvoiceId,bookingId);

@override
String toString() {
  return 'UnavailableProductsEntity(message: $message, dateFrom: $dateFrom, dateTo: $dateTo, unavailableProducts: $unavailableProducts, bookingInvoiceId: $bookingInvoiceId, bookingId: $bookingId)';
}


}

/// @nodoc
abstract mixin class $UnavailableProductsEntityCopyWith<$Res>  {
  factory $UnavailableProductsEntityCopyWith(UnavailableProductsEntity value, $Res Function(UnavailableProductsEntity) _then) = _$UnavailableProductsEntityCopyWithImpl;
@useResult
$Res call({
 String? message, String? dateFrom, String? dateTo, List<int> unavailableProducts, String? bookingInvoiceId, int? bookingId
});




}
/// @nodoc
class _$UnavailableProductsEntityCopyWithImpl<$Res>
    implements $UnavailableProductsEntityCopyWith<$Res> {
  _$UnavailableProductsEntityCopyWithImpl(this._self, this._then);

  final UnavailableProductsEntity _self;
  final $Res Function(UnavailableProductsEntity) _then;

/// Create a copy of UnavailableProductsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? dateFrom = freezed,Object? dateTo = freezed,Object? unavailableProducts = null,Object? bookingInvoiceId = freezed,Object? bookingId = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,dateFrom: freezed == dateFrom ? _self.dateFrom : dateFrom // ignore: cast_nullable_to_non_nullable
as String?,dateTo: freezed == dateTo ? _self.dateTo : dateTo // ignore: cast_nullable_to_non_nullable
as String?,unavailableProducts: null == unavailableProducts ? _self.unavailableProducts : unavailableProducts // ignore: cast_nullable_to_non_nullable
as List<int>,bookingInvoiceId: freezed == bookingInvoiceId ? _self.bookingInvoiceId : bookingInvoiceId // ignore: cast_nullable_to_non_nullable
as String?,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnavailableProductsEntity].
extension UnavailableProductsEntityPatterns on UnavailableProductsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnavailableProductsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnavailableProductsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnavailableProductsEntity value)  $default,){
final _that = this;
switch (_that) {
case _UnavailableProductsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnavailableProductsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UnavailableProductsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  String? dateFrom,  String? dateTo,  List<int> unavailableProducts,  String? bookingInvoiceId,  int? bookingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnavailableProductsEntity() when $default != null:
return $default(_that.message,_that.dateFrom,_that.dateTo,_that.unavailableProducts,_that.bookingInvoiceId,_that.bookingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  String? dateFrom,  String? dateTo,  List<int> unavailableProducts,  String? bookingInvoiceId,  int? bookingId)  $default,) {final _that = this;
switch (_that) {
case _UnavailableProductsEntity():
return $default(_that.message,_that.dateFrom,_that.dateTo,_that.unavailableProducts,_that.bookingInvoiceId,_that.bookingId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  String? dateFrom,  String? dateTo,  List<int> unavailableProducts,  String? bookingInvoiceId,  int? bookingId)?  $default,) {final _that = this;
switch (_that) {
case _UnavailableProductsEntity() when $default != null:
return $default(_that.message,_that.dateFrom,_that.dateTo,_that.unavailableProducts,_that.bookingInvoiceId,_that.bookingId);case _:
  return null;

}
}

}

/// @nodoc


class _UnavailableProductsEntity implements UnavailableProductsEntity {
  const _UnavailableProductsEntity({required this.message, required this.dateFrom, required this.dateTo, required final  List<int> unavailableProducts, required this.bookingInvoiceId, required this.bookingId}): _unavailableProducts = unavailableProducts;
  

@override final  String? message;
@override final  String? dateFrom;
@override final  String? dateTo;
 final  List<int> _unavailableProducts;
@override List<int> get unavailableProducts {
  if (_unavailableProducts is EqualUnmodifiableListView) return _unavailableProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_unavailableProducts);
}

@override final  String? bookingInvoiceId;
@override final  int? bookingId;

/// Create a copy of UnavailableProductsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnavailableProductsEntityCopyWith<_UnavailableProductsEntity> get copyWith => __$UnavailableProductsEntityCopyWithImpl<_UnavailableProductsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnavailableProductsEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.dateFrom, dateFrom) || other.dateFrom == dateFrom)&&(identical(other.dateTo, dateTo) || other.dateTo == dateTo)&&const DeepCollectionEquality().equals(other._unavailableProducts, _unavailableProducts)&&(identical(other.bookingInvoiceId, bookingInvoiceId) || other.bookingInvoiceId == bookingInvoiceId)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId));
}


@override
int get hashCode => Object.hash(runtimeType,message,dateFrom,dateTo,const DeepCollectionEquality().hash(_unavailableProducts),bookingInvoiceId,bookingId);

@override
String toString() {
  return 'UnavailableProductsEntity(message: $message, dateFrom: $dateFrom, dateTo: $dateTo, unavailableProducts: $unavailableProducts, bookingInvoiceId: $bookingInvoiceId, bookingId: $bookingId)';
}


}

/// @nodoc
abstract mixin class _$UnavailableProductsEntityCopyWith<$Res> implements $UnavailableProductsEntityCopyWith<$Res> {
  factory _$UnavailableProductsEntityCopyWith(_UnavailableProductsEntity value, $Res Function(_UnavailableProductsEntity) _then) = __$UnavailableProductsEntityCopyWithImpl;
@override @useResult
$Res call({
 String? message, String? dateFrom, String? dateTo, List<int> unavailableProducts, String? bookingInvoiceId, int? bookingId
});




}
/// @nodoc
class __$UnavailableProductsEntityCopyWithImpl<$Res>
    implements _$UnavailableProductsEntityCopyWith<$Res> {
  __$UnavailableProductsEntityCopyWithImpl(this._self, this._then);

  final _UnavailableProductsEntity _self;
  final $Res Function(_UnavailableProductsEntity) _then;

/// Create a copy of UnavailableProductsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? dateFrom = freezed,Object? dateTo = freezed,Object? unavailableProducts = null,Object? bookingInvoiceId = freezed,Object? bookingId = freezed,}) {
  return _then(_UnavailableProductsEntity(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,dateFrom: freezed == dateFrom ? _self.dateFrom : dateFrom // ignore: cast_nullable_to_non_nullable
as String?,dateTo: freezed == dateTo ? _self.dateTo : dateTo // ignore: cast_nullable_to_non_nullable
as String?,unavailableProducts: null == unavailableProducts ? _self._unavailableProducts : unavailableProducts // ignore: cast_nullable_to_non_nullable
as List<int>,bookingInvoiceId: freezed == bookingInvoiceId ? _self.bookingInvoiceId : bookingInvoiceId // ignore: cast_nullable_to_non_nullable
as String?,bookingId: freezed == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
