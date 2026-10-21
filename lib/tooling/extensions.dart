import 'dart:io';

/// Small helpers for the string handling scripts do all the time.
extension ScriptString on String {
  /// Non-blank lines, each trimmed — e.g. the lines of `git tag --list`.
  List<String> get nonEmptyLines =>
      split('\n').map((l) => l.trim()).where((l) => l.isNotEmpty).toList();

  /// This string without a leading [prefix], if it has one.
  String withoutPrefix(String prefix) =>
      startsWith(prefix) ? substring(prefix.length) : this;

  /// Whether this is a plain `X.Y.Z` version (no `v`, no build number).
  bool get isSemver => RegExp(r'^\d+\.\d+\.\d+$').hasMatch(this);

  /// Compares two `X.Y.Z` versions numerically per component (not lexically,
  /// so `10.0.0` sorts after `2.0.0`). Negative if this < [other], 0 if
  /// equal, positive if this > [other]. Both must be [isSemver].
  int compareSemver(String other) {
    final a = split('.').map(int.parse).toList();
    final b = other.split('.').map(int.parse).toList();
    for (var i = 0; i < 3; i++) {
      final cmp = a[i].compareTo(b[i]);
      if (cmp != 0) return cmp;
    }
    return 0;
  }
}

// Members use `this.` on purpose: inside the extension a bare `exitCode` or
// `stdout` resolves to dart:io's globals, not the result's.
extension ScriptProcessResult on ProcessResult {
  /// Whether the command exited with code 0.
  bool get succeeded => this.exitCode == 0;

  /// Trimmed stdout.
  String get output => this.stdout.toString().trim();
}
