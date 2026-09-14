import 'package:bookie_buddy_shared/core/features/client/domain/entities/client_entity/client_entity.dart';
import 'package:bookie_buddy_shared/core/features/client/domain/repositories/i_client_repository.dart';

class GetClientDetailsUseCase {
  final IClientRepository _repository;
  GetClientDetailsUseCase(this._repository);

  Future<ClientEntity> call(int clientId) =>
      _repository.getClientDetails(clientId);
}
