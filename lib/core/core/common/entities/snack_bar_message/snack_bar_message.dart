/// A ready-to-show snackbar payload — title, message and whether it's an
/// error — matching the shape every app's own snackbar helper already
/// expects (`context.showSnackBar(message, title: ..., isError: ...)`).
///
/// Generic on purpose: any shared, pure-Dart piece of logic that needs to
/// hand a caller a user-facing message — not just refund availability —
/// can return this instead of each app re-deriving its own copy of the
/// same text.
class SnackBarMessage {
  const SnackBarMessage({this.title, required this.message, this.isError = false});

  final String? title;
  final String message;
  final bool isError;
}
