import 'package:bookie_buddy_shared/core/features/marketplace/domain/entities/marketplace_enquiry_entity/marketplace_enquiry_entity.dart';

/// Builds the pre-filled text for a WhatsApp enquiry about a model.
///
/// Pure text so mobile and web send identical messages; opening WhatsApp
/// itself is each app's job.
class BuildMarketplaceEnquiryMessageUseCase {
  const BuildMarketplaceEnquiryMessageUseCase();

  String call(MarketplaceEnquiryEntity enquiry) {
    final product = enquiry.product;
    final lines = <String>[
      "Hi, I'm interested in ${product.name} (${product.productCode}).",
      if (enquiry.fabric != null) 'Fabric: ${enquiry.fabric!.name}',
      if (enquiry.size != null) 'Size: ${enquiry.size}',
      if (enquiry.quantity != null) 'Quantity: ${enquiry.quantity}',
      if (enquiry.note != null && enquiry.note!.trim().isNotEmpty)
        enquiry.note!.trim(),
    ];
    return lines.join('\n');
  }
}
