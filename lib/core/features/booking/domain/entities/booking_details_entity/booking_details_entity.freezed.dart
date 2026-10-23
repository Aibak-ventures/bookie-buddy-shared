// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingDetailsEntity {

 int get id; String get invoiceId; String get createdAt; String get bookedDate; String? get bookingCompletedDate; String? get pickupDate; String get returnDate; String? get coolingPeriodDate; CoolingPeriodMode? get coolingPeriodType; int get totalAmount; int get totalAmountWithSecurity; int? get discountAmount; int get paidAmount; int get paidAmountWithSecurity; int get totalPayable; PurchaseMode get purchaseMode; BookingStatus get bookingStatus; PaymentStatus get paymentStatus; DeliveryStatus get deliveryStatus; String? get staffName; int? get staffId; BookingOtherDetailsEntity get otherDetails; String? get address; ClientEntity get client; String? get description; List<ProductInfoEntity> get bookedItems; List<AdditionalChargesEntity> get additionalCharges; List<BookingPaymentHistoryEntity> get paymentHistory; List<BookingSecurityRefundHistoryEntity> get securityTransactionHistory; BookingSecuritySummaryEntity get securityTransactionSummary; List<BookingRefundHistoryEntity> get refundHistory; BookingSecurityPaymentEntity? get securityPayment; String? get pickupTime; String? get returnTime; int get refundTotal; int get refundableBalance; List<String> get documents; DocumentDetailsEntity? get documentsDetails; BookingRentalUnit get rentalUnit; bool get isSecurityPaid; int get balanceAmount; List<AppliedTaxEntity> get appliedTaxes;
/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingDetailsEntityCopyWith<BookingDetailsEntity> get copyWith => _$BookingDetailsEntityCopyWithImpl<BookingDetailsEntity>(this as BookingDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BookingDetailsEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingDetailsEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.invoiceId, _this.invoiceId) || other.invoiceId == _this.invoiceId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.bookedDate, _this.bookedDate) || other.bookedDate == _this.bookedDate)&&(identical(other.bookingCompletedDate, _this.bookingCompletedDate) || other.bookingCompletedDate == _this.bookingCompletedDate)&&(identical(other.pickupDate, _this.pickupDate) || other.pickupDate == _this.pickupDate)&&(identical(other.returnDate, _this.returnDate) || other.returnDate == _this.returnDate)&&(identical(other.coolingPeriodDate, _this.coolingPeriodDate) || other.coolingPeriodDate == _this.coolingPeriodDate)&&(identical(other.coolingPeriodType, _this.coolingPeriodType) || other.coolingPeriodType == _this.coolingPeriodType)&&(identical(other.totalAmount, _this.totalAmount) || other.totalAmount == _this.totalAmount)&&(identical(other.totalAmountWithSecurity, _this.totalAmountWithSecurity) || other.totalAmountWithSecurity == _this.totalAmountWithSecurity)&&(identical(other.discountAmount, _this.discountAmount) || other.discountAmount == _this.discountAmount)&&(identical(other.paidAmount, _this.paidAmount) || other.paidAmount == _this.paidAmount)&&(identical(other.paidAmountWithSecurity, _this.paidAmountWithSecurity) || other.paidAmountWithSecurity == _this.paidAmountWithSecurity)&&(identical(other.totalPayable, _this.totalPayable) || other.totalPayable == _this.totalPayable)&&(identical(other.purchaseMode, _this.purchaseMode) || other.purchaseMode == _this.purchaseMode)&&(identical(other.bookingStatus, _this.bookingStatus) || other.bookingStatus == _this.bookingStatus)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.deliveryStatus, _this.deliveryStatus) || other.deliveryStatus == _this.deliveryStatus)&&(identical(other.staffName, _this.staffName) || other.staffName == _this.staffName)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.otherDetails, _this.otherDetails) || other.otherDetails == _this.otherDetails)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.client, _this.client) || other.client == _this.client)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.bookedItems, _this.bookedItems)&&const DeepCollectionEquality().equals(other.additionalCharges, _this.additionalCharges)&&const DeepCollectionEquality().equals(other.paymentHistory, _this.paymentHistory)&&const DeepCollectionEquality().equals(other.securityTransactionHistory, _this.securityTransactionHistory)&&(identical(other.securityTransactionSummary, _this.securityTransactionSummary) || other.securityTransactionSummary == _this.securityTransactionSummary)&&const DeepCollectionEquality().equals(other.refundHistory, _this.refundHistory)&&(identical(other.securityPayment, _this.securityPayment) || other.securityPayment == _this.securityPayment)&&(identical(other.pickupTime, _this.pickupTime) || other.pickupTime == _this.pickupTime)&&(identical(other.returnTime, _this.returnTime) || other.returnTime == _this.returnTime)&&(identical(other.refundTotal, _this.refundTotal) || other.refundTotal == _this.refundTotal)&&(identical(other.refundableBalance, _this.refundableBalance) || other.refundableBalance == _this.refundableBalance)&&const DeepCollectionEquality().equals(other.documents, _this.documents)&&(identical(other.documentsDetails, _this.documentsDetails) || other.documentsDetails == _this.documentsDetails)&&(identical(other.rentalUnit, _this.rentalUnit) || other.rentalUnit == _this.rentalUnit)&&(identical(other.isSecurityPaid, _this.isSecurityPaid) || other.isSecurityPaid == _this.isSecurityPaid)&&(identical(other.balanceAmount, _this.balanceAmount) || other.balanceAmount == _this.balanceAmount)&&const DeepCollectionEquality().equals(other.appliedTaxes, _this.appliedTaxes));
}


