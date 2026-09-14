/// A simple cancellation token class to signal cancellation of operations.
///
/// This can be used to gracefully stop ongoing tasks when requested.
class CancellationToken {
  bool _isCancelled = false;

  /// Returns true if cancellation has been requested.
  bool get isCancelled => _isCancelled;

  /// Sets the cancellation flag to true.
  void cancel() {
    _isCancelled = true;
  }
}
