import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_fabric_entity/marketplace_fabric_entity.dart';
import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_product_details_entity/marketplace_product_details_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_enquiry_entity.freezed.dart';

/// What a shop wants to ask about a model.
///
/// Today it only feeds a WhatsApp message. It is deliberately channel-neutral
/// so a slot-based request flow can later submit the same entity to the API.
@freezed
abstract class MarketplaceEnquiryEntity with _$MarketplaceEnquiryEntity {
  const factory MarketplaceEnquiryEntity({
    required MarketplaceProductDetailsEntity product,
    MarketplaceFabricEntity? fabric,
    int? quantity,
    int? size,
    String? note,
  }) = _MarketplaceEnquiryEntity;
}
