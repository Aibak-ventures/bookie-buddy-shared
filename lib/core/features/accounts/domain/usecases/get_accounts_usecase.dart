import 'package:bookie_buddy_shared/core/features/accounts/domain/entities/account_entity/account_entity.dart';
import 'package:bookie_buddy_shared/core/features/accounts/domain/repositories/i_account_repository.dart';

class GetAccountsUseCase {
  final IAccountRepository _repository;

  const GetAccountsUseCase(this._repository);
  Future<List<AccountEntity>> call({bool isActiveOnly = true}) async {
    final getAccounts = _repository.getAccounts;
    // 1. Fetch the first page
    final firstResult = await getAccounts(isActiveOnly: isActiveOnly);

    // Start the list with the first page data
    final List<AccountEntity> accounts = List.from(firstResult.data);

    final totalPages = firstResult.totalPages;
    const int maxPageLimit = 50;
    // 2. If there are more pages, fetch them
    // This loop won't even run if totalPages is 1 or less
    for (int page = 2; page <= totalPages; page++) {
      if (page > maxPageLimit) break;

      final result = await getAccounts(page: page, isActiveOnly: isActiveOnly);
      accounts.addAll(result.data);
    }

    return accounts;
  }
}
