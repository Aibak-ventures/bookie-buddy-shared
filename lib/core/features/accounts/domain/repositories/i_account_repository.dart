import 'package:bookie_buddy_shared/core/core/common/models/pagination_model/pagination_model.dart';
import 'package:bookie_buddy_shared/core/core/common/utils/cancellation_token.dart';
import 'package:bookie_buddy_shared/core/features/accounts/domain/entities/account_entity/account_entity.dart';
import 'package:bookie_buddy_shared/core/features/accounts/domain/entities/account_request_entity/account_request_entity.dart';
import 'package:bookie_buddy_shared/core/features/accounts/domain/entities/accounts_summary_entity/accounts_summary_entity.dart';
import 'package:dio/dio.dart';

abstract interface class IAccountRepository {
  //
  Future<PaginationModel<AccountEntity>> getAccounts({
    int page = 1,
    bool isActiveOnly = true,
  });

  //
  Future<AccountsSummaryEntity> getAccountsSummary();

  //
  Future<void> createAccount({required AccountRequestEntity account});

  //
  Future<void> updateAccount({
    required int accountId,
    required AccountRequestEntity account,
  });

  //
  Future<void> deleteAccount({required int accountId});

  //
  Future<String> downloadAccountStatementPdf({
    required int accountId,
    required String startDate,
    required String endDate,
    required CancellationToken funCancelToken,
    CancelToken? dioCancelToken,
    ProgressCallback? onReceiveProgress,
  });
}