@override
int get hashCode {
  final _this = this as BookingDetailsEntity;
  return Object.hashAll([runtimeType,_this.id,_this.invoiceId,_this.createdAt,_this.bookedDate,_this.bookingCompletedDate,_this.pickupDate,_this.returnDate,_this.coolingPeriodDate,_this.coolingPeriodType,_this.totalAmount,_this.totalAmountWithSecurity,_this.discountAmount,_this.paidAmount,_this.paidAmountWithSecurity,_this.totalPayable,_this.purchaseMode,_this.bookingStatus,_this.paymentStatus,_this.deliveryStatus,_this.staffName,_this.staffId,_this.otherDetails,_this.address,_this.client,_this.description,const DeepCollectionEquality().hash(_this.bookedItems),const DeepCollectionEquality().hash(_this.additionalCharges),const DeepCollectionEquality().hash(_this.paymentHistory),const DeepCollectionEquality().hash(_this.securityTransactionHistory),_this.securityTransactionSummary,const DeepCollectionEquality().hash(_this.refundHistory),_this.securityPayment,_this.pickupTime,_this.returnTime,_this.refundTotal,_this.refundableBalance,const DeepCollectionEquality().hash(_this.documents),_this.documentsDetails,_this.rentalUnit,_this.isSecurityPaid,_this.balanceAmount,const DeepCollectionEquality().hash(_this.appliedTaxes)]);
}

@override
String toString() {
  final _this = this as BookingDetailsEntity;
  return 'BookingDetailsEntity(id: ${_this.id}, invoiceId: ${_this.invoiceId}, createdAt: ${_this.createdAt}, bookedDate: ${_this.bookedDate}, bookingCompletedDate: ${_this.bookingCompletedDate}, pickupDate: ${_this.pickupDate}, returnDate: ${_this.returnDate}, coolingPeriodDate: ${_this.coolingPeriodDate}, coolingPeriodType: ${_this.coolingPeriodType}, totalAmount: ${_this.totalAmount}, totalAmountWithSecurity: ${_this.totalAmountWithSecurity}, discountAmount: ${_this.discountAmount}, paidAmount: ${_this.paidAmount}, paidAmountWithSecurity: ${_this.paidAmountWithSecurity}, totalPayable: ${_this.totalPayable}, purchaseMode: ${_this.purchaseMode}, bookingStatus: ${_this.bookingStatus}, paymentStatus: ${_this.paymentStatus}, deliveryStatus: ${_this.deliveryStatus}, staffName: ${_this.staffName}, staffId: ${_this.staffId}, otherDetails: ${_this.otherDetails}, address: ${_this.address}, client: ${_this.client}, description: ${_this.description}, bookedItems: ${_this.bookedItems}, additionalCharges: ${_this.additionalCharges}, paymentHistory: ${_this.paymentHistory}, securityTransactionHistory: ${_this.securityTransactionHistory}, securityTransactionSummary: ${_this.securityTransactionSummary}, refundHistory: ${_this.refundHistory}, securityPayment: ${_this.securityPayment}, pickupTime: ${_this.pickupTime}, returnTime: ${_this.returnTime}, refundTotal: ${_this.refundTotal}, refundableBalance: ${_this.refundableBalance}, documents: ${_this.documents}, documentsDetails: ${_this.documentsDetails}, rentalUnit: ${_this.rentalUnit}, isSecurityPaid: ${_this.isSecurityPaid}, balanceAmount: ${_this.balanceAmount}, appliedTaxes: ${_this.appliedTaxes})';
}


}

