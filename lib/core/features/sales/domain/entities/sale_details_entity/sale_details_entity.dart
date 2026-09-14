import 'package:bookie_buddy_shared/core/core/common/entities/applied_tax_entity/applied_tax_entity.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/main_service_type_enums.dart';
import 'package:bookie_buddy_shared/core/features/client/domain/entities/client_entity/client_entity.dart';
import 'package:bookie_buddy_shared/core/features/product/domain/entities/product_entity/product_attributes_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../sale_payment_entity/sale_payment_entity.dart';

part 'sale_details_entity.freezed.dart';

@freezed
abstract class SaleDetailsEntity with _$SaleDetailsEntity {
  const factory SaleDetailsEntity({
    required int id,
    required String clientPhone,
    // Full client record as returned by the sale-details endpoint. Mobile's
    // sale-details screen only ever needs [clientPhone] and doesn't request
    // this; web's customer-details section and its "edit sale as booking"
    // flow need the fuller record (name, phone2), so this stays
    // nullable/web-only rather than something mobile has to populate.
    ClientEntity? client,
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
    @Default([]) List<AppliedTaxEntity> appliedTaxes,
    // 1 entry for a plain sale, 2 for a cash/bank split sale. Use
    // `payments.firstOrNull` wherever a single "the account" is needed.
    @Default([]) List<SalePaymentEntity> payments,
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
