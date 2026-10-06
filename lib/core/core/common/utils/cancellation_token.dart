import 'package:dio/dio.dart';

/// A simple cancellation token class to signal cancellation of operations.
///
/// This can be used to gracefully stop ongoing tasks when requested.
///
/// It also owns a Dio [CancelToken] ([dioToken]) that is cancelled together
/// with this token, so callers only need to create and pass one token. The
/// data layer passes [dioToken] to Dio calls (`cancelToken: token.dioToken`)
/// so in-flight HTTP requests are aborted as well.
class CancellationToken {
  bool _isCancelled = false;

  /// Dio token tied to this token's lifecycle. Intended for the data layer.
  final CancelToken dioToken = CancelToken();

  /// Returns true if cancellation has been requested, either through
  /// [cancel] or by cancelling [dioToken] directly.
  bool get isCancelled => _isCancelled || dioToken.isCancelled;

  /// Sets the cancellation flag to true and aborts any Dio request using
  /// [dioToken]. Calling it more than once is a no-op.
  void cancel([String? reason]) {
    if (isCancelled) return;
    _isCancelled = true;
    dioToken.cancel(reason);
  }
}
