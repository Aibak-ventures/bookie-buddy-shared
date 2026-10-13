// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceProductEntity {

 int get id; String get productCode; String get name; int get categoryId; String get categoryName; int? get subcategoryId; String? get subcategoryName; bool get isPremium; String? get color; String? get model; String? get description; MarketplaceMediaEntity? get thumbnail; bool get showSellingPrice; int get minimumOrderQuantity; int? get maximumOrderQuantity; List<MarketplaceFabricEntity> get fabrics;
/// Create a copy of MarketplaceProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceProductEntityCopyWith<MarketplaceProductEntity> get copyWith => _$MarketplaceProductEntityCopyWithImpl<MarketplaceProductEntity>(this as MarketplaceProductEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.color, color) || other.color == color)&&(identical(other.model, model) || other.model == model)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.showSellingPrice, showSellingPrice) || other.showSellingPrice == showSellingPrice)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.maximumOrderQuantity, maximumOrderQuantity) || other.maximumOrderQuantity == maximumOrderQuantity)&&const DeepCollectionEquality().equals(other.fabrics, fabrics));
}


@override
int get hashCode => Object.hash(runtimeType,id,productCode,name,categoryId,categoryName,subcategoryId,subcategoryName,isPremium,color,model,description,thumbnail,showSellingPrice,minimumOrderQuantity,maximumOrderQuantity,const DeepCollectionEquality().hash(fabrics));

@override
String toString() {
  return 'MarketplaceProductEntity(id: $id, productCode: $productCode, name: $name, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, isPremium: $isPremium, color: $color, model: $model, description: $description, thumbnail: $thumbnail, showSellingPrice: $showSellingPrice, minimumOrderQuantity: $minimumOrderQuantity, maximumOrderQuantity: $maximumOrderQuantity, fabrics: $fabrics)';
}


}

/// @nodoc
abstract mixin class $MarketplaceProductEntityCopyWith<$Res>  {
  factory $MarketplaceProductEntityCopyWith(MarketplaceProductEntity value, $Res Function(MarketplaceProductEntity) _then) = _$MarketplaceProductEntityCopyWithImpl;
@useResult
$Res call({
 int id, String productCode, String name, int categoryId, String categoryName, int? subcategoryId, String? subcategoryName, bool isPremium, String? color, String? model, String? description, MarketplaceMediaEntity? thumbnail, bool showSellingPrice, int minimumOrderQuantity, int? maximumOrderQuantity, List<MarketplaceFabricEntity> fabrics
});


$MarketplaceMediaEntityCopyWith<$Res>? get thumbnail;

}
/// @nodoc
class _$MarketplaceProductEntityCopyWithImpl<$Res>
    implements $MarketplaceProductEntityCopyWith<$Res> {
  _$MarketplaceProductEntityCopyWithImpl(this._self, this._then);

  final MarketplaceProductEntity _self;
  final $Res Function(MarketplaceProductEntity) _then;

/// Create a copy of MarketplaceProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productCode = null,Object? name = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = freezed,Object? subcategoryName = freezed,Object? isPremium = null,Object? color = freezed,Object? model = freezed,Object? description = freezed,Object? thumbnail = freezed,Object? showSellingPrice = null,Object? minimumOrderQuantity = null,Object? maximumOrderQuantity = freezed,Object? fabrics = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: freezed == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as int?,subcategoryName: freezed == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String?,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as MarketplaceMediaEntity?,showSellingPrice: null == showSellingPrice ? _self.showSellingPrice : showSellingPrice // ignore: cast_nullable_to_non_nullable
as bool,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,maximumOrderQuantity: freezed == maximumOrderQuantity ? _self.maximumOrderQuantity : maximumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int?,fabrics: null == fabrics ? _self.fabrics : fabrics // ignore: cast_nullable_to_non_nullable
as List<MarketplaceFabricEntity>,
  ));
}
/// Create a copy of MarketplaceProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceMediaEntityCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
    return null;
  }

  return $MarketplaceMediaEntityCopyWith<$Res>(_self.thumbnail!, (value) {
    return _then(_self.copyWith(thumbnail: value));
  });
}
}