/// @nodoc
abstract mixin class $BookingDetailsEntityCopyWith<$Res>  {
  factory $BookingDetailsEntityCopyWith(BookingDetailsEntity value, $Res Function(BookingDetailsEntity) _then) = _$BookingDetailsEntityCopyWithImpl;
@useResult
$Res call({
 int id, String invoiceId, String createdAt, String bookedDate, String? bookingCompletedDate, String? pickupDate, String returnDate, String? coolingPeriodDate, CoolingPeriodMode? coolingPeriodType, int totalAmount, int totalAmountWithSecurity, int? discountAmount, int paidAmount, int paidAmountWithSecurity, int totalPayable, PurchaseMode purchaseMode, BookingStatus bookingStatus, PaymentStatus paymentStatus, DeliveryStatus deliveryStatus, String? staffName, int? staffId, BookingOtherDetailsEntity otherDetails, String? address, ClientEntity client, String? description, List<ProductInfoEntity> bookedItems, List<AdditionalChargesEntity> additionalCharges, List<BookingPaymentHistoryEntity> paymentHistory, List<BookingSecurityRefundHistoryEntity> securityTransactionHistory, BookingSecuritySummaryEntity securityTransactionSummary, List<BookingRefundHistoryEntity> refundHistory, BookingSecurityPaymentEntity? securityPayment, String? pickupTime, String? returnTime, int refundTotal, int refundableBalance, List<String> documents, DocumentDetailsEntity? documentsDetails, BookingRentalUnit rentalUnit, bool isSecurityPaid, int balanceAmount, List<AppliedTaxEntity> appliedTaxes
});


$BookingOtherDetailsEntityCopyWith<$Res> get otherDetails;$ClientEntityCopyWith<$Res> get client;$BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary;$BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment;$DocumentDetailsEntityCopyWith<$Res>? get documentsDetails;

}
/// @nodoc
class _$BookingDetailsEntityCopyWithImpl<$Res>
    implements $BookingDetailsEntityCopyWith<$Res> {
  _$BookingDetailsEntityCopyWithImpl(this._self, this._then);

  final BookingDetailsEntity _self;
  final $Res Function(BookingDetailsEntity) _then;

/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceId = null,Object? createdAt = null,Object? bookedDate = null,Object? bookingCompletedDate = freezed,Object? pickupDate = freezed,Object? returnDate = null,Object? coolingPeriodDate = freezed,Object? coolingPeriodType = freezed,Object? totalAmount = null,Object? totalAmountWithSecurity = null,Object? discountAmount = freezed,Object? paidAmount = null,Object? paidAmountWithSecurity = null,Object? totalPayable = null,Object? purchaseMode = null,Object? bookingStatus = null,Object? paymentStatus = null,Object? deliveryStatus = null,Object? staffName = freezed,Object? staffId = freezed,Object? otherDetails = null,Object? address = freezed,Object? client = null,Object? description = freezed,Object? bookedItems = null,Object? additionalCharges = null,Object? paymentHistory = null,Object? securityTransactionHistory = null,Object? securityTransactionSummary = null,Object? refundHistory = null,Object? securityPayment = freezed,Object? pickupTime = freezed,Object? returnTime = freezed,Object? refundTotal = null,Object? refundableBalance = null,Object? documents = null,Object? documentsDetails = freezed,Object? rentalUnit = null,Object? isSecurityPaid = null,Object? balanceAmount = null,Object? appliedTaxes = null,}) {
  return _then(BookingDetailsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,bookedDate: null == bookedDate ? _self.bookedDate : bookedDate // ignore: cast_nullable_to_non_nullable
as String,bookingCompletedDate: freezed == bookingCompletedDate ? _self.bookingCompletedDate : bookingCompletedDate // ignore: cast_nullable_to_non_nullable
as String?,pickupDate: freezed == pickupDate ? _self.pickupDate : pickupDate // ignore: cast_nullable_to_non_nullable
as String?,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,coolingPeriodDate: freezed == coolingPeriodDate ? _self.coolingPeriodDate : coolingPeriodDate // ignore: cast_nullable_to_non_nullable
as String?,coolingPeriodType: freezed == coolingPeriodType ? _self.coolingPeriodType : coolingPeriodType // ignore: cast_nullable_to_non_nullable
as CoolingPeriodMode?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,totalAmountWithSecurity: null == totalAmountWithSecurity ? _self.totalAmountWithSecurity : totalAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,paidAmountWithSecurity: null == paidAmountWithSecurity ? _self.paidAmountWithSecurity : paidAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,totalPayable: null == totalPayable ? _self.totalPayable : totalPayable // ignore: cast_nullable_to_non_nullable
as int,purchaseMode: null == purchaseMode ? _self.purchaseMode : purchaseMode // ignore: cast_nullable_to_non_nullable
as PurchaseMode,bookingStatus: null == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as BookingStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,staffName: freezed == staffName ? _self.staffName : staffName // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,otherDetails: null == otherDetails ? _self.otherDetails : otherDetails // ignore: cast_nullable_to_non_nullable
as BookingOtherDetailsEntity,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,client: null == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as ClientEntity,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bookedItems: null == bookedItems ? _self.bookedItems : bookedItems // ignore: cast_nullable_to_non_nullable
as List<ProductInfoEntity>,additionalCharges: null == additionalCharges ? _self.additionalCharges : additionalCharges // ignore: cast_nullable_to_non_nullable
as List<AdditionalChargesEntity>,paymentHistory: null == paymentHistory ? _self.paymentHistory : paymentHistory // ignore: cast_nullable_to_non_nullable
as List<BookingPaymentHistoryEntity>,securityTransactionHistory: null == securityTransactionHistory ? _self.securityTransactionHistory : securityTransactionHistory // ignore: cast_nullable_to_non_nullable
as List<BookingSecurityRefundHistoryEntity>,securityTransactionSummary: null == securityTransactionSummary ? _self.securityTransactionSummary : securityTransactionSummary // ignore: cast_nullable_to_non_nullable
as BookingSecuritySummaryEntity,refundHistory: null == refundHistory ? _self.refundHistory : refundHistory // ignore: cast_nullable_to_non_nullable
as List<BookingRefundHistoryEntity>,securityPayment: freezed == securityPayment ? _self.securityPayment : securityPayment // ignore: cast_nullable_to_non_nullable
as BookingSecurityPaymentEntity?,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as String?,returnTime: freezed == returnTime ? _self.returnTime : returnTime // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: null == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as int,refundableBalance: null == refundableBalance ? _self.refundableBalance : refundableBalance // ignore: cast_nullable_to_non_nullable
as int,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<String>,documentsDetails: freezed == documentsDetails ? _self.documentsDetails : documentsDetails // ignore: cast_nullable_to_non_nullable
as DocumentDetailsEntity?,rentalUnit: null == rentalUnit ? _self.rentalUnit : rentalUnit // ignore: cast_nullable_to_non_nullable
as BookingRentalUnit,isSecurityPaid: null == isSecurityPaid ? _self.isSecurityPaid : isSecurityPaid // ignore: cast_nullable_to_non_nullable
as bool,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,appliedTaxes: null == appliedTaxes ? _self.appliedTaxes : appliedTaxes // ignore: cast_nullable_to_non_nullable
as List<AppliedTaxEntity>,
  ));
}
/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingOtherDetailsEntityCopyWith<$Res> get otherDetails {
  
  return $BookingOtherDetailsEntityCopyWith<$Res>(_self.otherDetails, (value) {
    return _then(_self.copyWith(otherDetails: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res> get client {
  
  return $ClientEntityCopyWith<$Res>(_self.client, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary {
  
  return $BookingSecuritySummaryEntityCopyWith<$Res>(_self.securityTransactionSummary, (value) {
    return _then(_self.copyWith(securityTransactionSummary: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment {
    if (_self.securityPayment == null) {
    return null;
  }

  return $BookingSecurityPaymentEntityCopyWith<$Res>(_self.securityPayment!, (value) {
    return _then(_self.copyWith(securityPayment: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentDetailsEntityCopyWith<$Res>? get documentsDetails {
    if (_self.documentsDetails == null) {
    return null;
  }

  return $DocumentDetailsEntityCopyWith<$Res>(_self.documentsDetails!, (value) {
    return _then(_self.copyWith(documentsDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingDetailsEntity].
extension BookingDetailsEntityPatterns on BookingDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String invoiceId,  String createdAt,  String bookedDate,  String? bookingCompletedDate,  String? pickupDate,  String returnDate,  String? coolingPeriodDate,  CoolingPeriodMode? coolingPeriodType,  int totalAmount,  int totalAmountWithSecurity,  int? discountAmount,  int paidAmount,  int paidAmountWithSecurity,  int totalPayable,  PurchaseMode purchaseMode,  BookingStatus bookingStatus,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? staffName,  int? staffId,  BookingOtherDetailsEntity otherDetails,  String? address,  ClientEntity client,  String? description,  List<ProductInfoEntity> bookedItems,  List<AdditionalChargesEntity> additionalCharges,  List<BookingPaymentHistoryEntity> paymentHistory,  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory,  BookingSecuritySummaryEntity securityTransactionSummary,  List<BookingRefundHistoryEntity> refundHistory,  BookingSecurityPaymentEntity? securityPayment,  String? pickupTime,  String? returnTime,  int refundTotal,  int refundableBalance,  List<String> documents,  DocumentDetailsEntity? documentsDetails,  BookingRentalUnit rentalUnit,  bool isSecurityPaid,  int balanceAmount,  List<AppliedTaxEntity> appliedTaxes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
return $default(_that.id,_that.invoiceId,_that.createdAt,_that.bookedDate,_that.bookingCompletedDate,_that.pickupDate,_that.returnDate,_that.coolingPeriodDate,_that.coolingPeriodType,_that.totalAmount,_that.totalAmountWithSecurity,_that.discountAmount,_that.paidAmount,_that.paidAmountWithSecurity,_that.totalPayable,_that.purchaseMode,_that.bookingStatus,_that.paymentStatus,_that.deliveryStatus,_that.staffName,_that.staffId,_that.otherDetails,_that.address,_that.client,_that.description,_that.bookedItems,_that.additionalCharges,_that.paymentHistory,_that.securityTransactionHistory,_that.securityTransactionSummary,_that.refundHistory,_that.securityPayment,_that.pickupTime,_that.returnTime,_that.refundTotal,_that.refundableBalance,_that.documents,_that.documentsDetails,_that.rentalUnit,_that.isSecurityPaid,_that.balanceAmount,_that.appliedTaxes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String invoiceId,  String createdAt,  String bookedDate,  String? bookingCompletedDate,  String? pickupDate,  String returnDate,  String? coolingPeriodDate,  CoolingPeriodMode? coolingPeriodType,  int totalAmount,  int totalAmountWithSecurity,  int? discountAmount,  int paidAmount,  int paidAmountWithSecurity,  int totalPayable,  PurchaseMode purchaseMode,  BookingStatus bookingStatus,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? staffName,  int? staffId,  BookingOtherDetailsEntity otherDetails,  String? address,  ClientEntity client,  String? description,  List<ProductInfoEntity> bookedItems,  List<AdditionalChargesEntity> additionalCharges,  List<BookingPaymentHistoryEntity> paymentHistory,  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory,  BookingSecuritySummaryEntity securityTransactionSummary,  List<BookingRefundHistoryEntity> refundHistory,  BookingSecurityPaymentEntity? securityPayment,  String? pickupTime,  String? returnTime,  int refundTotal,  int refundableBalance,  List<String> documents,  DocumentDetailsEntity? documentsDetails,  BookingRentalUnit rentalUnit,  bool isSecurityPaid,  int balanceAmount,  List<AppliedTaxEntity> appliedTaxes)  $default,) {final _that = this;
switch (_that) {
case _BookingDetailsEntity():
return $default(_that.id,_that.invoiceId,_that.createdAt,_that.bookedDate,_that.bookingCompletedDate,_that.pickupDate,_that.returnDate,_that.coolingPeriodDate,_that.coolingPeriodType,_that.totalAmount,_that.totalAmountWithSecurity,_that.discountAmount,_that.paidAmount,_that.paidAmountWithSecurity,_that.totalPayable,_that.purchaseMode,_that.bookingStatus,_that.paymentStatus,_that.deliveryStatus,_that.staffName,_that.staffId,_that.otherDetails,_that.address,_that.client,_that.description,_that.bookedItems,_that.additionalCharges,_that.paymentHistory,_that.securityTransactionHistory,_that.securityTransactionSummary,_that.refundHistory,_that.securityPayment,_that.pickupTime,_that.returnTime,_that.refundTotal,_that.refundableBalance,_that.documents,_that.documentsDetails,_that.rentalUnit,_that.isSecurityPaid,_that.balanceAmount,_that.appliedTaxes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String invoiceId,  String createdAt,  String bookedDate,  String? bookingCompletedDate,  String? pickupDate,  String returnDate,  String? coolingPeriodDate,  CoolingPeriodMode? coolingPeriodType,  int totalAmount,  int totalAmountWithSecurity,  int? discountAmount,  int paidAmount,  int paidAmountWithSecurity,  int totalPayable,  PurchaseMode purchaseMode,  BookingStatus bookingStatus,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? staffName,  int? staffId,  BookingOtherDetailsEntity otherDetails,  String? address,  ClientEntity client,  String? description,  List<ProductInfoEntity> bookedItems,  List<AdditionalChargesEntity> additionalCharges,  List<BookingPaymentHistoryEntity> paymentHistory,  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory,  BookingSecuritySummaryEntity securityTransactionSummary,  List<BookingRefundHistoryEntity> refundHistory,  BookingSecurityPaymentEntity? securityPayment,  String? pickupTime,  String? returnTime,  int refundTotal,  int refundableBalance,  List<String> documents,  DocumentDetailsEntity? documentsDetails,  BookingRentalUnit rentalUnit,  bool isSecurityPaid,  int balanceAmount,  List<AppliedTaxEntity> appliedTaxes)?  $default,) {final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
return $default(_that.id,_that.invoiceId,_that.createdAt,_that.bookedDate,_that.bookingCompletedDate,_that.pickupDate,_that.returnDate,_that.coolingPeriodDate,_that.coolingPeriodType,_that.totalAmount,_that.totalAmountWithSecurity,_that.discountAmount,_that.paidAmount,_that.paidAmountWithSecurity,_that.totalPayable,_that.purchaseMode,_that.bookingStatus,_that.paymentStatus,_that.deliveryStatus,_that.staffName,_that.staffId,_that.otherDetails,_that.address,_that.client,_that.description,_that.bookedItems,_that.additionalCharges,_that.paymentHistory,_that.securityTransactionHistory,_that.securityTransactionSummary,_that.refundHistory,_that.securityPayment,_that.pickupTime,_that.returnTime,_that.refundTotal,_that.refundableBalance,_that.documents,_that.documentsDetails,_that.rentalUnit,_that.isSecurityPaid,_that.balanceAmount,_that.appliedTaxes);case _:
  return null;

}
}

}

/// @nodoc


class _BookingDetailsEntity implements BookingDetailsEntity {
  const _BookingDetailsEntity({required this.id, required this.invoiceId, required this.createdAt, required this.bookedDate, this.bookingCompletedDate, required this.pickupDate, required this.returnDate, this.coolingPeriodDate, this.coolingPeriodType, required this.totalAmount, required this.totalAmountWithSecurity, this.discountAmount, required this.paidAmount, required this.paidAmountWithSecurity, required this.totalPayable, required this.purchaseMode, required this.bookingStatus, required this.paymentStatus, required this.deliveryStatus, this.staffName, this.staffId, required this.otherDetails, this.address, required this.client, this.description, required  List<ProductInfoEntity> bookedItems,  List<AdditionalChargesEntity> additionalCharges = const [],  List<BookingPaymentHistoryEntity> paymentHistory = const [],  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory = const [], required this.securityTransactionSummary,  List<BookingRefundHistoryEntity> refundHistory = const [], this.securityPayment, required this.pickupTime, required this.returnTime, required this.refundTotal, required this.refundableBalance,  List<String> documents = const [], this.documentsDetails, required this.rentalUnit, this.isSecurityPaid = false, required this.balanceAmount,  List<AppliedTaxEntity> appliedTaxes = const []}): _bookedItems = bookedItems,_additionalCharges = additionalCharges,_paymentHistory = paymentHistory,_securityTransactionHistory = securityTransactionHistory,_refundHistory = refundHistory,_documents = documents,_appliedTaxes = appliedTaxes;
  

@override final  int id;
@override final  String invoiceId;
@override final  String createdAt;
@override final  String bookedDate;
@override final  String? bookingCompletedDate;
@override final  String? pickupDate;
@override final  String returnDate;
@override final  String? coolingPeriodDate;
@override final  CoolingPeriodMode? coolingPeriodType;
@override final  int totalAmount;
@override final  int totalAmountWithSecurity;
@override final  int? discountAmount;
@override final  int paidAmount;
@override final  int paidAmountWithSecurity;
@override final  int totalPayable;
@override final  PurchaseMode purchaseMode;
@override final  BookingStatus bookingStatus;
@override final  PaymentStatus paymentStatus;
@override final  DeliveryStatus deliveryStatus;
@override final  String? staffName;
@override final  int? staffId;
@override final  BookingOtherDetailsEntity otherDetails;
@override final  String? address;
@override final  ClientEntity client;
@override final  String? description;
 final  List<ProductInfoEntity> _bookedItems;
@override List<ProductInfoEntity> get bookedItems {
  if (_bookedItems is EqualUnmodifiableListView) return _bookedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookedItems);
}

 final  List<AdditionalChargesEntity> _additionalCharges;
@override@JsonKey() List<AdditionalChargesEntity> get additionalCharges {
  if (_additionalCharges is EqualUnmodifiableListView) return _additionalCharges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_additionalCharges);
}

 final  List<BookingPaymentHistoryEntity> _paymentHistory;
@override@JsonKey() List<BookingPaymentHistoryEntity> get paymentHistory {
  if (_paymentHistory is EqualUnmodifiableListView) return _paymentHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentHistory);
}

 final  List<BookingSecurityRefundHistoryEntity> _securityTransactionHistory;
@override@JsonKey() List<BookingSecurityRefundHistoryEntity> get securityTransactionHistory {
  if (_securityTransactionHistory is EqualUnmodifiableListView) return _securityTransactionHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_securityTransactionHistory);
}

@override final  BookingSecuritySummaryEntity securityTransactionSummary;
 final  List<BookingRefundHistoryEntity> _refundHistory;
@override@JsonKey() List<BookingRefundHistoryEntity> get refundHistory {
  if (_refundHistory is EqualUnmodifiableListView) return _refundHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_refundHistory);
}

@override final  BookingSecurityPaymentEntity? securityPayment;
@override final  String? pickupTime;
@override final  String? returnTime;
@override final  int refundTotal;
@override final  int refundableBalance;
 final  List<String> _documents;
@override@JsonKey() List<String> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}

@override final  DocumentDetailsEntity? documentsDetails;
@override final  BookingRentalUnit rentalUnit;
@override@JsonKey() final  bool isSecurityPaid;
@override final  int balanceAmount;
 final  List<AppliedTaxEntity> _appliedTaxes;
@override@JsonKey() List<AppliedTaxEntity> get appliedTaxes {
  if (_appliedTaxes is EqualUnmodifiableListView) return _appliedTaxes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliedTaxes);
}


/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingDetailsEntityCopyWith<_BookingDetailsEntity> get copyWith => __$BookingDetailsEntityCopyWithImpl<_BookingDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bookedDate, bookedDate) || other.bookedDate == bookedDate)&&(identical(other.bookingCompletedDate, bookingCompletedDate) || other.bookingCompletedDate == bookingCompletedDate)&&(identical(other.pickupDate, pickupDate) || other.pickupDate == pickupDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.coolingPeriodDate, coolingPeriodDate) || other.coolingPeriodDate == coolingPeriodDate)&&(identical(other.coolingPeriodType, coolingPeriodType) || other.coolingPeriodType == coolingPeriodType)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.totalAmountWithSecurity, totalAmountWithSecurity) || other.totalAmountWithSecurity == totalAmountWithSecurity)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.paidAmountWithSecurity, paidAmountWithSecurity) || other.paidAmountWithSecurity == paidAmountWithSecurity)&&(identical(other.totalPayable, totalPayable) || other.totalPayable == totalPayable)&&(identical(other.purchaseMode, purchaseMode) || other.purchaseMode == purchaseMode)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.staffName, staffName) || other.staffName == staffName)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.otherDetails, otherDetails) || other.otherDetails == otherDetails)&&(identical(other.address, address) || other.address == address)&&(identical(other.client, client) || other.client == client)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.bookedItems, _bookedItems)&&const DeepCollectionEquality().equals(other.additionalCharges, _additionalCharges)&&const DeepCollectionEquality().equals(other.paymentHistory, _paymentHistory)&&const DeepCollectionEquality().equals(other.securityTransactionHistory, _securityTransactionHistory)&&(identical(other.securityTransactionSummary, securityTransactionSummary) || other.securityTransactionSummary == securityTransactionSummary)&&const DeepCollectionEquality().equals(other.refundHistory, _refundHistory)&&(identical(other.securityPayment, securityPayment) || other.securityPayment == securityPayment)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.returnTime, returnTime) || other.returnTime == returnTime)&&(identical(other.refundTotal, refundTotal) || other.refundTotal == refundTotal)&&(identical(other.refundableBalance, refundableBalance) || other.refundableBalance == refundableBalance)&&const DeepCollectionEquality().equals(other.documents, _documents)&&(identical(other.documentsDetails, documentsDetails) || other.documentsDetails == documentsDetails)&&(identical(other.rentalUnit, rentalUnit) || other.rentalUnit == rentalUnit)&&(identical(other.isSecurityPaid, isSecurityPaid) || other.isSecurityPaid == isSecurityPaid)&&(identical(other.balanceAmount, balanceAmount) || other.balanceAmount == balanceAmount)&&const DeepCollectionEquality().equals(other.appliedTaxes, _appliedTaxes));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,invoiceId,createdAt,bookedDate,bookingCompletedDate,pickupDate,returnDate,coolingPeriodDate,coolingPeriodType,totalAmount,totalAmountWithSecurity,discountAmount,paidAmount,paidAmountWithSecurity,totalPayable,purchaseMode,bookingStatus,paymentStatus,deliveryStatus,staffName,staffId,otherDetails,address,client,description,const DeepCollectionEquality().hash(_bookedItems),const DeepCollectionEquality().hash(_additionalCharges),const DeepCollectionEquality().hash(_paymentHistory),const DeepCollectionEquality().hash(_securityTransactionHistory),securityTransactionSummary,const DeepCollectionEquality().hash(_refundHistory),securityPayment,pickupTime,returnTime,refundTotal,refundableBalance,const DeepCollectionEquality().hash(_documents),documentsDetails,rentalUnit,isSecurityPaid,balanceAmount,const DeepCollectionEquality().hash(_appliedTaxes)]);
}

