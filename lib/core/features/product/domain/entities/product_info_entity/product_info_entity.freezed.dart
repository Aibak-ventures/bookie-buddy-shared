// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductInfoEntity {

 int get id; int? get productId; int? get variantId; int? get serviceId; String get name; String? get thumbnailImage; String? get productImage; MainServiceType? get mainServiceType; String? get variantAttribute; String? get color; String? get category; String? get model; int get quantity; double get fabricLength; int get amount; List<PersonMeasurementsEntity> get peopleMeasurements; int? get hourlyRentPrice; ProductDeliveryStatus get deliveryStatus; String? get returnedAt; int? get stock; int? get remainingStock; ProductAttributesEntity get attributes;
/// Create a copy of ProductInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductInfoEntityCopyWith<ProductInfoEntity> get copyWith => _$ProductInfoEntityCopyWithImpl<ProductInfoEntity>(this as ProductInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductInfoEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductInfoEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.serviceId, _this.serviceId) || other.serviceId == _this.serviceId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.thumbnailImage, _this.thumbnailImage) || other.thumbnailImage == _this.thumbnailImage)&&(identical(other.productImage, _this.productImage) || other.productImage == _this.productImage)&&(identical(other.mainServiceType, _this.mainServiceType) || other.mainServiceType == _this.mainServiceType)&&(identical(other.variantAttribute, _this.variantAttribute) || other.variantAttribute == _this.variantAttribute)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.fabricLength, _this.fabricLength) || other.fabricLength == _this.fabricLength)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&const DeepCollectionEquality().equals(other.peopleMeasurements, _this.peopleMeasurements)&&(identical(other.hourlyRentPrice, _this.hourlyRentPrice) || other.hourlyRentPrice == _this.hourlyRentPrice)&&(identical(other.deliveryStatus, _this.deliveryStatus) || other.deliveryStatus == _this.deliveryStatus)&&(identical(other.returnedAt, _this.returnedAt) || other.returnedAt == _this.returnedAt)&&(identical(other.stock, _this.stock) || other.stock == _this.stock)&&(identical(other.remainingStock, _this.remainingStock) || other.remainingStock == _this.remainingStock)&&(identical(other.attributes, _this.attributes) || other.attributes == _this.attributes));
}


@override
int get hashCode {
  final _this = this as ProductInfoEntity;
  return Object.hashAll([runtimeType,_this.id,_this.productId,_this.variantId,_this.serviceId,_this.name,_this.thumbnailImage,_this.productImage,_this.mainServiceType,_this.variantAttribute,_this.color,_this.category,_this.model,_this.quantity,_this.fabricLength,_this.amount,const DeepCollectionEquality().hash(_this.peopleMeasurements),_this.hourlyRentPrice,_this.deliveryStatus,_this.returnedAt,_this.stock,_this.remainingStock,_this.attributes]);
}

@override
String toString() {
  final _this = this as ProductInfoEntity;
  return 'ProductInfoEntity(id: ${_this.id}, productId: ${_this.productId}, variantId: ${_this.variantId}, serviceId: ${_this.serviceId}, name: ${_this.name}, thumbnailImage: ${_this.thumbnailImage}, productImage: ${_this.productImage}, mainServiceType: ${_this.mainServiceType}, variantAttribute: ${_this.variantAttribute}, color: ${_this.color}, category: ${_this.category}, model: ${_this.model}, quantity: ${_this.quantity}, fabricLength: ${_this.fabricLength}, amount: ${_this.amount}, peopleMeasurements: ${_this.peopleMeasurements}, hourlyRentPrice: ${_this.hourlyRentPrice}, deliveryStatus: ${_this.deliveryStatus}, returnedAt: ${_this.returnedAt}, stock: ${_this.stock}, remainingStock: ${_this.remainingStock}, attributes: ${_this.attributes})';
}


}

