// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaleDetailsEntity {

 int get id; String get clientPhone;// Full client record as returned by the sale-details endpoint. Mobile's
// sale-details screen only ever needs [clientPhone] and doesn't request
// this; web's customer-details section and its "edit sale as booking"
// flow need the fuller record (name, phone2), so this stays
// nullable/web-only rather than something mobile has to populate.
 ClientEntity? get client; int? get staffId; String? get staffName; String get address; String get invoiceId; String get description; String get saleDate; int get totalAmount; int get discountAmount; int get paidAmount; int get productTotal; int get balanceDueAmount; String get createdAt; List<ProductSaleInfoEntity> get products; SaleDetailsPaymentHistoryEntity get payment; List<AppliedTaxEntity> get appliedTaxes;
/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleDetailsEntityCopyWith<SaleDetailsEntity> get copyWith => _$SaleDetailsEntityCopyWithImpl<SaleDetailsEntity>(this as SaleDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.clientPhone, clientPhone) || other.clientPhone == clientPhone)&&(identical(other.client, client) || other.client == client)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.staffName, staffName) || other.staffName == staffName)&&(identical(other.address, address) || other.address == address)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.saleDate, saleDate) || other.saleDate == saleDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.productTotal, productTotal) || other.productTotal == productTotal)&&(identical(other.balanceDueAmount, balanceDueAmount) || other.balanceDueAmount == balanceDueAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.payment, payment) || other.payment == payment)&&const DeepCollectionEquality().equals(other.appliedTaxes, appliedTaxes));
}


@override
int get hashCode => Object.hash(runtimeType,id,clientPhone,client,staffId,staffName,address,invoiceId,description,saleDate,totalAmount,discountAmount,paidAmount,productTotal,balanceDueAmount,createdAt,const DeepCollectionEquality().hash(products),payment,const DeepCollectionEquality().hash(appliedTaxes));

@override
String toString() {
  return 'SaleDetailsEntity(id: $id, clientPhone: $clientPhone, client: $client, staffId: $staffId, staffName: $staffName, address: $address, invoiceId: $invoiceId, description: $description, saleDate: $saleDate, totalAmount: $totalAmount, discountAmount: $discountAmount, paidAmount: $paidAmount, productTotal: $productTotal, balanceDueAmount: $balanceDueAmount, createdAt: $createdAt, products: $products, payment: $payment, appliedTaxes: $appliedTaxes)';
}


}

