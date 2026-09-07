import 'package:bookie_buddy_shared/core/core/common/utils/cancellation_token.dart';
import 'package:bookie_buddy_shared/core/features/accounts/domain/repositories/i_account_repository.dart';
import 'package:dio/dio.dart';

class DownloadAccountStatementUseCase {
  final IAccountRepository _repository;

  const DownloadAccountStatementUseCase(this._repository);

  Future<String> call({
    required int accountId,
    required String startDate,
    required String endDate,
    required CancellationToken funCancelToken,
    CancelToken? dioCancelToken,
    ProgressCallback? onReceiveProgress,
  }) => _repository.downloadAccountStatementPdf(
    accountId: accountId,
    startDate: startDate,
    endDate: endDate,
    funCancelToken: funCancelToken,
    dioCancelToken: dioCancelToken,
    onReceiveProgress: onReceiveProgress,
  );
}
