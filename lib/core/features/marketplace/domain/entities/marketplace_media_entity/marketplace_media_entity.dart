import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketplace_media_entity.freezed.dart';

/// An image or video attached to a marketplace model.
@freezed
abstract class MarketplaceMediaEntity with _$MarketplaceMediaEntity {
  const factory MarketplaceMediaEntity({
    required String url,
    // Null when the backend has not generated one (it sends an empty string).
    String? thumbnailUrl,
    required String alt,
    // Position in the gallery. The list thumbnail does not carry one.
    @Default(0) int sortOrder,
  }) = _MarketplaceMediaEntity;
}