/// @nodoc
abstract mixin class $SaleDetailsEntityCopyWith<$Res>  {
  factory $SaleDetailsEntityCopyWith(SaleDetailsEntity value, $Res Function(SaleDetailsEntity) _then) = _$SaleDetailsEntityCopyWithImpl;
@useResult
$Res call({
 int id, String clientPhone, ClientEntity? client, int? staffId, String? staffName, String address, String invoiceId, String description, String saleDate, int totalAmount, int discountAmount, int paidAmount, int productTotal, int balanceDueAmount, String createdAt, List<ProductSaleInfoEntity> products, SaleDetailsPaymentHistoryEntity payment, List<AppliedTaxEntity> appliedTaxes
});


$ClientEntityCopyWith<$Res>? get client;$SaleDetailsPaymentHistoryEntityCopyWith<$Res> get payment;

}
/// @nodoc
class _$SaleDetailsEntityCopyWithImpl<$Res>
    implements $SaleDetailsEntityCopyWith<$Res> {
  _$SaleDetailsEntityCopyWithImpl(this._self, this._then);

  final SaleDetailsEntity _self;
  final $Res Function(SaleDetailsEntity) _then;

/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? clientPhone = null,Object? client = freezed,Object? staffId = freezed,Object? staffName = freezed,Object? address = null,Object? invoiceId = null,Object? description = null,Object? saleDate = null,Object? totalAmount = null,Object? discountAmount = null,Object? paidAmount = null,Object? productTotal = null,Object? balanceDueAmount = null,Object? createdAt = null,Object? products = null,Object? payment = null,Object? appliedTaxes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,clientPhone: null == clientPhone ? _self.clientPhone : clientPhone // ignore: cast_nullable_to_non_nullable
as String,client: freezed == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as ClientEntity?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,staffName: freezed == staffName ? _self.staffName : staffName // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,saleDate: null == saleDate ? _self.saleDate : saleDate // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,productTotal: null == productTotal ? _self.productTotal : productTotal // ignore: cast_nullable_to_non_nullable
as int,balanceDueAmount: null == balanceDueAmount ? _self.balanceDueAmount : balanceDueAmount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSaleInfoEntity>,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as SaleDetailsPaymentHistoryEntity,appliedTaxes: null == appliedTaxes ? _self.appliedTaxes : appliedTaxes // ignore: cast_nullable_to_non_nullable
as List<AppliedTaxEntity>,
  ));
}
/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res>? get client {
    if (_self.client == null) {
    return null;
  }

  return $ClientEntityCopyWith<$Res>(_self.client!, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleDetailsPaymentHistoryEntityCopyWith<$Res> get payment {
  
  return $SaleDetailsPaymentHistoryEntityCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaleDetailsEntity].
extension SaleDetailsEntityPatterns on SaleDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _SaleDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SaleDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String clientPhone,  ClientEntity? client,  int? staffId,  String? staffName,  String address,  String invoiceId,  String description,  String saleDate,  int totalAmount,  int discountAmount,  int paidAmount,  int productTotal,  int balanceDueAmount,  String createdAt,  List<ProductSaleInfoEntity> products,  SaleDetailsPaymentHistoryEntity payment,  List<AppliedTaxEntity> appliedTaxes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleDetailsEntity() when $default != null:
return $default(_that.id,_that.clientPhone,_that.client,_that.staffId,_that.staffName,_that.address,_that.invoiceId,_that.description,_that.saleDate,_that.totalAmount,_that.discountAmount,_that.paidAmount,_that.productTotal,_that.balanceDueAmount,_that.createdAt,_that.products,_that.payment,_that.appliedTaxes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String clientPhone,  ClientEntity? client,  int? staffId,  String? staffName,  String address,  String invoiceId,  String description,  String saleDate,  int totalAmount,  int discountAmount,  int paidAmount,  int productTotal,  int balanceDueAmount,  String createdAt,  List<ProductSaleInfoEntity> products,  SaleDetailsPaymentHistoryEntity payment,  List<AppliedTaxEntity> appliedTaxes)  $default,) {final _that = this;
switch (_that) {
case _SaleDetailsEntity():
return $default(_that.id,_that.clientPhone,_that.client,_that.staffId,_that.staffName,_that.address,_that.invoiceId,_that.description,_that.saleDate,_that.totalAmount,_that.discountAmount,_that.paidAmount,_that.productTotal,_that.balanceDueAmount,_that.createdAt,_that.products,_that.payment,_that.appliedTaxes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String clientPhone,  ClientEntity? client,  int? staffId,  String? staffName,  String address,  String invoiceId,  String description,  String saleDate,  int totalAmount,  int discountAmount,  int paidAmount,  int productTotal,  int balanceDueAmount,  String createdAt,  List<ProductSaleInfoEntity> products,  SaleDetailsPaymentHistoryEntity payment,  List<AppliedTaxEntity> appliedTaxes)?  $default,) {final _that = this;
switch (_that) {
case _SaleDetailsEntity() when $default != null:
return $default(_that.id,_that.clientPhone,_that.client,_that.staffId,_that.staffName,_that.address,_that.invoiceId,_that.description,_that.saleDate,_that.totalAmount,_that.discountAmount,_that.paidAmount,_that.productTotal,_that.balanceDueAmount,_that.createdAt,_that.products,_that.payment,_that.appliedTaxes);case _:
  return null;

}
}

}

/// @nodoc


class _SaleDetailsEntity implements SaleDetailsEntity {
  const _SaleDetailsEntity({required this.id, required this.clientPhone, this.client, this.staffId, this.staffName, required this.address, required this.invoiceId, required this.description, required this.saleDate, required this.totalAmount, required this.discountAmount, required this.paidAmount, required this.productTotal, required this.balanceDueAmount, required this.createdAt, required final  List<ProductSaleInfoEntity> products, required this.payment, final  List<AppliedTaxEntity> appliedTaxes = const []}): _products = products,_appliedTaxes = appliedTaxes;
  

@override final  int id;
@override final  String clientPhone;
// Full client record as returned by the sale-details endpoint. Mobile's
// sale-details screen only ever needs [clientPhone] and doesn't request
// this; web's customer-details section and its "edit sale as booking"
// flow need the fuller record (name, phone2), so this stays
// nullable/web-only rather than something mobile has to populate.
@override final  ClientEntity? client;
@override final  int? staffId;
@override final  String? staffName;
@override final  String address;
@override final  String invoiceId;
@override final  String description;
@override final  String saleDate;
@override final  int totalAmount;
@override final  int discountAmount;
@override final  int paidAmount;
@override final  int productTotal;
@override final  int balanceDueAmount;
@override final  String createdAt;
 final  List<ProductSaleInfoEntity> _products;
@override List<ProductSaleInfoEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  SaleDetailsPaymentHistoryEntity payment;
 final  List<AppliedTaxEntity> _appliedTaxes;
@override@JsonKey() List<AppliedTaxEntity> get appliedTaxes {
  if (_appliedTaxes is EqualUnmodifiableListView) return _appliedTaxes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliedTaxes);
}


/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleDetailsEntityCopyWith<_SaleDetailsEntity> get copyWith => __$SaleDetailsEntityCopyWithImpl<_SaleDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.clientPhone, clientPhone) || other.clientPhone == clientPhone)&&(identical(other.client, client) || other.client == client)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.staffName, staffName) || other.staffName == staffName)&&(identical(other.address, address) || other.address == address)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.description, description) || other.description == description)&&(identical(other.saleDate, saleDate) || other.saleDate == saleDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.productTotal, productTotal) || other.productTotal == productTotal)&&(identical(other.balanceDueAmount, balanceDueAmount) || other.balanceDueAmount == balanceDueAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.payment, payment) || other.payment == payment)&&const DeepCollectionEquality().equals(other._appliedTaxes, _appliedTaxes));
}


