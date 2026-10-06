import 'package:bookie_buddy_shared/core/core/common/utils/cancellation_token.dart';
import 'package:test/test.dart';

void main() {
  test('cancel flips both the flag and the dio token', () {
    final token = CancellationToken();
    expect(token.isCancelled, isFalse);
    expect(token.dioToken.isCancelled, isFalse);

    token.cancel('stop');

    expect(token.isCancelled, isTrue);
    expect(token.dioToken.isCancelled, isTrue);
  });

  test('cancel is idempotent', () {
    final token = CancellationToken()..cancel();
    expect(token.cancel, returnsNormally);
  });

  test('cancelling the dio token directly is reflected in isCancelled', () {
    final token = CancellationToken();

    token.dioToken.cancel();

    expect(token.isCancelled, isTrue);
    expect(token.cancel, returnsNormally);
  });

  test('cancel passes the reason to the dio token', () {
    final token = CancellationToken()..cancel('stop');

    expect(token.dioToken.cancelError?.error, 'stop');
  });
}