@override
String toString() {
    return 'BookingDetailsEntity(id: $id, invoiceId: $invoiceId, createdAt: $createdAt, bookedDate: $bookedDate, bookingCompletedDate: $bookingCompletedDate, pickupDate: $pickupDate, returnDate: $returnDate, coolingPeriodDate: $coolingPeriodDate, coolingPeriodType: $coolingPeriodType, totalAmount: $totalAmount, totalAmountWithSecurity: $totalAmountWithSecurity, discountAmount: $discountAmount, paidAmount: $paidAmount, paidAmountWithSecurity: $paidAmountWithSecurity, totalPayable: $totalPayable, purchaseMode: $purchaseMode, bookingStatus: $bookingStatus, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, staffName: $staffName, staffId: $staffId, otherDetails: $otherDetails, address: $address, client: $client, description: $description, bookedItems: $bookedItems, additionalCharges: $additionalCharges, paymentHistory: $paymentHistory, securityTransactionHistory: $securityTransactionHistory, securityTransactionSummary: $securityTransactionSummary, refundHistory: $refundHistory, securityPayment: $securityPayment, pickupTime: $pickupTime, returnTime: $returnTime, refundTotal: $refundTotal, refundableBalance: $refundableBalance, documents: $documents, documentsDetails: $documentsDetails, rentalUnit: $rentalUnit, isSecurityPaid: $isSecurityPaid, balanceAmount: $balanceAmount, appliedTaxes: $appliedTaxes)';
}


}

