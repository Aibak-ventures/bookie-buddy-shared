// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceOrderEntity {

 MarketplaceProductDetailsEntity get product; MarketplaceFabricEntity? get fabric; List<MarketplaceOrderItemEntity> get items; String? get shopName; String? get place; String? get userName;
/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceOrderEntityCopyWith<MarketplaceOrderEntity> get copyWith => _$MarketplaceOrderEntityCopyWithImpl<MarketplaceOrderEntity>(this as MarketplaceOrderEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceOrderEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.fabric, fabric) || other.fabric == fabric)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.shopName, shopName) || other.shopName == shopName)&&(identical(other.place, place) || other.place == place)&&(identical(other.userName, userName) || other.userName == userName));
}


@override
int get hashCode => Object.hash(runtimeType,product,fabric,const DeepCollectionEquality().hash(items),shopName,place,userName);

@override
String toString() {
  return 'MarketplaceOrderEntity(product: $product, fabric: $fabric, items: $items, shopName: $shopName, place: $place, userName: $userName)';
}


}

/// @nodoc
abstract mixin class $MarketplaceOrderEntityCopyWith<$Res>  {
  factory $MarketplaceOrderEntityCopyWith(MarketplaceOrderEntity value, $Res Function(MarketplaceOrderEntity) _then) = _$MarketplaceOrderEntityCopyWithImpl;
@useResult
$Res call({
 MarketplaceProductDetailsEntity product, MarketplaceFabricEntity? fabric, List<MarketplaceOrderItemEntity> items, String? shopName, String? place, String? userName
});


$MarketplaceProductDetailsEntityCopyWith<$Res> get product;$MarketplaceFabricEntityCopyWith<$Res>? get fabric;

}
/// @nodoc
class _$MarketplaceOrderEntityCopyWithImpl<$Res>
    implements $MarketplaceOrderEntityCopyWith<$Res> {
  _$MarketplaceOrderEntityCopyWithImpl(this._self, this._then);

  final MarketplaceOrderEntity _self;
  final $Res Function(MarketplaceOrderEntity) _then;

/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? fabric = freezed,Object? items = null,Object? shopName = freezed,Object? place = freezed,Object? userName = freezed,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketplaceProductDetailsEntity,fabric: freezed == fabric ? _self.fabric : fabric // ignore: cast_nullable_to_non_nullable
as MarketplaceFabricEntity?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MarketplaceOrderItemEntity>,shopName: freezed == shopName ? _self.shopName : shopName // ignore: cast_nullable_to_non_nullable
as String?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceProductDetailsEntityCopyWith<$Res> get product {
  
  return $MarketplaceProductDetailsEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceFabricEntityCopyWith<$Res>? get fabric {
    if (_self.fabric == null) {
    return null;
  }

  return $MarketplaceFabricEntityCopyWith<$Res>(_self.fabric!, (value) {
    return _then(_self.copyWith(fabric: value));
  });
}
}


/// Adds pattern-matching-related methods to [MarketplaceOrderEntity].
extension MarketplaceOrderEntityPatterns on MarketplaceOrderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceOrderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceOrderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceOrderEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceOrderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceOrderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceOrderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MarketplaceProductDetailsEntity product,  MarketplaceFabricEntity? fabric,  List<MarketplaceOrderItemEntity> items,  String? shopName,  String? place,  String? userName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceOrderEntity() when $default != null:
return $default(_that.product,_that.fabric,_that.items,_that.shopName,_that.place,_that.userName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MarketplaceProductDetailsEntity product,  MarketplaceFabricEntity? fabric,  List<MarketplaceOrderItemEntity> items,  String? shopName,  String? place,  String? userName)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceOrderEntity():
return $default(_that.product,_that.fabric,_that.items,_that.shopName,_that.place,_that.userName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MarketplaceProductDetailsEntity product,  MarketplaceFabricEntity? fabric,  List<MarketplaceOrderItemEntity> items,  String? shopName,  String? place,  String? userName)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceOrderEntity() when $default != null:
return $default(_that.product,_that.fabric,_that.items,_that.shopName,_that.place,_that.userName);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceOrderEntity implements MarketplaceOrderEntity {
  const _MarketplaceOrderEntity({required this.product, this.fabric, final  List<MarketplaceOrderItemEntity> items = const [], this.shopName, this.place, this.userName}): _items = items;
  

@override final  MarketplaceProductDetailsEntity product;
@override final  MarketplaceFabricEntity? fabric;
 final  List<MarketplaceOrderItemEntity> _items;
@override@JsonKey() List<MarketplaceOrderItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? shopName;
@override final  String? place;
@override final  String? userName;

/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceOrderEntityCopyWith<_MarketplaceOrderEntity> get copyWith => __$MarketplaceOrderEntityCopyWithImpl<_MarketplaceOrderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceOrderEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.fabric, fabric) || other.fabric == fabric)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.shopName, shopName) || other.shopName == shopName)&&(identical(other.place, place) || other.place == place)&&(identical(other.userName, userName) || other.userName == userName));
}


@override
int get hashCode => Object.hash(runtimeType,product,fabric,const DeepCollectionEquality().hash(_items),shopName,place,userName);

@override
String toString() {
  return 'MarketplaceOrderEntity(product: $product, fabric: $fabric, items: $items, shopName: $shopName, place: $place, userName: $userName)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceOrderEntityCopyWith<$Res> implements $MarketplaceOrderEntityCopyWith<$Res> {
  factory _$MarketplaceOrderEntityCopyWith(_MarketplaceOrderEntity value, $Res Function(_MarketplaceOrderEntity) _then) = __$MarketplaceOrderEntityCopyWithImpl;
@override @useResult
$Res call({
 MarketplaceProductDetailsEntity product, MarketplaceFabricEntity? fabric, List<MarketplaceOrderItemEntity> items, String? shopName, String? place, String? userName
});


@override $MarketplaceProductDetailsEntityCopyWith<$Res> get product;@override $MarketplaceFabricEntityCopyWith<$Res>? get fabric;

}
/// @nodoc
class __$MarketplaceOrderEntityCopyWithImpl<$Res>
    implements _$MarketplaceOrderEntityCopyWith<$Res> {
  __$MarketplaceOrderEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceOrderEntity _self;
  final $Res Function(_MarketplaceOrderEntity) _then;

/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? fabric = freezed,Object? items = null,Object? shopName = freezed,Object? place = freezed,Object? userName = freezed,}) {
  return _then(_MarketplaceOrderEntity(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketplaceProductDetailsEntity,fabric: freezed == fabric ? _self.fabric : fabric // ignore: cast_nullable_to_non_nullable
as MarketplaceFabricEntity?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MarketplaceOrderItemEntity>,shopName: freezed == shopName ? _self.shopName : shopName // ignore: cast_nullable_to_non_nullable
as String?,place: freezed == place ? _self.place : place // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceProductDetailsEntityCopyWith<$Res> get product {
  
  return $MarketplaceProductDetailsEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of MarketplaceOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceFabricEntityCopyWith<$Res>? get fabric {
    if (_self.fabric == null) {
    return null;
  }

  return $MarketplaceFabricEntityCopyWith<$Res>(_self.fabric!, (value) {
    return _then(_self.copyWith(fabric: value));
  });
}
}

// dart format on
