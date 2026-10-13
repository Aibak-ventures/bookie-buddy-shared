// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_enquiry_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceEnquiryEntity {

 MarketplaceProductDetailsEntity get product; MarketplaceFabricEntity? get fabric; int? get quantity; int? get size; String? get note;
/// Create a copy of MarketplaceEnquiryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceEnquiryEntityCopyWith<MarketplaceEnquiryEntity> get copyWith => _$MarketplaceEnquiryEntityCopyWithImpl<MarketplaceEnquiryEntity>(this as MarketplaceEnquiryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceEnquiryEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.fabric, fabric) || other.fabric == fabric)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.size, size) || other.size == size)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,product,fabric,quantity,size,note);

@override
String toString() {
  return 'MarketplaceEnquiryEntity(product: $product, fabric: $fabric, quantity: $quantity, size: $size, note: $note)';
}


}

/// @nodoc
abstract mixin class $MarketplaceEnquiryEntityCopyWith<$Res>  {
  factory $MarketplaceEnquiryEntityCopyWith(MarketplaceEnquiryEntity value, $Res Function(MarketplaceEnquiryEntity) _then) = _$MarketplaceEnquiryEntityCopyWithImpl;
@useResult
$Res call({
 MarketplaceProductDetailsEntity product, MarketplaceFabricEntity? fabric, int? quantity, int? size, String? note
});


$MarketplaceProductDetailsEntityCopyWith<$Res> get product;$MarketplaceFabricEntityCopyWith<$Res>? get fabric;

}
/// @nodoc
class _$MarketplaceEnquiryEntityCopyWithImpl<$Res>
    implements $MarketplaceEnquiryEntityCopyWith<$Res> {
  _$MarketplaceEnquiryEntityCopyWithImpl(this._self, this._then);

  final MarketplaceEnquiryEntity _self;
  final $Res Function(MarketplaceEnquiryEntity) _then;

/// Create a copy of MarketplaceEnquiryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? fabric = freezed,Object? quantity = freezed,Object? size = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketplaceProductDetailsEntity,fabric: freezed == fabric ? _self.fabric : fabric // ignore: cast_nullable_to_non_nullable
as MarketplaceFabricEntity?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MarketplaceEnquiryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceProductDetailsEntityCopyWith<$Res> get product {
  
  return $MarketplaceProductDetailsEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of MarketplaceEnquiryEntity
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


/// Adds pattern-matching-related methods to [MarketplaceEnquiryEntity].
extension MarketplaceEnquiryEntityPatterns on MarketplaceEnquiryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceEnquiryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceEnquiryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceEnquiryEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceEnquiryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceEnquiryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceEnquiryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MarketplaceProductDetailsEntity product,  MarketplaceFabricEntity? fabric,  int? quantity,  int? size,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceEnquiryEntity() when $default != null:
return $default(_that.product,_that.fabric,_that.quantity,_that.size,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MarketplaceProductDetailsEntity product,  MarketplaceFabricEntity? fabric,  int? quantity,  int? size,  String? note)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceEnquiryEntity():
return $default(_that.product,_that.fabric,_that.quantity,_that.size,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MarketplaceProductDetailsEntity product,  MarketplaceFabricEntity? fabric,  int? quantity,  int? size,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceEnquiryEntity() when $default != null:
return $default(_that.product,_that.fabric,_that.quantity,_that.size,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceEnquiryEntity implements MarketplaceEnquiryEntity {
  const _MarketplaceEnquiryEntity({required this.product, this.fabric, this.quantity, this.size, this.note});
  

@override final  MarketplaceProductDetailsEntity product;
@override final  MarketplaceFabricEntity? fabric;
@override final  int? quantity;
@override final  int? size;
@override final  String? note;

/// Create a copy of MarketplaceEnquiryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceEnquiryEntityCopyWith<_MarketplaceEnquiryEntity> get copyWith => __$MarketplaceEnquiryEntityCopyWithImpl<_MarketplaceEnquiryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceEnquiryEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.fabric, fabric) || other.fabric == fabric)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.size, size) || other.size == size)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,product,fabric,quantity,size,note);

@override
String toString() {
  return 'MarketplaceEnquiryEntity(product: $product, fabric: $fabric, quantity: $quantity, size: $size, note: $note)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceEnquiryEntityCopyWith<$Res> implements $MarketplaceEnquiryEntityCopyWith<$Res> {
  factory _$MarketplaceEnquiryEntityCopyWith(_MarketplaceEnquiryEntity value, $Res Function(_MarketplaceEnquiryEntity) _then) = __$MarketplaceEnquiryEntityCopyWithImpl;
@override @useResult
$Res call({
 MarketplaceProductDetailsEntity product, MarketplaceFabricEntity? fabric, int? quantity, int? size, String? note
});


@override $MarketplaceProductDetailsEntityCopyWith<$Res> get product;@override $MarketplaceFabricEntityCopyWith<$Res>? get fabric;

}
/// @nodoc
class __$MarketplaceEnquiryEntityCopyWithImpl<$Res>
    implements _$MarketplaceEnquiryEntityCopyWith<$Res> {
  __$MarketplaceEnquiryEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceEnquiryEntity _self;
  final $Res Function(_MarketplaceEnquiryEntity) _then;

/// Create a copy of MarketplaceEnquiryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? fabric = freezed,Object? quantity = freezed,Object? size = freezed,Object? note = freezed,}) {
  return _then(_MarketplaceEnquiryEntity(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as MarketplaceProductDetailsEntity,fabric: freezed == fabric ? _self.fabric : fabric // ignore: cast_nullable_to_non_nullable
as MarketplaceFabricEntity?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MarketplaceEnquiryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceProductDetailsEntityCopyWith<$Res> get product {
  
  return $MarketplaceProductDetailsEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}/// Create a copy of MarketplaceEnquiryEntity
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