/// @nodoc
abstract mixin class _$BookingDetailsEntityCopyWith<$Res> implements $BookingDetailsEntityCopyWith<$Res> {
  factory _$BookingDetailsEntityCopyWith(_BookingDetailsEntity value, $Res Function(_BookingDetailsEntity) _then) = __$BookingDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String invoiceId, String createdAt, String bookedDate, String? bookingCompletedDate, String? pickupDate, String returnDate, String? coolingPeriodDate, CoolingPeriodMode? coolingPeriodType, int totalAmount, int totalAmountWithSecurity, int? discountAmount, int paidAmount, int paidAmountWithSecurity, int totalPayable, PurchaseMode purchaseMode, BookingStatus bookingStatus, PaymentStatus paymentStatus, DeliveryStatus deliveryStatus, String? staffName, int? staffId, BookingOtherDetailsEntity otherDetails, String? address, ClientEntity client, String? description, List<ProductInfoEntity> bookedItems, List<AdditionalChargesEntity> additionalCharges, List<BookingPaymentHistoryEntity> paymentHistory, List<BookingSecurityRefundHistoryEntity> securityTransactionHistory, BookingSecuritySummaryEntity securityTransactionSummary, List<BookingRefundHistoryEntity> refundHistory, BookingSecurityPaymentEntity? securityPayment, String? pickupTime, String? returnTime, int refundTotal, int refundableBalance, List<String> documents, DocumentDetailsEntity? documentsDetails, BookingRentalUnit rentalUnit, bool isSecurityPaid, int balanceAmount, List<AppliedTaxEntity> appliedTaxes
});


