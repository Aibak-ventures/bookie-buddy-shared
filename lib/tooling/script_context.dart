import 'dart:io';

import 'ansi.dart';
import 'extensions.dart';

/// Thrown by [ScriptContext.fail] (and failed [ScriptContext.run] calls) to
/// abort a script with a message and exit code. [runScript] catches it,
/// so scripts never need to call `exit()` themselves.
class ScriptFailure implements Exception {
  ScriptFailure(this.message, {this.exitCode = 1});

  final String message;
  final int exitCode;

  @override
  String toString() => message;
}

/// Basic building blocks for Dart-based project scripts: logging, running
/// processes, prompting. Pure `dart:io`, so it works the same on macOS,
/// Linux and Windows.
class ScriptContext {
  ScriptContext({Directory? root}) : root = root ?? _findProjectRoot();

  /// Context rooted at the project that contains the running script (the
  /// nearest `pubspec.yaml` above the script file, at any depth). Unlike the
  /// default, this never depends on the current directory — use it for
  /// scripts that act on their own repo (e.g. a release).
  factory ScriptContext.forScriptRoot() => ScriptContext(
    root: _findProjectRoot(File.fromUri(Platform.script).parent),
  );

  /// The project root the script operates on: the nearest directory at or
  /// above the current one that contains `pubspec.yaml`, so scripts work
  /// from any subfolder (falls back to the current directory).
  final Directory root;

  static Directory _findProjectRoot([Directory? from]) {
    final start = from ?? Directory.current;
    for (var dir = start; ; dir = dir.parent) {
      if (File('${dir.path}/pubspec.yaml').existsSync()) return dir;
      if (dir.parent.path == dir.path) return start;
    }
  }

  /// Windows needs a shell to launch `.bat`/`.cmd` tools (fvm, flutter). On
  /// POSIX it would join the arguments into one string and break any that
  /// contain spaces, so run directly there.
  static final bool _needsShell = Platform.isWindows;

  /// Absolute path of [relativePath] inside [root].
  String path(String relativePath) => '${root.path}/$relativePath';

  // Output methods make any http(s) URL in the message clickable.
  void info(String message) => stdout.writeln(_linkUrls(message));

  /// A section heading for a script step (after a blank line), e.g.
  /// `Building DEV APK...`.
  void step(String message) =>
      stdout.writeln('\n${_linkUrls(message).cyan.bold}');

  void success(String message) =>
      stdout.writeln('✓ ${_linkUrls(message)}'.green);

  void warn(String message) =>
      stderr.writeln('Warning: ${_linkUrls(message)}'.yellow);

  /// Prints [message] to stderr in red (use [fail] to abort).
  void error(String message) => stderr.writeln(_linkUrls(message).red);

  static final _url = RegExp(r'https?://[^\s)\]>"\x1B]+');
  static final _trailingPunctuation = RegExp(r"[.,;:!?']+$");

  /// Links plain URLs in [message]; a message that already carries explicit
  /// hyperlinks (OSC 8) is left as is.
  static String _linkUrls(String message) => message.contains('\x1B]8;')
      ? message
      : message.replaceAllMapped(_url, (m) {
          // Sentence punctuation right after a URL isn't part of it.
          final url = m[0]!.replaceFirst(_trailingPunctuation, '');
          return '${url.link(url)}${m[0]!.substring(url.length)}';
        });

  /// [relativePath] (file or folder, relative to [root]; absolute paths pass
  /// through) as its absolute path, clickable in terminals that support
  /// hyperlinks. Works for paths with spaces, unlike plain-text detection.
  /// Print it with the output methods: `context.success(context.pathLink(apk))`.
  String pathLink(String relativePath) {
    final absolute = Uri.file(relativePath).isAbsolute
        ? relativePath
        : path(relativePath);
    return absolute.link(Uri.file(absolute).toString());
  }

  /// Whether [relativePath] (file or folder) exists in [root].
  bool exists(String relativePath) =>
      FileSystemEntity.typeSync(path(relativePath)) !=
      FileSystemEntityType.notFound;

  String read(String relativePath) =>
      File(path(relativePath)).readAsStringSync();

  void write(String relativePath, String content) =>
      File(path(relativePath)).writeAsStringSync(content);

