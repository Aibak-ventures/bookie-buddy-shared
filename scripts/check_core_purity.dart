// Import-boundary checks for the merged package (these used to be enforced by
// the compiler when core/ui were separate pub packages; now this script is
// the enforcement):
//
//  1. lib/core/ is pure Dart — no Flutter-only imports.
//  2. lib/tooling/ (dev-only script helpers) stays isolated: nothing in
//     lib/core/, lib/ui/ or the main barrel imports or exports it, and it
//     imports only plain-Dart `dart:` libraries and its own files.
//  3. Scripts (scripts/, example/) import only the tooling — no `dart:io`,
//     no other packages; anything they need belongs in lib/tooling. The
//     barrel (tooling.dart) is preferred, but any file under
//     package:bookie_buddy_shared/tooling/ is fine.
//
// Usage: dart run scripts/check_core_purity.dart
import 'package:bookie_buddy_shared/tooling/tooling.dart';

/// Captures the URI of an import/export directive.
final _directive = RegExp('''^\\s*(?:import|export)\\s+['"]([^'"]+)['"]''');

/// A Flutter-only URI: any `package:flutter*` (covers `flutter`,
/// `flutter_test`, `flutter_localizations`, etc.) or `dart:ui` (only
/// available under the Flutter engine, not plain Dart).
bool _isFlutterOnly(String uri) =>
    uri.startsWith('package:flutter') || uri == 'dart:ui';

/// A URI that points into lib/tooling/ — by package URI or relative path.
bool _pointsIntoTooling(String uri) =>
    uri.startsWith('package:bookie_buddy_shared/tooling/') ||
    (!uri.startsWith('package:') &&
        !uri.startsWith('dart:') &&
        RegExp(r'(^|/)tooling/').hasMatch(uri));

/// What lib/tooling/ may import: plain-Dart SDK libraries and its own files
/// (relative, staying inside the folder).
bool _isNotAllowedInTooling(String uri) {
  if (uri.startsWith('dart:')) return uri == 'dart:ui';
  if (uri.startsWith('package:')) return true;
  return uri.startsWith('..');
}

/// Scripts import from here — preferably the barrel, `tooling.dart`.
const _toolingPackage = 'package:bookie_buddy_shared/tooling/';

/// What scripts may import: anything under the tooling package, or a file
/// beside/below them — not `dart:` libraries, other packages, or relative
/// paths climbing out of the script's folder (e.g. `../lib/core/...`).
bool _isNotAllowedInScripts(String uri) =>
    uri.startsWith('..') ||
    (!uri.startsWith(_toolingPackage) &&
        (uri.startsWith('dart:') || uri.startsWith('package:')));

Future<void> main() =>
    runScript(_check, context: ScriptContext.forScriptRoot());

