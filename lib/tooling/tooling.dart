/// Reusable building blocks for Dart-based project scripts (cross-OS, no
/// shell scripts): [ScriptContext], script entry points, `FlutterTooling`,
/// `GitTooling`, string/process extensions and terminal styling. Uses only
/// `dart:` libraries, so it is safe to import from `tool/*.dart` scripts run
/// with plain `dart run`.
///
/// Import `package:bookie_buddy_shared/tooling/tooling.dart`. Not exported by
/// `bookie_buddy_shared.dart` — see README.md in this folder.
library;

export 'ansi.dart';
export 'extensions.dart';
export 'flutter_tooling.dart';
export 'git_tooling.dart';
export 'script_context.dart';
export 'script_runner.dart';
