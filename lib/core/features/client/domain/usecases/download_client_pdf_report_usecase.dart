import '../../../../core/common/utils/cancellation_token.dart';
import '../repositories/i_client_repository.dart';

class DownloadClientPdfReportUseCase {
  final IClientRepository _repository;
  const DownloadClientPdfReportUseCase(this._repository);

  Future<String> call({
    required String defaultFileName,
    required CancellationToken cancelToken,
  }) => _repository.downloadClientPdfReport(
    defaultFileName: defaultFileName,
    cancelToken: cancelToken,
  );
}