/// @nodoc
abstract mixin class $ProductInfoEntityCopyWith<$Res>  {
  factory $ProductInfoEntityCopyWith(ProductInfoEntity value, $Res Function(ProductInfoEntity) _then) = _$ProductInfoEntityCopyWithImpl;
@useResult
$Res call({
 int id, int? productId, int? variantId, int? serviceId, String name, String? thumbnailImage, String? productImage, MainServiceType? mainServiceType, String? variantAttribute, String? color, String? category, String? model, int quantity, double fabricLength, int amount, List<PersonMeasurementsEntity> peopleMeasurements, int? hourlyRentPrice, ProductDeliveryStatus deliveryStatus, String? returnedAt, int? stock, int? remainingStock, ProductAttributesEntity attributes
});


$ProductAttributesEntityCopyWith<$Res> get attributes;

}
/// @nodoc
class _$ProductInfoEntityCopyWithImpl<$Res>
    implements $ProductInfoEntityCopyWith<$Res> {
  _$ProductInfoEntityCopyWithImpl(this._self, this._then);

  final ProductInfoEntity _self;
  final $Res Function(ProductInfoEntity) _then;

/// Create a copy of ProductInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = freezed,Object? variantId = freezed,Object? serviceId = freezed,Object? name = null,Object? thumbnailImage = freezed,Object? productImage = freezed,Object? mainServiceType = freezed,Object? variantAttribute = freezed,Object? color = freezed,Object? category = freezed,Object? model = freezed,Object? quantity = null,Object? fabricLength = null,Object? amount = null,Object? peopleMeasurements = null,Object? hourlyRentPrice = freezed,Object? deliveryStatus = null,Object? returnedAt = freezed,Object? stock = freezed,Object? remainingStock = freezed,Object? attributes = null,}) {
  return _then(ProductInfoEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String?,productImage: freezed == productImage ? _self.productImage : productImage // ignore: cast_nullable_to_non_nullable
as String?,mainServiceType: freezed == mainServiceType ? _self.mainServiceType : mainServiceType // ignore: cast_nullable_to_non_nullable
as MainServiceType?,variantAttribute: freezed == variantAttribute ? _self.variantAttribute : variantAttribute // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,fabricLength: null == fabricLength ? _self.fabricLength : fabricLength // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,peopleMeasurements: null == peopleMeasurements ? _self.peopleMeasurements : peopleMeasurements // ignore: cast_nullable_to_non_nullable
as List<PersonMeasurementsEntity>,hourlyRentPrice: freezed == hourlyRentPrice ? _self.hourlyRentPrice : hourlyRentPrice // ignore: cast_nullable_to_non_nullable
as int?,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as ProductDeliveryStatus,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as String?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,remainingStock: freezed == remainingStock ? _self.remainingStock : remainingStock // ignore: cast_nullable_to_non_nullable
as int?,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ProductAttributesEntity,
  ));
}
/// Create a copy of ProductInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductAttributesEntityCopyWith<$Res> get attributes {
  
  return $ProductAttributesEntityCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductInfoEntity].