/// Adds pattern-matching-related methods to [MarketplaceProductEntity].
extension MarketplaceProductEntityPatterns on MarketplaceProductEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceProductEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProductEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProductEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String productCode,  String name,  int categoryId,  String categoryName,  int? subcategoryId,  String? subcategoryName,  bool isPremium,  String? color,  String? model,  String? description,  MarketplaceMediaEntity? thumbnail,  bool showSellingPrice,  int minimumOrderQuantity,  int? maximumOrderQuantity,  List<MarketplaceFabricEntity> fabrics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceProductEntity() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.isPremium,_that.color,_that.model,_that.description,_that.thumbnail,_that.showSellingPrice,_that.minimumOrderQuantity,_that.maximumOrderQuantity,_that.fabrics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String productCode,  String name,  int categoryId,  String categoryName,  int? subcategoryId,  String? subcategoryName,  bool isPremium,  String? color,  String? model,  String? description,  MarketplaceMediaEntity? thumbnail,  bool showSellingPrice,  int minimumOrderQuantity,  int? maximumOrderQuantity,  List<MarketplaceFabricEntity> fabrics)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProductEntity():
return $default(_that.id,_that.productCode,_that.name,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.isPremium,_that.color,_that.model,_that.description,_that.thumbnail,_that.showSellingPrice,_that.minimumOrderQuantity,_that.maximumOrderQuantity,_that.fabrics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String productCode,  String name,  int categoryId,  String categoryName,  int? subcategoryId,  String? subcategoryName,  bool isPremium,  String? color,  String? model,  String? description,  MarketplaceMediaEntity? thumbnail,  bool showSellingPrice,  int minimumOrderQuantity,  int? maximumOrderQuantity,  List<MarketplaceFabricEntity> fabrics)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProductEntity() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.isPremium,_that.color,_that.model,_that.description,_that.thumbnail,_that.showSellingPrice,_that.minimumOrderQuantity,_that.maximumOrderQuantity,_that.fabrics);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceProductEntity implements MarketplaceProductEntity {
  const _MarketplaceProductEntity({required this.id, required this.productCode, required this.name, required this.categoryId, required this.categoryName, this.subcategoryId, this.subcategoryName, this.isPremium = false, this.color, this.model, this.description, this.thumbnail, this.showSellingPrice = false, this.minimumOrderQuantity = 1, this.maximumOrderQuantity, final  List<MarketplaceFabricEntity> fabrics = const []}): _fabrics = fabrics;
  

@override final  int id;
@override final  String productCode;
@override final  String name;
@override final  int categoryId;
@override final  String categoryName;
@override final  int? subcategoryId;
@override final  String? subcategoryName;
@override@JsonKey() final  bool isPremium;
@override final  String? color;
@override final  String? model;
@override final  String? description;
@override final  MarketplaceMediaEntity? thumbnail;
@override@JsonKey() final  bool showSellingPrice;
@override@JsonKey() final  int minimumOrderQuantity;
@override final  int? maximumOrderQuantity;
 final  List<MarketplaceFabricEntity> _fabrics;
@override@JsonKey() List<MarketplaceFabricEntity> get fabrics {
  if (_fabrics is EqualUnmodifiableListView) return _fabrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fabrics);
}


/// Create a copy of MarketplaceProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceProductEntityCopyWith<_MarketplaceProductEntity> get copyWith => __$MarketplaceProductEntityCopyWithImpl<_MarketplaceProductEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.color, color) || other.color == color)&&(identical(other.model, model) || other.model == model)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.showSellingPrice, showSellingPrice) || other.showSellingPrice == showSellingPrice)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.maximumOrderQuantity, maximumOrderQuantity) || other.maximumOrderQuantity == maximumOrderQuantity)&&const DeepCollectionEquality().equals(other._fabrics, _fabrics));
}


@override
int get hashCode => Object.hash(runtimeType,id,productCode,name,categoryId,categoryName,subcategoryId,subcategoryName,isPremium,color,model,description,thumbnail,showSellingPrice,minimumOrderQuantity,maximumOrderQuantity,const DeepCollectionEquality().hash(_fabrics));

@override
String toString() {
  return 'MarketplaceProductEntity(id: $id, productCode: $productCode, name: $name, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, isPremium: $isPremium, color: $color, model: $model, description: $description, thumbnail: $thumbnail, showSellingPrice: $showSellingPrice, minimumOrderQuantity: $minimumOrderQuantity, maximumOrderQuantity: $maximumOrderQuantity, fabrics: $fabrics)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceProductEntityCopyWith<$Res> implements $MarketplaceProductEntityCopyWith<$Res> {
  factory _$MarketplaceProductEntityCopyWith(_MarketplaceProductEntity value, $Res Function(_MarketplaceProductEntity) _then) = __$MarketplaceProductEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String productCode, String name, int categoryId, String categoryName, int? subcategoryId, String? subcategoryName, bool isPremium, String? color, String? model, String? description, MarketplaceMediaEntity? thumbnail, bool showSellingPrice, int minimumOrderQuantity, int? maximumOrderQuantity, List<MarketplaceFabricEntity> fabrics
});


@override $MarketplaceMediaEntityCopyWith<$Res>? get thumbnail;

}
/// @nodoc
class __$MarketplaceProductEntityCopyWithImpl<$Res>
    implements _$MarketplaceProductEntityCopyWith<$Res> {
  __$MarketplaceProductEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceProductEntity _self;
  final $Res Function(_MarketplaceProductEntity) _then;

/// Create a copy of MarketplaceProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productCode = null,Object? name = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = freezed,Object? subcategoryName = freezed,Object? isPremium = null,Object? color = freezed,Object? model = freezed,Object? description = freezed,Object? thumbnail = freezed,Object? showSellingPrice = null,Object? minimumOrderQuantity = null,Object? maximumOrderQuantity = freezed,Object? fabrics = null,}) {
  return _then(_MarketplaceProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: freezed == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as int?,subcategoryName: freezed == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String?,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as MarketplaceMediaEntity?,showSellingPrice: null == showSellingPrice ? _self.showSellingPrice : showSellingPrice // ignore: cast_nullable_to_non_nullable
as bool,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,maximumOrderQuantity: freezed == maximumOrderQuantity ? _self.maximumOrderQuantity : maximumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int?,fabrics: null == fabrics ? _self._fabrics : fabrics // ignore: cast_nullable_to_non_nullable
as List<MarketplaceFabricEntity>,
  ));
}

/// Create a copy of MarketplaceProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketplaceMediaEntityCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
    return null;
  }

  return $MarketplaceMediaEntityCopyWith<$Res>(_self.thumbnail!, (value) {
    return _then(_self.copyWith(thumbnail: value));
  });
}
}

// dart format on