@override
int get hashCode => Object.hash(runtimeType,id,clientPhone,client,staffId,staffName,address,invoiceId,description,saleDate,totalAmount,discountAmount,paidAmount,productTotal,balanceDueAmount,createdAt,const DeepCollectionEquality().hash(_products),payment,const DeepCollectionEquality().hash(_appliedTaxes));

@override
String toString() {
  return 'SaleDetailsEntity(id: $id, clientPhone: $clientPhone, client: $client, staffId: $staffId, staffName: $staffName, address: $address, invoiceId: $invoiceId, description: $description, saleDate: $saleDate, totalAmount: $totalAmount, discountAmount: $discountAmount, paidAmount: $paidAmount, productTotal: $productTotal, balanceDueAmount: $balanceDueAmount, createdAt: $createdAt, products: $products, payment: $payment, appliedTaxes: $appliedTaxes)';
}


}

/// @nodoc
abstract mixin class _$SaleDetailsEntityCopyWith<$Res> implements $SaleDetailsEntityCopyWith<$Res> {
  factory _$SaleDetailsEntityCopyWith(_SaleDetailsEntity value, $Res Function(_SaleDetailsEntity) _then) = __$SaleDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String clientPhone, ClientEntity? client, int? staffId, String? staffName, String address, String invoiceId, String description, String saleDate, int totalAmount, int discountAmount, int paidAmount, int productTotal, int balanceDueAmount, String createdAt, List<ProductSaleInfoEntity> products, SaleDetailsPaymentHistoryEntity payment, List<AppliedTaxEntity> appliedTaxes
});


