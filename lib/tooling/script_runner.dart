import 'dart:io';

import 'ansi.dart';
import 'script_context.dart';

/// One reusable unit of work, e.g. building the internal APKs. Run it from a
/// [ScriptRunner] (one entry point, many commands) or on its own with
/// [runCommand] (one entry point per command).
abstract class ScriptCommand {
  /// Name typed on the command line when used through a [ScriptRunner].
  String get name;

  /// One-line summary shown in the help output.
  String get description;

  /// Arguments hint shown in the help output, e.g. `[dev|prod|all]`.
  String get usage => '';

  /// [args] excludes the command name itself.
  Future<void> run(ScriptContext context, List<String> args);
}

/// Runs a standalone script body: creates the [ScriptContext], and turns a
/// [ScriptFailure] into a clean error message and exit code.
Future<void> runScript(
  Future<void> Function(ScriptContext context) body, {
  ScriptContext? context,
}) async {
  try {
    await body(context ?? ScriptContext());
  } on ScriptFailure catch (e) {
    stderr.writeln('${'Error:'.red.bold} ${e.message}');
    exitCode = e.exitCode;
  } on Exception catch (e) {
    // Anything else the script throws (a missing file, bad format, ...):
    // report it cleanly instead of dumping a stack trace.
    stderr.writeln('${'Error:'.red.bold} $e');
    exitCode = 1;
  }
}

/// Runs a single [command] as its own script, e.g.
/// `Future<void> main(List<String> args) => runCommand(MyCommand(), args);`
Future<void> runCommand(ScriptCommand command, List<String> args) =>
    runScript((context) => command.run(context, args));

/// Dispatches `<executable> <command> [args]` to a [ScriptCommand] and prints
/// help.
class ScriptRunner {
  ScriptRunner({
    required this.executable,
    required List<ScriptCommand> commands,
  }) : _commands = {for (final c in commands) c.name: c} {
    if (_commands.length != commands.length) {
      throw ArgumentError(
        'Two commands share a name: ${commands.map((c) => c.name).toList()}',
      );
    }
  }

  /// How the script is invoked, e.g. `dart run tool/build.dart` — shown in help.
  final String executable;

  final Map<String, ScriptCommand> _commands;

  Future<void> run(List<String> args) async {
    final name = args.firstOrNull;
    if (name == null || name == 'help' || name == '--help') {
      _printHelp();
      return;
    }
    final command = _commands[name];
    if (command == null) {
      stderr.writeln('Unknown command "$name".\n');
      _printHelp(toStderr: true);
      exitCode = 64;
      return;
    }
    final commandArgs = args.skip(1).toList();
    if (commandArgs.firstOrNull == '-h' ||
        commandArgs.firstOrNull == '--help') {
      stdout.writeln(
        'Usage: $executable ${command._label}\n\n${command.description}',
      );
      return;
    }
    await runCommand(command, commandArgs);
  }

  void _printHelp({bool toStderr = false}) {
    final out = toStderr ? stderr : stdout;
    out
      ..writeln('Usage: $executable <command> [arguments]\n')
      ..writeln('Commands:');
    final width = _commands.values
        .map((c) => c._label.length)
        .fold(0, (a, b) => a > b ? a : b);
    for (final c in _commands.values) {
      out.writeln('  ${c._label.padRight(width)}  ${c.description}');
    }
  }
}

extension on ScriptCommand {
  /// `name usage`, as shown in the help output.
  String get _label => '$name $usage'.trim();
}