@override $BookingOtherDetailsEntityCopyWith<$Res> get otherDetails;@override $ClientEntityCopyWith<$Res> get client;@override $BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary;@override $BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment;@override $DocumentDetailsEntityCopyWith<$Res>? get documentsDetails;

}
/// @nodoc
class __$BookingDetailsEntityCopyWithImpl<$Res>
    implements _$BookingDetailsEntityCopyWith<$Res> {
  __$BookingDetailsEntityCopyWithImpl(this._self, this._then);

  final _BookingDetailsEntity _self;
  final $Res Function(_BookingDetailsEntity) _then;

/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceId = null,Object? createdAt = null,Object? bookedDate = null,Object? bookingCompletedDate = freezed,Object? pickupDate = freezed,Object? returnDate = null,Object? coolingPeriodDate = freezed,Object? coolingPeriodType = freezed,Object? totalAmount = null,Object? totalAmountWithSecurity = null,Object? discountAmount = freezed,Object? paidAmount = null,Object? paidAmountWithSecurity = null,Object? totalPayable = null,Object? purchaseMode = null,Object? bookingStatus = null,Object? paymentStatus = null,Object? deliveryStatus = null,Object? staffName = freezed,Object? staffId = freezed,Object? otherDetails = null,Object? address = freezed,Object? client = null,Object? description = freezed,Object? bookedItems = null,Object? additionalCharges = null,Object? paymentHistory = null,Object? securityTransactionHistory = null,Object? securityTransactionSummary = null,Object? refundHistory = null,Object? securityPayment = freezed,Object? pickupTime = freezed,Object? returnTime = freezed,Object? refundTotal = null,Object? refundableBalance = null,Object? documents = null,Object? documentsDetails = freezed,Object? rentalUnit = null,Object? isSecurityPaid = null,Object? balanceAmount = null,Object? appliedTaxes = null,}) {
  return _then(_BookingDetailsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,bookedDate: null == bookedDate ? _self.bookedDate : bookedDate // ignore: cast_nullable_to_non_nullable
as String,bookingCompletedDate: freezed == bookingCompletedDate ? _self.bookingCompletedDate : bookingCompletedDate // ignore: cast_nullable_to_non_nullable
as String?,pickupDate: freezed == pickupDate ? _self.pickupDate : pickupDate // ignore: cast_nullable_to_non_nullable
as String?,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,coolingPeriodDate: freezed == coolingPeriodDate ? _self.coolingPeriodDate : coolingPeriodDate // ignore: cast_nullable_to_non_nullable
as String?,coolingPeriodType: freezed == coolingPeriodType ? _self.coolingPeriodType : coolingPeriodType // ignore: cast_nullable_to_non_nullable
as CoolingPeriodMode?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,totalAmountWithSecurity: null == totalAmountWithSecurity ? _self.totalAmountWithSecurity : totalAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,paidAmountWithSecurity: null == paidAmountWithSecurity ? _self.paidAmountWithSecurity : paidAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,totalPayable: null == totalPayable ? _self.totalPayable : totalPayable // ignore: cast_nullable_to_non_nullable
as int,purchaseMode: null == purchaseMode ? _self.purchaseMode : purchaseMode // ignore: cast_nullable_to_non_nullable
as PurchaseMode,bookingStatus: null == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as BookingStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,staffName: freezed == staffName ? _self.staffName : staffName // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,otherDetails: null == otherDetails ? _self.otherDetails : otherDetails // ignore: cast_nullable_to_non_nullable
as BookingOtherDetailsEntity,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,client: null == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as ClientEntity,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bookedItems: null == bookedItems ? _self._bookedItems : bookedItems // ignore: cast_nullable_to_non_nullable
as List<ProductInfoEntity>,additionalCharges: null == additionalCharges ? _self._additionalCharges : additionalCharges // ignore: cast_nullable_to_non_nullable
as List<AdditionalChargesEntity>,paymentHistory: null == paymentHistory ? _self._paymentHistory : paymentHistory // ignore: cast_nullable_to_non_nullable
as List<BookingPaymentHistoryEntity>,securityTransactionHistory: null == securityTransactionHistory ? _self._securityTransactionHistory : securityTransactionHistory // ignore: cast_nullable_to_non_nullable
as List<BookingSecurityRefundHistoryEntity>,securityTransactionSummary: null == securityTransactionSummary ? _self.securityTransactionSummary : securityTransactionSummary // ignore: cast_nullable_to_non_nullable
as BookingSecuritySummaryEntity,refundHistory: null == refundHistory ? _self._refundHistory : refundHistory // ignore: cast_nullable_to_non_nullable
as List<BookingRefundHistoryEntity>,securityPayment: freezed == securityPayment ? _self.securityPayment : securityPayment // ignore: cast_nullable_to_non_nullable
as BookingSecurityPaymentEntity?,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as String?,returnTime: freezed == returnTime ? _self.returnTime : returnTime // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: null == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as int,refundableBalance: null == refundableBalance ? _self.refundableBalance : refundableBalance // ignore: cast_nullable_to_non_nullable
as int,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<String>,documentsDetails: freezed == documentsDetails ? _self.documentsDetails : documentsDetails // ignore: cast_nullable_to_non_nullable
as DocumentDetailsEntity?,rentalUnit: null == rentalUnit ? _self.rentalUnit : rentalUnit // ignore: cast_nullable_to_non_nullable
as BookingRentalUnit,isSecurityPaid: null == isSecurityPaid ? _self.isSecurityPaid : isSecurityPaid // ignore: cast_nullable_to_non_nullable
as bool,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,appliedTaxes: null == appliedTaxes ? _self._appliedTaxes : appliedTaxes // ignore: cast_nullable_to_non_nullable
as List<AppliedTaxEntity>,
  ));
}

/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingOtherDetailsEntityCopyWith<$Res> get otherDetails {
  
  return $BookingOtherDetailsEntityCopyWith<$Res>(_self.otherDetails, (value) {
    return _then(_self.copyWith(otherDetails: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res> get client {
  
  return $ClientEntityCopyWith<$Res>(_self.client, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary {
  
  return $BookingSecuritySummaryEntityCopyWith<$Res>(_self.securityTransactionSummary, (value) {
    return _then(_self.copyWith(securityTransactionSummary: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment {
    if (_self.securityPayment == null) {
    return null;
  }

  return $BookingSecurityPaymentEntityCopyWith<$Res>(_self.securityPayment!, (value) {
    return _then(_self.copyWith(securityPayment: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentDetailsEntityCopyWith<$Res>? get documentsDetails {
    if (_self.documentsDetails == null) {
    return null;
  }

  return $DocumentDetailsEntityCopyWith<$Res>(_self.documentsDetails!, (value) {
    return _then(_self.copyWith(documentsDetails: value));
  });
}
}

// dart format on
