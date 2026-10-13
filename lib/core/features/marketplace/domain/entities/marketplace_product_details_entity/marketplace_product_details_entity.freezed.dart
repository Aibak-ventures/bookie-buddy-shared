// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_product_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketplaceProductDetailsEntity {

 int get id; String get productCode; String get name; int get categoryId; String get categoryName; int? get subcategoryId; String? get subcategoryName; bool get isPremium; String? get color; String? get model; String? get description;// Up to 3 images, ordered by sortOrder.
 List<MarketplaceMediaEntity> get images;// Up to 1 video.
 List<MarketplaceMediaEntity> get videos; bool get showSellingPrice; List<int> get sizeOptions; int get minimumOrderQuantity; int? get maximumOrderQuantity; List<MarketplaceFabricEntity> get fabrics; DateTime? get publishedAt;
/// Create a copy of MarketplaceProductDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceProductDetailsEntityCopyWith<MarketplaceProductDetailsEntity> get copyWith => _$MarketplaceProductDetailsEntityCopyWithImpl<MarketplaceProductDetailsEntity>(this as MarketplaceProductDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceProductDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.color, color) || other.color == color)&&(identical(other.model, model) || other.model == model)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.videos, videos)&&(identical(other.showSellingPrice, showSellingPrice) || other.showSellingPrice == showSellingPrice)&&const DeepCollectionEquality().equals(other.sizeOptions, sizeOptions)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.maximumOrderQuantity, maximumOrderQuantity) || other.maximumOrderQuantity == maximumOrderQuantity)&&const DeepCollectionEquality().equals(other.fabrics, fabrics)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,productCode,name,categoryId,categoryName,subcategoryId,subcategoryName,isPremium,color,model,description,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(videos),showSellingPrice,const DeepCollectionEquality().hash(sizeOptions),minimumOrderQuantity,maximumOrderQuantity,const DeepCollectionEquality().hash(fabrics),publishedAt]);