@override $ClientEntityCopyWith<$Res>? get client;@override $SaleDetailsPaymentHistoryEntityCopyWith<$Res> get payment;

}
/// @nodoc
class __$SaleDetailsEntityCopyWithImpl<$Res>
    implements _$SaleDetailsEntityCopyWith<$Res> {
  __$SaleDetailsEntityCopyWithImpl(this._self, this._then);

  final _SaleDetailsEntity _self;
  final $Res Function(_SaleDetailsEntity) _then;

/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? clientPhone = null,Object? client = freezed,Object? staffId = freezed,Object? staffName = freezed,Object? address = null,Object? invoiceId = null,Object? description = null,Object? saleDate = null,Object? totalAmount = null,Object? discountAmount = null,Object? paidAmount = null,Object? productTotal = null,Object? balanceDueAmount = null,Object? createdAt = null,Object? products = null,Object? payment = null,Object? appliedTaxes = null,}) {
  return _then(_SaleDetailsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,clientPhone: null == clientPhone ? _self.clientPhone : clientPhone // ignore: cast_nullable_to_non_nullable
as String,client: freezed == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as ClientEntity?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,staffName: freezed == staffName ? _self.staffName : staffName // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,saleDate: null == saleDate ? _self.saleDate : saleDate // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,productTotal: null == productTotal ? _self.productTotal : productTotal // ignore: cast_nullable_to_non_nullable
as int,balanceDueAmount: null == balanceDueAmount ? _self.balanceDueAmount : balanceDueAmount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductSaleInfoEntity>,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as SaleDetailsPaymentHistoryEntity,appliedTaxes: null == appliedTaxes ? _self._appliedTaxes : appliedTaxes // ignore: cast_nullable_to_non_nullable
as List<AppliedTaxEntity>,
  ));
}

/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res>? get client {
    if (_self.client == null) {
    return null;
  }

  return $ClientEntityCopyWith<$Res>(_self.client!, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of SaleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleDetailsPaymentHistoryEntityCopyWith<$Res> get payment {
  
  return $SaleDetailsPaymentHistoryEntityCopyWith<$Res>(_self.payment, (value) {
    return _then(_self.copyWith(payment: value));
  });
}
}

/// @nodoc
mixin _$ProductSaleInfoEntity {

 int get id; int get productId; int get variantId; String get name; String? get variantAttribute; int get quantity; double get fabricLength; int get price; int get subtotal; String? get image; String? get thumbnailImage; String? get color; String? get category; String? get model; MainServiceType? get mainServiceType; ProductAttributesEntity get attributes;
/// Create a copy of ProductSaleInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSaleInfoEntityCopyWith<ProductSaleInfoEntity> get copyWith => _$ProductSaleInfoEntityCopyWithImpl<ProductSaleInfoEntity>(this as ProductSaleInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSaleInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.variantAttribute, variantAttribute) || other.variantAttribute == variantAttribute)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.fabricLength, fabricLength) || other.fabricLength == fabricLength)&&(identical(other.price, price) || other.price == price)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.image, image) || other.image == image)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.color, color) || other.color == color)&&(identical(other.category, category) || other.category == category)&&(identical(other.model, model) || other.model == model)&&(identical(other.mainServiceType, mainServiceType) || other.mainServiceType == mainServiceType)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,variantId,name,variantAttribute,quantity,fabricLength,price,subtotal,image,thumbnailImage,color,category,model,mainServiceType,attributes);

@override
String toString() {
  return 'ProductSaleInfoEntity(id: $id, productId: $productId, variantId: $variantId, name: $name, variantAttribute: $variantAttribute, quantity: $quantity, fabricLength: $fabricLength, price: $price, subtotal: $subtotal, image: $image, thumbnailImage: $thumbnailImage, color: $color, category: $category, model: $model, mainServiceType: $mainServiceType, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $ProductSaleInfoEntityCopyWith<$Res>  {
  factory $ProductSaleInfoEntityCopyWith(ProductSaleInfoEntity value, $Res Function(ProductSaleInfoEntity) _then) = _$ProductSaleInfoEntityCopyWithImpl;
@useResult
$Res call({
 int id, int productId, int variantId, String name, String? variantAttribute, int quantity, double fabricLength, int price, int subtotal, String? image, String? thumbnailImage, String? color, String? category, String? model, MainServiceType? mainServiceType, ProductAttributesEntity attributes
});


$ProductAttributesEntityCopyWith<$Res> get attributes;

}
/// @nodoc
class _$ProductSaleInfoEntityCopyWithImpl<$Res>
    implements $ProductSaleInfoEntityCopyWith<$Res> {
  _$ProductSaleInfoEntityCopyWithImpl(this._self, this._then);

  final ProductSaleInfoEntity _self;
  final $Res Function(ProductSaleInfoEntity) _then;

/// Create a copy of ProductSaleInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? variantId = null,Object? name = null,Object? variantAttribute = freezed,Object? quantity = null,Object? fabricLength = null,Object? price = null,Object? subtotal = null,Object? image = freezed,Object? thumbnailImage = freezed,Object? color = freezed,Object? category = freezed,Object? model = freezed,Object? mainServiceType = freezed,Object? attributes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,variantAttribute: freezed == variantAttribute ? _self.variantAttribute : variantAttribute // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,fabricLength: null == fabricLength ? _self.fabricLength : fabricLength // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,mainServiceType: freezed == mainServiceType ? _self.mainServiceType : mainServiceType // ignore: cast_nullable_to_non_nullable
as MainServiceType?,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ProductAttributesEntity,
  ));
}
/// Create a copy of ProductSaleInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductAttributesEntityCopyWith<$Res> get attributes {
  
  return $ProductAttributesEntityCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductSaleInfoEntity].
