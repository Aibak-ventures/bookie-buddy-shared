import '../../../../core/common/utils/cancellation_token.dart';
import '../repositories/i_client_repository.dart';

class DownloadClientExcelReportUseCase {
  final IClientRepository _repository;
  const DownloadClientExcelReportUseCase(this._repository);

  Future<String> call({
    DateTime? startDate,
    DateTime? endDate,
    required CancellationToken cancelToken,
  }) => _repository.downloadClientExcelReport(
    startDate: startDate,
    endDate: endDate,
    cancelToken: cancelToken,
  );
}
