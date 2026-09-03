import 'package:clock/clock.dart';

/// Runs [action] and delays returning its result until at least [minimum]
/// has elapsed.
///
/// Guarantees a floor on perceived duration, not a ceiling: if [action]
/// takes longer than [minimum], nothing is added. The floor also applies
/// when [action] throws, so a fast failure doesn't flash past the UI it
/// was covering (e.g. a splash screen animation).
///
/// Uses [clock] (not [Stopwatch], which `package:fake_async` cannot fake)
/// so callers can test this deterministically with `fakeAsync`.
Future<T> runForAtLeast<T>(
  Future<T> Function() action,
  Duration minimum,
) async {
  final start = clock.now();
  try {
    return await action();
  } finally {
    final remaining = minimum - clock.now().difference(start);
    if (remaining > Duration.zero) await Future.delayed(remaining);
  }
}
