/// Reusable building blocks for Dart-based project scripts (cross-OS, no
/// shell scripts). Pure `dart:io` — safe to import from `tool/*.dart` scripts
/// run with plain `dart run`.
///
/// Import `package:bookie_buddy_shared/tooling/tooling.dart`. Not exported by
/// `bookie_buddy_shared.dart` — see README.md in this folder.
library;

export 'ansi.dart';
export 'extensions.dart';
export 'flutter_tooling.dart';
export 'script_context.dart';
export 'script_runner.dart';
