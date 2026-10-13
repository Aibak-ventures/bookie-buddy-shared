// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_filter_option_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceFilterOptionEntity {

 String get name; int? get id;// Set for subcategories, so the UI can narrow them to the chosen category.
 String? get categoryName;
/// Create a copy of MarketplaceFilterOptionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceFilterOptionEntityCopyWith<MarketplaceFilterOptionEntity> get copyWith => _$MarketplaceFilterOptionEntityCopyWithImpl<MarketplaceFilterOptionEntity>(this as MarketplaceFilterOptionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceFilterOptionEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,categoryName);

@override
String toString() {
  return 'MarketplaceFilterOptionEntity(name: $name, id: $id, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class $MarketplaceFilterOptionEntityCopyWith<$Res>  {
  factory $MarketplaceFilterOptionEntityCopyWith(MarketplaceFilterOptionEntity value, $Res Function(MarketplaceFilterOptionEntity) _then) = _$MarketplaceFilterOptionEntityCopyWithImpl;
@useResult
$Res call({
 String name, int? id, String? categoryName
});




}
/// @nodoc
class _$MarketplaceFilterOptionEntityCopyWithImpl<$Res>
    implements $MarketplaceFilterOptionEntityCopyWith<$Res> {
  _$MarketplaceFilterOptionEntityCopyWithImpl(this._self, this._then);

  final MarketplaceFilterOptionEntity _self;
  final $Res Function(MarketplaceFilterOptionEntity) _then;

/// Create a copy of MarketplaceFilterOptionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = freezed,Object? categoryName = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceFilterOptionEntity].
extension MarketplaceFilterOptionEntityPatterns on MarketplaceFilterOptionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceFilterOptionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceFilterOptionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceFilterOptionEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceFilterOptionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceFilterOptionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceFilterOptionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int? id,  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceFilterOptionEntity() when $default != null:
return $default(_that.name,_that.id,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int? id,  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceFilterOptionEntity():
return $default(_that.name,_that.id,_that.categoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int? id,  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceFilterOptionEntity() when $default != null:
return $default(_that.name,_that.id,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceFilterOptionEntity implements MarketplaceFilterOptionEntity {
  const _MarketplaceFilterOptionEntity({required this.name, this.id, this.categoryName});
  

@override final  String name;
@override final  int? id;
// Set for subcategories, so the UI can narrow them to the chosen category.
@override final  String? categoryName;

/// Create a copy of MarketplaceFilterOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceFilterOptionEntityCopyWith<_MarketplaceFilterOptionEntity> get copyWith => __$MarketplaceFilterOptionEntityCopyWithImpl<_MarketplaceFilterOptionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceFilterOptionEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}


@override
int get hashCode => Object.hash(runtimeType,name,id,categoryName);

@override
String toString() {
  return 'MarketplaceFilterOptionEntity(name: $name, id: $id, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceFilterOptionEntityCopyWith<$Res> implements $MarketplaceFilterOptionEntityCopyWith<$Res> {
  factory _$MarketplaceFilterOptionEntityCopyWith(_MarketplaceFilterOptionEntity value, $Res Function(_MarketplaceFilterOptionEntity) _then) = __$MarketplaceFilterOptionEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, int? id, String? categoryName
});




}
/// @nodoc
class __$MarketplaceFilterOptionEntityCopyWithImpl<$Res>
    implements _$MarketplaceFilterOptionEntityCopyWith<$Res> {
  __$MarketplaceFilterOptionEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceFilterOptionEntity _self;
  final $Res Function(_MarketplaceFilterOptionEntity) _then;

/// Create a copy of MarketplaceFilterOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = freezed,Object? categoryName = freezed,}) {
  return _then(_MarketplaceFilterOptionEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