@override
String toString() {
  return 'MarketplaceProductDetailsEntity(id: $id, productCode: $productCode, name: $name, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, isPremium: $isPremium, color: $color, model: $model, description: $description, images: $images, videos: $videos, showSellingPrice: $showSellingPrice, sizeOptions: $sizeOptions, minimumOrderQuantity: $minimumOrderQuantity, maximumOrderQuantity: $maximumOrderQuantity, fabrics: $fabrics, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class $MarketplaceProductDetailsEntityCopyWith<$Res>  {
  factory $MarketplaceProductDetailsEntityCopyWith(MarketplaceProductDetailsEntity value, $Res Function(MarketplaceProductDetailsEntity) _then) = _$MarketplaceProductDetailsEntityCopyWithImpl;
@useResult
$Res call({
 int id, String productCode, String name, int categoryId, String categoryName, int? subcategoryId, String? subcategoryName, bool isPremium, String? color, String? model, String? description, List<MarketplaceMediaEntity> images, List<MarketplaceMediaEntity> videos, bool showSellingPrice, List<int> sizeOptions, int minimumOrderQuantity, int? maximumOrderQuantity, List<MarketplaceFabricEntity> fabrics, DateTime? publishedAt
});




}
/// @nodoc
class _$MarketplaceProductDetailsEntityCopyWithImpl<$Res>
    implements $MarketplaceProductDetailsEntityCopyWith<$Res> {
  _$MarketplaceProductDetailsEntityCopyWithImpl(this._self, this._then);

  final MarketplaceProductDetailsEntity _self;
  final $Res Function(MarketplaceProductDetailsEntity) _then;

/// Create a copy of MarketplaceProductDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productCode = null,Object? name = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = freezed,Object? subcategoryName = freezed,Object? isPremium = null,Object? color = freezed,Object? model = freezed,Object? description = freezed,Object? images = null,Object? videos = null,Object? showSellingPrice = null,Object? sizeOptions = null,Object? minimumOrderQuantity = null,Object? maximumOrderQuantity = freezed,Object? fabrics = null,Object? publishedAt = freezed,}) {
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
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<MarketplaceMediaEntity>,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<MarketplaceMediaEntity>,showSellingPrice: null == showSellingPrice ? _self.showSellingPrice : showSellingPrice // ignore: cast_nullable_to_non_nullable
as bool,sizeOptions: null == sizeOptions ? _self.sizeOptions : sizeOptions // ignore: cast_nullable_to_non_nullable
as List<int>,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,maximumOrderQuantity: freezed == maximumOrderQuantity ? _self.maximumOrderQuantity : maximumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int?,fabrics: null == fabrics ? _self.fabrics : fabrics // ignore: cast_nullable_to_non_nullable
as List<MarketplaceFabricEntity>,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceProductDetailsEntity].
extension MarketplaceProductDetailsEntityPatterns on MarketplaceProductDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceProductDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceProductDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceProductDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProductDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceProductDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProductDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String productCode,  String name,  int categoryId,  String categoryName,  int? subcategoryId,  String? subcategoryName,  bool isPremium,  String? color,  String? model,  String? description,  List<MarketplaceMediaEntity> images,  List<MarketplaceMediaEntity> videos,  bool showSellingPrice,  List<int> sizeOptions,  int minimumOrderQuantity,  int? maximumOrderQuantity,  List<MarketplaceFabricEntity> fabrics,  DateTime? publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceProductDetailsEntity() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.isPremium,_that.color,_that.model,_that.description,_that.images,_that.videos,_that.showSellingPrice,_that.sizeOptions,_that.minimumOrderQuantity,_that.maximumOrderQuantity,_that.fabrics,_that.publishedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String productCode,  String name,  int categoryId,  String categoryName,  int? subcategoryId,  String? subcategoryName,  bool isPremium,  String? color,  String? model,  String? description,  List<MarketplaceMediaEntity> images,  List<MarketplaceMediaEntity> videos,  bool showSellingPrice,  List<int> sizeOptions,  int minimumOrderQuantity,  int? maximumOrderQuantity,  List<MarketplaceFabricEntity> fabrics,  DateTime? publishedAt)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProductDetailsEntity():
return $default(_that.id,_that.productCode,_that.name,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.isPremium,_that.color,_that.model,_that.description,_that.images,_that.videos,_that.showSellingPrice,_that.sizeOptions,_that.minimumOrderQuantity,_that.maximumOrderQuantity,_that.fabrics,_that.publishedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String productCode,  String name,  int categoryId,  String categoryName,  int? subcategoryId,  String? subcategoryName,  bool isPremium,  String? color,  String? model,  String? description,  List<MarketplaceMediaEntity> images,  List<MarketplaceMediaEntity> videos,  bool showSellingPrice,  List<int> sizeOptions,  int minimumOrderQuantity,  int? maximumOrderQuantity,  List<MarketplaceFabricEntity> fabrics,  DateTime? publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProductDetailsEntity() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.isPremium,_that.color,_that.model,_that.description,_that.images,_that.videos,_that.showSellingPrice,_that.sizeOptions,_that.minimumOrderQuantity,_that.maximumOrderQuantity,_that.fabrics,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc


class _MarketplaceProductDetailsEntity implements MarketplaceProductDetailsEntity {
  const _MarketplaceProductDetailsEntity({required this.id, required this.productCode, required this.name, required this.categoryId, required this.categoryName, this.subcategoryId, this.subcategoryName, this.isPremium = false, this.color, this.model, this.description, final  List<MarketplaceMediaEntity> images = const [], final  List<MarketplaceMediaEntity> videos = const [], this.showSellingPrice = false, final  List<int> sizeOptions = const [], this.minimumOrderQuantity = 1, this.maximumOrderQuantity, final  List<MarketplaceFabricEntity> fabrics = const [], this.publishedAt}): _images = images,_videos = videos,_sizeOptions = sizeOptions,_fabrics = fabrics;
  

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
// Up to 3 images, ordered by sortOrder.
 final  List<MarketplaceMediaEntity> _images;
// Up to 3 images, ordered by sortOrder.
@override@JsonKey() List<MarketplaceMediaEntity> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

// Up to 1 video.
 final  List<MarketplaceMediaEntity> _videos;
// Up to 1 video.
@override@JsonKey() List<MarketplaceMediaEntity> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}

@override@JsonKey() final  bool showSellingPrice;
 final  List<int> _sizeOptions;
@override@JsonKey() List<int> get sizeOptions {
  if (_sizeOptions is EqualUnmodifiableListView) return _sizeOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sizeOptions);
}

