import 'package:bookie_buddy_core/core/common/entities/applied_tax_entity/applied_tax_entity.dart';
import 'package:bookie_buddy_core/core/constants/enums/main_service_type_enums.dart';
import 'package:bookie_buddy_core/core/constants/enums/payment_method_enums.dart';
import 'package:bookie_buddy_core/features/product/domain/entities/product_entity/product_attributes_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_details_entity.freezed.dart';

@freezed
abstract class SaleDetailsEntity with _$SaleDetailsEntity {
  const factory SaleDetailsEntity({
    required int id,
    required String clientPhone,
    int? staffId,
    String? staffName,
    required String address,
    required String invoiceId,
    required String description,
    required String saleDate,
    required int totalAmount,
    required int discountAmount,
    required int paidAmount,
    required int productTotal,
    required int balanceDueAmount,
    required String createdAt,
    required List<ProductSaleInfoEntity> products,
    required SaleDetailsPaymentHistoryEntity payment,
    @Default([]) List<AppliedTaxEntity> appliedTaxes,
  }) = _SaleDetailsEntity;
}

@freezed
abstract class ProductSaleInfoEntity with _$ProductSaleInfoEntity {
  const factory ProductSaleInfoEntity({
    required int id,
    required int productId,
    required int variantId,
    required String name,
    String? variantAttribute,
    required int quantity,
    required double fabricLength,
    required int price,
    required int subtotal,
    String? image,
    String? thumbnailImage,
    String? color,
    String? category,
    String? model,
    MainServiceType? mainServiceType,
    @Default(ProductAttributesEntity()) ProductAttributesEntity attributes,
  }) = _ProductSaleInfoEntity;
}

@freezed
abstract class SaleDetailsPaymentHistoryEntity
    with _$SaleDetailsPaymentHistoryEntity {
  const factory SaleDetailsPaymentHistoryEntity({
    required int id,
    required int amount,
    required String? accountName,
    required int? accountId,
    required String date,
    required PaymentMethod paymentMethod,
  }) = _SaleDetailsPaymentHistoryEntity;
}
