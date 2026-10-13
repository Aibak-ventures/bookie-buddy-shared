// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_media_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceMediaEntity {

 String get url;// Null when the backend has not generated one (it sends an empty string).
 String? get thumbnailUrl; String get alt;// Position in the gallery. The list thumbnail does not carry one.
 int get sortOrder;
/// Create a copy of MarketplaceMediaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceMediaEntityCopyWith<MarketplaceMediaEntity> get copyWith => _$MarketplaceMediaEntityCopyWithImpl<MarketplaceMediaEntity>(this as MarketplaceMediaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceMediaEntity&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,url,thumbnailUrl,alt,sortOrder);

@override
String toString() {
  return 'MarketplaceMediaEntity(url: $url, thumbnailUrl: $thumbnailUrl, alt: $alt, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $MarketplaceMediaEntityCopyWith<$Res>  {
  factory $MarketplaceMediaEntityCopyWith(MarketplaceMediaEntity value, $Res Function(MarketplaceMediaEntity) _then) = _$MarketplaceMediaEntityCopyWithImpl;
@useResult
$Res call({
 String url, String? thumbnailUrl, String alt, int sortOrder
});




}
/// @nodoc
class _$MarketplaceMediaEntityCopyWithImpl<$Res>
    implements $MarketplaceMediaEntityCopyWith<$Res> {
  _$MarketplaceMediaEntityCopyWithImpl(this._self, this._then);

  final MarketplaceMediaEntity _self;
  final $Res Function(MarketplaceMediaEntity) _then;

/// Create a copy of MarketplaceMediaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? thumbnailUrl = freezed,Object? alt = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,alt: null == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceMediaEntity].
extension MarketplaceMediaEntityPatterns on MarketplaceMediaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceMediaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceMediaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceMediaEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceMediaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceMediaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceMediaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? thumbnailUrl,  String alt,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceMediaEntity() when $default != null:
return $default(_that.url,_that.thumbnailUrl,_that.alt,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? thumbnailUrl,  String alt,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceMediaEntity():
return $default(_that.url,_that.thumbnailUrl,_that.alt,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? thumbnailUrl,  String alt,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceMediaEntity() when $default != null:
return $default(_that.url,_that.thumbnailUrl,_that.alt,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceMediaEntity implements MarketplaceMediaEntity {
  const _MarketplaceMediaEntity({required this.url, this.thumbnailUrl, required this.alt, this.sortOrder = 0});
  

@override final  String url;
// Null when the backend has not generated one (it sends an empty string).
@override final  String? thumbnailUrl;
@override final  String alt;
// Position in the gallery. The list thumbnail does not carry one.
@override@JsonKey() final  int sortOrder;

/// Create a copy of MarketplaceMediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceMediaEntityCopyWith<_MarketplaceMediaEntity> get copyWith => __$MarketplaceMediaEntityCopyWithImpl<_MarketplaceMediaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceMediaEntity&&(identical(other.url, url) || other.url == url)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,url,thumbnailUrl,alt,sortOrder);

@override
String toString() {
  return 'MarketplaceMediaEntity(url: $url, thumbnailUrl: $thumbnailUrl, alt: $alt, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceMediaEntityCopyWith<$Res> implements $MarketplaceMediaEntityCopyWith<$Res> {
  factory _$MarketplaceMediaEntityCopyWith(_MarketplaceMediaEntity value, $Res Function(_MarketplaceMediaEntity) _then) = __$MarketplaceMediaEntityCopyWithImpl;
@override @useResult
$Res call({
 String url, String? thumbnailUrl, String alt, int sortOrder
});




}
/// @nodoc
class __$MarketplaceMediaEntityCopyWithImpl<$Res>
    implements _$MarketplaceMediaEntityCopyWith<$Res> {
  __$MarketplaceMediaEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceMediaEntity _self;
  final $Res Function(_MarketplaceMediaEntity) _then;

/// Create a copy of MarketplaceMediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? thumbnailUrl = freezed,Object? alt = null,Object? sortOrder = null,}) {
  return _then(_MarketplaceMediaEntity(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,alt: null == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