  /// Copies the file at [fromPath] to [toPath] (both relative to [root]).
  void copy(String fromPath, String toPath) =>
      File(path(fromPath)).copySync(path(toPath));

  /// Paths (relative to [root]) of the `.dart` files at or under
  /// [relativePath] — a single file, or a folder searched recursively.
  List<String> dartFiles(String relativePath) {
    final target = path(relativePath);
    if (target.endsWith('.dart')) return [relativePath];
    final folder = Directory(target);
    if (!folder.existsSync()) return [];
    final prefix = root.path.endsWith(Platform.pathSeparator)
        ? root.path
        : '${root.path}${Platform.pathSeparator}';
    return [
      for (final entity in folder.listSync(recursive: true))
        if (entity is File && entity.path.endsWith('.dart'))
          entity.path.substring(prefix.length).replaceAll(r'\', '/'),
    ];
  }

  /// The top-level `version:` in pubspec.yaml (e.g. `2.18.0+69`), or null if
  /// there isn't one.
  String? pubspecVersion() => RegExp(
    r'^version:[ \t]*([^\s#]+)',
    multiLine: true,
  ).firstMatch(read('pubspec.yaml'))?.group(1);

  /// Aborts the script with [message].
  Never fail(String message, {int exitCode = 1}) =>
      throw ScriptFailure(message, exitCode: exitCode);

  /// Fails unless a project root (a directory containing `pubspec.yaml`) was
  /// found.
  void requireProjectRoot() {
    if (!exists('pubspec.yaml')) {
      fail(
        'pubspec.yaml not found in ${root.path}. Run this inside a project.',
      );
    }
  }

  /// Runs [executable] with output streamed to the terminal. Fails the script
  /// on a non-zero exit code.
  Future<void> run(
    String executable,
    List<String> args, {
    String? workingDirectory,
  }) async {
    final Process process;
    try {
      process = await Process.start(
        executable,
        args,
        workingDirectory: workingDirectory ?? root.path,
        mode: ProcessStartMode.inheritStdio,
        runInShell: _needsShell,
      );
    } on ProcessException catch (e) {
      fail(_couldNotStart(executable, e));
    }
    final code = await process.exitCode;
    if (code != 0) {
      fail(
        '`$executable ${args.join(' ')}` failed with exit code $code.',
        exitCode: code,
      );
    }
  }

  /// Runs [executable] quietly and returns the raw result, whatever the exit
  /// code — for callers that handle failure themselves. Still fails the
  /// script if [executable] can't be started at all (e.g. not installed).
  Future<ProcessResult> exec(
    String executable,
    List<String> args, {
    String? workingDirectory,
  }) async {
    try {
      return await Process.run(
        executable,
        args,
        workingDirectory: workingDirectory ?? root.path,
        runInShell: _needsShell,
      );
    } on ProcessException catch (e) {
      fail(_couldNotStart(executable, e));
    }
  }

  static String _couldNotStart(String executable, ProcessException e) =>
      'could not start `$executable` (${e.message}). '
      'Is it installed and on your PATH?';

  /// Runs [executable] quietly and returns its trimmed stdout. Fails the
  /// script on a non-zero exit code (printing the command's stderr).
  Future<String> capture(
    String executable,
    List<String> args, {
    String? workingDirectory,
  }) async {
    final result = await exec(
      executable,
      args,
      workingDirectory: workingDirectory,
    );
    if (!result.succeeded) {
      stderr.write(result.stderr);
      fail(
        '`$executable ${args.join(' ')}` failed with exit code '
        '${result.exitCode}.',
        exitCode: result.exitCode,
      );
    }
    return result.output;
  }

  /// Whether [executable] can be launched and exits successfully with
  /// `--version`.
  Future<bool> commandExists(String executable) async {
    try {
      return (await exec(executable, ['--version'])).succeeded;
    } on ScriptFailure {
      return false;
    }
  }

  /// Asks [question] and returns the trimmed answer (empty at EOF).
  String prompt(String question) {
    stdout.write(question);
    return stdin.readLineSync()?.trim() ?? '';
  }

  /// Asks a yes/no question on the terminal. Anything but `y`/`yes` is no.
  bool confirm(String question) {
    final answer = prompt('$question (y/N): ').toLowerCase();
    return answer == 'y' || answer == 'yes';
  }
}