@override@JsonKey() final  int minimumOrderQuantity;
@override final  int? maximumOrderQuantity;
 final  List<MarketplaceFabricEntity> _fabrics;
@override@JsonKey() List<MarketplaceFabricEntity> get fabrics {
  if (_fabrics is EqualUnmodifiableListView) return _fabrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fabrics);
}

@override final  DateTime? publishedAt;

/// Create a copy of MarketplaceProductDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceProductDetailsEntityCopyWith<_MarketplaceProductDetailsEntity> get copyWith => __$MarketplaceProductDetailsEntityCopyWithImpl<_MarketplaceProductDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceProductDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.color, color) || other.color == color)&&(identical(other.model, model) || other.model == model)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.showSellingPrice, showSellingPrice) || other.showSellingPrice == showSellingPrice)&&const DeepCollectionEquality().equals(other._sizeOptions, _sizeOptions)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.maximumOrderQuantity, maximumOrderQuantity) || other.maximumOrderQuantity == maximumOrderQuantity)&&const DeepCollectionEquality().equals(other._fabrics, _fabrics)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,productCode,name,categoryId,categoryName,subcategoryId,subcategoryName,isPremium,color,model,description,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_videos),showSellingPrice,const DeepCollectionEquality().hash(_sizeOptions),minimumOrderQuantity,maximumOrderQuantity,const DeepCollectionEquality().hash(_fabrics),publishedAt]);

@override
String toString() {
  return 'MarketplaceProductDetailsEntity(id: $id, productCode: $productCode, name: $name, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, isPremium: $isPremium, color: $color, model: $model, description: $description, images: $images, videos: $videos, showSellingPrice: $showSellingPrice, sizeOptions: $sizeOptions, minimumOrderQuantity: $minimumOrderQuantity, maximumOrderQuantity: $maximumOrderQuantity, fabrics: $fabrics, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceProductDetailsEntityCopyWith<$Res> implements $MarketplaceProductDetailsEntityCopyWith<$Res> {
  factory _$MarketplaceProductDetailsEntityCopyWith(_MarketplaceProductDetailsEntity value, $Res Function(_MarketplaceProductDetailsEntity) _then) = __$MarketplaceProductDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String productCode, String name, int categoryId, String categoryName, int? subcategoryId, String? subcategoryName, bool isPremium, String? color, String? model, String? description, List<MarketplaceMediaEntity> images, List<MarketplaceMediaEntity> videos, bool showSellingPrice, List<int> sizeOptions, int minimumOrderQuantity, int? maximumOrderQuantity, List<MarketplaceFabricEntity> fabrics, DateTime? publishedAt
});




}
/// @nodoc
class __$MarketplaceProductDetailsEntityCopyWithImpl<$Res>
    implements _$MarketplaceProductDetailsEntityCopyWith<$Res> {
  __$MarketplaceProductDetailsEntityCopyWithImpl(this._self, this._then);

  final _MarketplaceProductDetailsEntity _self;
  final $Res Function(_MarketplaceProductDetailsEntity) _then;

/// Create a copy of MarketplaceProductDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productCode = null,Object? name = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = freezed,Object? subcategoryName = freezed,Object? isPremium = null,Object? color = freezed,Object? model = freezed,Object? description = freezed,Object? images = null,Object? videos = null,Object? showSellingPrice = null,Object? sizeOptions = null,Object? minimumOrderQuantity = null,Object? maximumOrderQuantity = freezed,Object? fabrics = null,Object? publishedAt = freezed,}) {
  return _then(_MarketplaceProductDetailsEntity(
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
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<MarketplaceMediaEntity>,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<MarketplaceMediaEntity>,showSellingPrice: null == showSellingPrice ? _self.showSellingPrice : showSellingPrice // ignore: cast_nullable_to_non_nullable
as bool,sizeOptions: null == sizeOptions ? _self._sizeOptions : sizeOptions // ignore: cast_nullable_to_non_nullable
as List<int>,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,maximumOrderQuantity: freezed == maximumOrderQuantity ? _self.maximumOrderQuantity : maximumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int?,fabrics: null == fabrics ? _self._fabrics : fabrics // ignore: cast_nullable_to_non_nullable
as List<MarketplaceFabricEntity>,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