extension ProductInfoEntityPatterns on ProductInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? productId,  int? variantId,  int? serviceId,  String name,  String? thumbnailImage,  String? productImage,  MainServiceType? mainServiceType,  String? variantAttribute,  String? color,  String? category,  String? model,  int quantity,  double fabricLength,  int amount,  List<PersonMeasurementsEntity> peopleMeasurements,  int? hourlyRentPrice,  ProductDeliveryStatus deliveryStatus,  String? returnedAt,  int? stock,  int? remainingStock,  ProductAttributesEntity attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductInfoEntity() when $default != null:
return $default(_that.id,_that.productId,_that.variantId,_that.serviceId,_that.name,_that.thumbnailImage,_that.productImage,_that.mainServiceType,_that.variantAttribute,_that.color,_that.category,_that.model,_that.quantity,_that.fabricLength,_that.amount,_that.peopleMeasurements,_that.hourlyRentPrice,_that.deliveryStatus,_that.returnedAt,_that.stock,_that.remainingStock,_that.attributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? productId,  int? variantId,  int? serviceId,  String name,  String? thumbnailImage,  String? productImage,  MainServiceType? mainServiceType,  String? variantAttribute,  String? color,  String? category,  String? model,  int quantity,  double fabricLength,  int amount,  List<PersonMeasurementsEntity> peopleMeasurements,  int? hourlyRentPrice,  ProductDeliveryStatus deliveryStatus,  String? returnedAt,  int? stock,  int? remainingStock,  ProductAttributesEntity attributes)  $default,) {final _that = this;
switch (_that) {
case _ProductInfoEntity():
return $default(_that.id,_that.productId,_that.variantId,_that.serviceId,_that.name,_that.thumbnailImage,_that.productImage,_that.mainServiceType,_that.variantAttribute,_that.color,_that.category,_that.model,_that.quantity,_that.fabricLength,_that.amount,_that.peopleMeasurements,_that.hourlyRentPrice,_that.deliveryStatus,_that.returnedAt,_that.stock,_that.remainingStock,_that.attributes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? productId,  int? variantId,  int? serviceId,  String name,  String? thumbnailImage,  String? productImage,  MainServiceType? mainServiceType,  String? variantAttribute,  String? color,  String? category,  String? model,  int quantity,  double fabricLength,  int amount,  List<PersonMeasurementsEntity> peopleMeasurements,  int? hourlyRentPrice,  ProductDeliveryStatus deliveryStatus,  String? returnedAt,  int? stock,  int? remainingStock,  ProductAttributesEntity attributes)?  $default,) {final _that = this;
switch (_that) {
case _ProductInfoEntity() when $default != null:
return $default(_that.id,_that.productId,_that.variantId,_that.serviceId,_that.name,_that.thumbnailImage,_that.productImage,_that.mainServiceType,_that.variantAttribute,_that.color,_that.category,_that.model,_that.quantity,_that.fabricLength,_that.amount,_that.peopleMeasurements,_that.hourlyRentPrice,_that.deliveryStatus,_that.returnedAt,_that.stock,_that.remainingStock,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc


class _ProductInfoEntity implements ProductInfoEntity {
  const _ProductInfoEntity({required this.id, required this.productId, required this.variantId, this.serviceId, required this.name, required this.thumbnailImage, this.productImage, this.mainServiceType, this.variantAttribute, this.color, this.category, this.model, required this.quantity, required this.fabricLength, required this.amount,  List<PersonMeasurementsEntity> peopleMeasurements = const [], this.hourlyRentPrice, this.deliveryStatus = ProductDeliveryStatus.notReturned, this.returnedAt, this.stock, this.remainingStock, this.attributes = const ProductAttributesEntity()}): _peopleMeasurements = peopleMeasurements;
  

@override final  int id;
@override final  int? productId;
@override final  int? variantId;
@override final  int? serviceId;
@override final  String name;
@override final  String? thumbnailImage;
@override final  String? productImage;
@override final  MainServiceType? mainServiceType;
@override final  String? variantAttribute;
@override final  String? color;
@override final  String? category;
@override final  String? model;
@override final  int quantity;
@override final  double fabricLength;
@override final  int amount;
 final  List<PersonMeasurementsEntity> _peopleMeasurements;
@override@JsonKey() List<PersonMeasurementsEntity> get peopleMeasurements {
  if (_peopleMeasurements is EqualUnmodifiableListView) return _peopleMeasurements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_peopleMeasurements);
}

@override final  int? hourlyRentPrice;
@override@JsonKey() final  ProductDeliveryStatus deliveryStatus;
@override final  String? returnedAt;
@override final  int? stock;
@override final  int? remainingStock;
@override@JsonKey() final  ProductAttributesEntity attributes;

/// Create a copy of ProductInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductInfoEntityCopyWith<_ProductInfoEntity> get copyWith => __$ProductInfoEntityCopyWithImpl<_ProductInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.name, name) || other.name == name)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.productImage, productImage) || other.productImage == productImage)&&(identical(other.mainServiceType, mainServiceType) || other.mainServiceType == mainServiceType)&&(identical(other.variantAttribute, variantAttribute) || other.variantAttribute == variantAttribute)&&(identical(other.color, color) || other.color == color)&&(identical(other.category, category) || other.category == category)&&(identical(other.model, model) || other.model == model)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.fabricLength, fabricLength) || other.fabricLength == fabricLength)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.peopleMeasurements, _peopleMeasurements)&&(identical(other.hourlyRentPrice, hourlyRentPrice) || other.hourlyRentPrice == hourlyRentPrice)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.returnedAt, returnedAt) || other.returnedAt == returnedAt)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.remainingStock, remainingStock) || other.remainingStock == remainingStock)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,productId,variantId,serviceId,name,thumbnailImage,productImage,mainServiceType,variantAttribute,color,category,model,quantity,fabricLength,amount,const DeepCollectionEquality().hash(_peopleMeasurements),hourlyRentPrice,deliveryStatus,returnedAt,stock,remainingStock,attributes]);
}

@override
String toString() {
    return 'ProductInfoEntity(id: $id, productId: $productId, variantId: $variantId, serviceId: $serviceId, name: $name, thumbnailImage: $thumbnailImage, productImage: $productImage, mainServiceType: $mainServiceType, variantAttribute: $variantAttribute, color: $color, category: $category, model: $model, quantity: $quantity, fabricLength: $fabricLength, amount: $amount, peopleMeasurements: $peopleMeasurements, hourlyRentPrice: $hourlyRentPrice, deliveryStatus: $deliveryStatus, returnedAt: $returnedAt, stock: $stock, remainingStock: $remainingStock, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$ProductInfoEntityCopyWith<$Res> implements $ProductInfoEntityCopyWith<$Res> {
  factory _$ProductInfoEntityCopyWith(_ProductInfoEntity value, $Res Function(_ProductInfoEntity) _then) = __$ProductInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int? productId, int? variantId, int? serviceId, String name, String? thumbnailImage, String? productImage, MainServiceType? mainServiceType, String? variantAttribute, String? color, String? category, String? model, int quantity, double fabricLength, int amount, List<PersonMeasurementsEntity> peopleMeasurements, int? hourlyRentPrice, ProductDeliveryStatus deliveryStatus, String? returnedAt, int? stock, int? remainingStock, ProductAttributesEntity attributes
});


@override $ProductAttributesEntityCopyWith<$Res> get attributes;

}
/// @nodoc
class __$ProductInfoEntityCopyWithImpl<$Res>
    implements _$ProductInfoEntityCopyWith<$Res> {
  __$ProductInfoEntityCopyWithImpl(this._self, this._then);

  final _ProductInfoEntity _self;
  final $Res Function(_ProductInfoEntity) _then;

/// Create a copy of ProductInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = freezed,Object? variantId = freezed,Object? serviceId = freezed,Object? name = null,Object? thumbnailImage = freezed,Object? productImage = freezed,Object? mainServiceType = freezed,Object? variantAttribute = freezed,Object? color = freezed,Object? category = freezed,Object? model = freezed,Object? quantity = null,Object? fabricLength = null,Object? amount = null,Object? peopleMeasurements = null,Object? hourlyRentPrice = freezed,Object? deliveryStatus = null,Object? returnedAt = freezed,Object? stock = freezed,Object? remainingStock = freezed,Object? attributes = null,}) {
  return _then(_ProductInfoEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String?,productImage: freezed == productImage ? _self.productImage : productImage // ignore: cast_nullable_to_non_nullable
as String?,mainServiceType: freezed == mainServiceType ? _self.mainServiceType : mainServiceType // ignore: cast_nullable_to_non_nullable
as MainServiceType?,variantAttribute: freezed == variantAttribute ? _self.variantAttribute : variantAttribute // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,fabricLength: null == fabricLength ? _self.fabricLength : fabricLength // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,peopleMeasurements: null == peopleMeasurements ? _self._peopleMeasurements : peopleMeasurements // ignore: cast_nullable_to_non_nullable
as List<PersonMeasurementsEntity>,hourlyRentPrice: freezed == hourlyRentPrice ? _self.hourlyRentPrice : hourlyRentPrice // ignore: cast_nullable_to_non_nullable
as int?,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as ProductDeliveryStatus,returnedAt: freezed == returnedAt ? _self.returnedAt : returnedAt // ignore: cast_nullable_to_non_nullable
as String?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,remainingStock: freezed == remainingStock ? _self.remainingStock : remainingStock // ignore: cast_nullable_to_non_nullable
as int?,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ProductAttributesEntity,
  ));
}

/// Create a copy of ProductInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductAttributesEntityCopyWith<$Res> get attributes {
  
  return $ProductAttributesEntityCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}

// dart format on