extension ProductSaleInfoEntityPatterns on ProductSaleInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSaleInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSaleInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSaleInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductSaleInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSaleInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSaleInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int productId,  int variantId,  String name,  String? variantAttribute,  int quantity,  double fabricLength,  int price,  int subtotal,  String? image,  String? thumbnailImage,  String? color,  String? category,  String? model,  MainServiceType? mainServiceType,  ProductAttributesEntity attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSaleInfoEntity() when $default != null:
return $default(_that.id,_that.productId,_that.variantId,_that.name,_that.variantAttribute,_that.quantity,_that.fabricLength,_that.price,_that.subtotal,_that.image,_that.thumbnailImage,_that.color,_that.category,_that.model,_that.mainServiceType,_that.attributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int productId,  int variantId,  String name,  String? variantAttribute,  int quantity,  double fabricLength,  int price,  int subtotal,  String? image,  String? thumbnailImage,  String? color,  String? category,  String? model,  MainServiceType? mainServiceType,  ProductAttributesEntity attributes)  $default,) {final _that = this;
switch (_that) {
case _ProductSaleInfoEntity():
return $default(_that.id,_that.productId,_that.variantId,_that.name,_that.variantAttribute,_that.quantity,_that.fabricLength,_that.price,_that.subtotal,_that.image,_that.thumbnailImage,_that.color,_that.category,_that.model,_that.mainServiceType,_that.attributes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int productId,  int variantId,  String name,  String? variantAttribute,  int quantity,  double fabricLength,  int price,  int subtotal,  String? image,  String? thumbnailImage,  String? color,  String? category,  String? model,  MainServiceType? mainServiceType,  ProductAttributesEntity attributes)?  $default,) {final _that = this;
switch (_that) {
case _ProductSaleInfoEntity() when $default != null:
return $default(_that.id,_that.productId,_that.variantId,_that.name,_that.variantAttribute,_that.quantity,_that.fabricLength,_that.price,_that.subtotal,_that.image,_that.thumbnailImage,_that.color,_that.category,_that.model,_that.mainServiceType,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc


class _ProductSaleInfoEntity implements ProductSaleInfoEntity {
  const _ProductSaleInfoEntity({required this.id, required this.productId, required this.variantId, required this.name, this.variantAttribute, required this.quantity, required this.fabricLength, required this.price, required this.subtotal, this.image, this.thumbnailImage, this.color, this.category, this.model, this.mainServiceType, this.attributes = const ProductAttributesEntity()});
  

@override final  int id;
@override final  int productId;
@override final  int variantId;
@override final  String name;
@override final  String? variantAttribute;
@override final  int quantity;
@override final  double fabricLength;
@override final  int price;
@override final  int subtotal;
@override final  String? image;
@override final  String? thumbnailImage;
@override final  String? color;
@override final  String? category;
@override final  String? model;
@override final  MainServiceType? mainServiceType;
@override@JsonKey() final  ProductAttributesEntity attributes;

/// Create a copy of ProductSaleInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSaleInfoEntityCopyWith<_ProductSaleInfoEntity> get copyWith => __$ProductSaleInfoEntityCopyWithImpl<_ProductSaleInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSaleInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.variantAttribute, variantAttribute) || other.variantAttribute == variantAttribute)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.fabricLength, fabricLength) || other.fabricLength == fabricLength)&&(identical(other.price, price) || other.price == price)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.image, image) || other.image == image)&&(identical(other.thumbnailImage, thumbnailImage) || other.thumbnailImage == thumbnailImage)&&(identical(other.color, color) || other.color == color)&&(identical(other.category, category) || other.category == category)&&(identical(other.model, model) || other.model == model)&&(identical(other.mainServiceType, mainServiceType) || other.mainServiceType == mainServiceType)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}


@override
int get hashCode => Object.hash(runtimeType,id,productId,variantId,name,variantAttribute,quantity,fabricLength,price,subtotal,image,thumbnailImage,color,category,model,mainServiceType,attributes);

@override
String toString() {
  return 'ProductSaleInfoEntity(id: $id, productId: $productId, variantId: $variantId, name: $name, variantAttribute: $variantAttribute, quantity: $quantity, fabricLength: $fabricLength, price: $price, subtotal: $subtotal, image: $image, thumbnailImage: $thumbnailImage, color: $color, category: $category, model: $model, mainServiceType: $mainServiceType, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$ProductSaleInfoEntityCopyWith<$Res> implements $ProductSaleInfoEntityCopyWith<$Res> {
  factory _$ProductSaleInfoEntityCopyWith(_ProductSaleInfoEntity value, $Res Function(_ProductSaleInfoEntity) _then) = __$ProductSaleInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, int variantId, String name, String? variantAttribute, int quantity, double fabricLength, int price, int subtotal, String? image, String? thumbnailImage, String? color, String? category, String? model, MainServiceType? mainServiceType, ProductAttributesEntity attributes
});


@override $ProductAttributesEntityCopyWith<$Res> get attributes;

}
/// @nodoc
class __$ProductSaleInfoEntityCopyWithImpl<$Res>
    implements _$ProductSaleInfoEntityCopyWith<$Res> {
  __$ProductSaleInfoEntityCopyWithImpl(this._self, this._then);

  final _ProductSaleInfoEntity _self;
  final $Res Function(_ProductSaleInfoEntity) _then;

/// Create a copy of ProductSaleInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? variantId = null,Object? name = null,Object? variantAttribute = freezed,Object? quantity = null,Object? fabricLength = null,Object? price = null,Object? subtotal = null,Object? image = freezed,Object? thumbnailImage = freezed,Object? color = freezed,Object? category = freezed,Object? model = freezed,Object? mainServiceType = freezed,Object? attributes = null,}) {
  return _then(_ProductSaleInfoEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,variantAttribute: freezed == variantAttribute ? _self.variantAttribute : variantAttribute // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,fabricLength: null == fabricLength ? _self.fabricLength : fabricLength // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,thumbnailImage: freezed == thumbnailImage ? _self.thumbnailImage : thumbnailImage // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,mainServiceType: freezed == mainServiceType ? _self.mainServiceType : mainServiceType // ignore: cast_nullable_to_non_nullable
as MainServiceType?,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ProductAttributesEntity,
  ));
}

/// Create a copy of ProductSaleInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductAttributesEntityCopyWith<$Res> get attributes {
  
  return $ProductAttributesEntityCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}

/// @nodoc
mixin _$SaleDetailsPaymentHistoryEntity {

 int get id; int get amount; String? get accountName; int? get accountId; String get date; PaymentMethod get paymentMethod;
/// Create a copy of SaleDetailsPaymentHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleDetailsPaymentHistoryEntityCopyWith<SaleDetailsPaymentHistoryEntity> get copyWith => _$SaleDetailsPaymentHistoryEntityCopyWithImpl<SaleDetailsPaymentHistoryEntity>(this as SaleDetailsPaymentHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleDetailsPaymentHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,date,paymentMethod);

@override
String toString() {
  return 'SaleDetailsPaymentHistoryEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, date: $date, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $SaleDetailsPaymentHistoryEntityCopyWith<$Res>  {
  factory $SaleDetailsPaymentHistoryEntityCopyWith(SaleDetailsPaymentHistoryEntity value, $Res Function(SaleDetailsPaymentHistoryEntity) _then) = _$SaleDetailsPaymentHistoryEntityCopyWithImpl;
@useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String date, PaymentMethod paymentMethod
});




}
/// @nodoc
class _$SaleDetailsPaymentHistoryEntityCopyWithImpl<$Res>
    implements $SaleDetailsPaymentHistoryEntityCopyWith<$Res> {
  _$SaleDetailsPaymentHistoryEntityCopyWithImpl(this._self, this._then);

  final SaleDetailsPaymentHistoryEntity _self;
  final $Res Function(SaleDetailsPaymentHistoryEntity) _then;

/// Create a copy of SaleDetailsPaymentHistoryEntity
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


/// Adds pattern-matching-related methods to [SaleDetailsPaymentHistoryEntity].
extension SaleDetailsPaymentHistoryEntityPatterns on SaleDetailsPaymentHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleDetailsPaymentHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleDetailsPaymentHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleDetailsPaymentHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SaleDetailsPaymentHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleDetailsPaymentHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SaleDetailsPaymentHistoryEntity() when $default != null:
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
case _SaleDetailsPaymentHistoryEntity() when $default != null:
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
case _SaleDetailsPaymentHistoryEntity():
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
case _SaleDetailsPaymentHistoryEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.date,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc


class _SaleDetailsPaymentHistoryEntity implements SaleDetailsPaymentHistoryEntity {
  const _SaleDetailsPaymentHistoryEntity({required this.id, required this.amount, required this.accountName, required this.accountId, required this.date, required this.paymentMethod});
  

@override final  int id;
@override final  int amount;
@override final  String? accountName;
@override final  int? accountId;
@override final  String date;
@override final  PaymentMethod paymentMethod;

/// Create a copy of SaleDetailsPaymentHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleDetailsPaymentHistoryEntityCopyWith<_SaleDetailsPaymentHistoryEntity> get copyWith => __$SaleDetailsPaymentHistoryEntityCopyWithImpl<_SaleDetailsPaymentHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleDetailsPaymentHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,date,paymentMethod);

@override
String toString() {
  return 'SaleDetailsPaymentHistoryEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, date: $date, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$SaleDetailsPaymentHistoryEntityCopyWith<$Res> implements $SaleDetailsPaymentHistoryEntityCopyWith<$Res> {
  factory _$SaleDetailsPaymentHistoryEntityCopyWith(_SaleDetailsPaymentHistoryEntity value, $Res Function(_SaleDetailsPaymentHistoryEntity) _then) = __$SaleDetailsPaymentHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String date, PaymentMethod paymentMethod
});




}
/// @nodoc
class __$SaleDetailsPaymentHistoryEntityCopyWithImpl<$Res>
    implements _$SaleDetailsPaymentHistoryEntityCopyWith<$Res> {
  __$SaleDetailsPaymentHistoryEntityCopyWithImpl(this._self, this._then);

  final _SaleDetailsPaymentHistoryEntity _self;
  final $Res Function(_SaleDetailsPaymentHistoryEntity) _then;

/// Create a copy of SaleDetailsPaymentHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? date = null,Object? paymentMethod = null,}) {
  return _then(_SaleDetailsPaymentHistoryEntity(
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
