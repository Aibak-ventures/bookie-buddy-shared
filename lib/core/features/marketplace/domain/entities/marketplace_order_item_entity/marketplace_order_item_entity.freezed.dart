// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_order_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceOrderItemEntity {

 int get size; int get quantity;
/// Create a copy of MarketplaceOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceOrderItemEntityCopyWith<MarketplaceOrderItemEntity> get copyWith => _$MarketplaceOrderItemEntityCopyWithImpl<MarketplaceOrderItemEntity>(this as MarketplaceOrderItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceOrderItemEntity&&(identical(other.size, size) || other.size == size)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,size,quantity);

@override
String toString() {
  return 'MarketplaceOrderItemEntity(size: $size, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $MarketplaceOrderItemEntityCopyWith<$Res>  {
  factory $MarketplaceOrderItemEntityCopyWith(MarketplaceOrderItemEntity value, $Res Function(MarketplaceOrderItemEntity) _then) = _$MarketplaceOrderItemEntityCopyWithImpl;
@useResult
$Res call({
 int size, int quantity
});




}
/// @nodoc
class _$MarketplaceOrderItemEntityCopyWithImpl<$Res>
    implements $MarketplaceOrderItemEntityCopyWith<$Res> {
  _$MarketplaceOrderItemEntityCopyWithImpl(this._self, this._then);

  final MarketplaceOrderItemEntity _self;
  final $Res Function(MarketplaceOrderItemEntity) _then;

/// Create a copy of MarketplaceOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? size = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceOrderItemEntity].
extension MarketplaceOrderItemEntityPatterns on MarketplaceOrderItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceOrderItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceOrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceOrderItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceOrderItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceOrderItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceOrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int size,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceOrderItemEntity() when $default != null:
return $default(_that.size,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int size,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceOrderItemEntity():
return $default(_that.size,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int size,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceOrderItemEntity() when $default != null:
return $default(_that.size,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceOrderItemEntity implements MarketplaceOrderItemEntity {
  const _MarketplaceOrderItemEntity({required this.size, required this.quantity});
  

@override final  int size;
@override final  int quantity;

/// Create a copy of MarketplaceOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceOrderItemEntityCopyWith<_MarketplaceOrderItemEntity> get copyWith => __$MarketplaceOrderItemEntityCopyWithImpl<_MarketplaceOrderItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceOrderItemEntity&&(identical(other.size, size) || other.size == size)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,size,quantity);

@override
String toString() {
  return 'MarketplaceOrderItemEntity(size: $size, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceOrderItemEntityCopyWith<$Res> implements $MarketplaceOrderItemEntityCopyWith<$Res> {
  factory _$MarketplaceOrderItemEntityCopyWith(_MarketplaceOrderItemEntity value, $Res Function(_MarketplaceOrderItemEntity) _then) = __$MarketplaceOrderItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int size, int quantity
});




}
/// @nodoc
class __$MarketplaceOrderItemEntityCopyWithImpl<$Res>
    implements _$MarketplaceOrderItemEntityCopyWith<$Res> {
  __$MarketplaceOrderItemEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceOrderItemEntity _self;
  final $Res Function(_MarketplaceOrderItemEntity) _then;

/// Create a copy of MarketplaceOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? size = null,Object? quantity = null,}) {
  return _then(_MarketplaceOrderItemEntity(
size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
