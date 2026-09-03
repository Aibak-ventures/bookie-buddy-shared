import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_details_entity.freezed.dart';

@freezed
abstract class DocumentDetailsEntity with _$DocumentDetailsEntity {
  const factory DocumentDetailsEntity({
    required DocumentDetailsStatus status,
    required int totalCount,
    required int uploadedCount,
  }) = _DocumentDetailsEntity;
}

enum DocumentDetailsStatus {
  uploading('uploading'),
  completed('completed');

  final String value;
  const DocumentDetailsStatus(this.value);

  static DocumentDetailsStatus fromString(String value) {
    return DocumentDetailsStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => DocumentDetailsStatus.completed,
    );
  }
}
