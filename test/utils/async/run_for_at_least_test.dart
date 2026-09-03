import 'dart:async';

import 'package:bookie_buddy_shared/core/utils/async/run_for_at_least.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

void main() {
  group('runForAtLeast', () {
    test('does not wait when action already meets the minimum', () {
      fakeAsync((async) {
        String? result;
        runForAtLeast(
          () async => 'done',
          const Duration(seconds: 2),
        ).then((value) => result = value);

        async.elapse(const Duration(seconds: 2));
        expect(result, 'done');
      });
    });

    test('pads a fast result up to the minimum', () {
      fakeAsync((async) {
        String? result;
        runForAtLeast(
          () async => 'done',
          const Duration(seconds: 2),
        ).then((value) => result = value);

        async.elapse(const Duration(milliseconds: 1999));
        expect(result, isNull);

        async.elapse(const Duration(milliseconds: 1));
        expect(result, 'done');
      });
    });

    test('does not add delay when action already exceeds the minimum', () {
      fakeAsync((async) {
        String? result;
        runForAtLeast(() async {
          await Future<void>.delayed(const Duration(seconds: 5));
          return 'done';
        }, const Duration(seconds: 2)).then((value) => result = value);

        async.elapse(const Duration(seconds: 5));
        expect(result, 'done');
      });
    });

    test('applies the floor even when action throws', () {
      fakeAsync((async) {
        Object? error;
        unawaited(
          runForAtLeast(
            () async => throw StateError('boom'),
            const Duration(seconds: 2),
          ).then((_) {}, onError: (Object e) => error = e),
        );

        async.elapse(const Duration(milliseconds: 1999));
        expect(error, isNull);

        async.elapse(const Duration(milliseconds: 1));
        expect(error, isA<StateError>());
      });
    });
  });
}