Future<void> _check(ScriptContext context) async {
  const lib = 'lib';

  for (final dir in ['core', 'ui', 'tooling']) {
    if (!context.exists('$lib/$dir')) {
      context.fail(
        'lib/$dir not found in ${context.root.path}.\n'
        'Cause: this script assumes the merged `lib/core` / `lib/ui` / '
        '`lib/tooling` layout (see CHANGELOG.md) — either it moved, or '
        'this isn\'t being run from the repo root.\n'
        'Fix: run via `dart run scripts/check_core_purity.dart` from the '
        'repo root, or update this script\'s expected paths if the folders '
        'were intentionally relocated.',
      );
    }
  }

  var failed = false;

  // 1. lib/core/ must not import Flutter.
  final flutterImports = _offenders(context, ['$lib/core'], _isFlutterOnly);
  if (flutterImports.isNotEmpty) {
    failed = true;
    _report(
      context,
      'lib/core has ${flutterImports.length} file(s) with a Flutter-only import',
      flutterImports,
    );
    context
      ..error(
        'Cause: lib/core is pure Dart by convention (it used to be a '
        'separate, non-Flutter pub package — the Flutter SDK dependency '
        'itself made this a build error, not just a lint) — anything under '
        'it must build without the Flutter SDK.',
      )
      ..error(
        'Fix: remove the import(s) above, or if the code genuinely needs '
        'Flutter, move that file to lib/ui instead.',
      );
  } else {
    context.ok('lib/core is pure Dart. OK.');
  }

  // 2a. Nothing production-facing may touch lib/tooling/.
  final toolingUsers = _offenders(context, [
    '$lib/core',
    '$lib/ui',
    '$lib/bookie_buddy_shared.dart',
  ], _pointsIntoTooling);
  if (toolingUsers.isNotEmpty) {
    failed = true;
    _report(
      context,
      'production code references lib/tooling in '
      '${toolingUsers.length} file(s)',
      toolingUsers,
    );
    context
      ..error(
        'Cause: lib/tooling holds dev-only script helpers; if the app code '
        '(or the barrel) imports them they get compiled into the apps.',
      )
      ..error(
        'Fix: remove the import/export. Script helpers are for `tool/` and '
        '`scripts/` only; if production code needs the same logic, put it '
        'in lib/core instead.',
      );
  } else {
    context.ok('lib/core, lib/ui and the barrel do not use lib/tooling. OK.');
  }

  // 2b. lib/tooling/ must stay self-contained plain Dart.
  final toolingImports = _offenders(context, [
    '$lib/tooling',
  ], _isNotAllowedInTooling);
  if (toolingImports.isNotEmpty) {
    failed = true;
    _report(
      context,
      'lib/tooling has ${toolingImports.length} file(s) with a disallowed '
      'import',
      toolingImports,
    );
    context
      ..error(
        'Cause: lib/tooling must run under plain `dart run` and stay '
        'independent of the rest of the package, so it may import only '
        'plain-Dart `dart:` libraries and its own files.',
      )
      ..error(
        'Fix: remove the import(s) above, or move the code that needs them '
        'out of lib/tooling.',
      );
  } else {
    context.ok('lib/tooling is self-contained. OK.');
  }

  // 3. Scripts use only the tooling.
  final scriptImports = _offenders(context, [
    'scripts',
    'example',
  ], _isNotAllowedInScripts);
  if (scriptImports.isNotEmpty) {
    failed = true;
    _report(
      context,
      'scripts import more than the tooling in '
      '${scriptImports.length} file(s)',
      scriptImports,
    );
    context
      ..error(
        'Cause: scripts/ and example/ are written purely against '
        'lib/tooling so they run anywhere with plain `dart run` and stay '
        'small.',
      )
      ..error(
        'Fix: import only ${_toolingPackage}tooling.dart. If a script needs something it '
        'lacks (file access, process running, ...), add a helper to '
        'lib/tooling instead of importing dart:io or a package.',
      );
  } else {
    context.ok('scripts/ and example/ use only the tooling. OK.');
  }

  if (failed) context.fail('import-boundary check failed — see above.');
}

/// Files under [roots] (folders or single files, relative to the repo root)
/// that have an import/export whose URI matches [isOffender].
/// file path -> [(line number, offending directive), ...]
Map<String, List<(int, String)>> _offenders(
  ScriptContext context,
  List<String> roots,
  bool Function(String uri) isOffender,
) {
  final offenders = <String, List<(int, String)>>{};
  for (final root in roots) {
    for (final file in context.dartFiles(root)) {
      final lines = context.read(file).split('\n');
      for (var i = 0; i < lines.length; i++) {
        final uri = _directive.firstMatch(lines[i])?.group(1);
        if (uri != null && isOffender(uri)) {
          (offenders[file] ??= []).add((i + 1, lines[i].trim()));
        }
      }
    }
  }
  return offenders;
}

void _report(
  ScriptContext context,
  String headline,
  Map<String, List<(int, String)>> offenders,
) {
  context.error('Error: $headline:');
  for (final entry in offenders.entries) {
    for (final (line, text) in entry.value) {
      context.error('  ${entry.key}:$line: $text');
    }
  }
}
