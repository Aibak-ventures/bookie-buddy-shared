// lib/core/ is pure Dart by convention (no Flutter dependency) — this used
// to be enforced by the compiler when core/ui were separate pub packages;
// now that they're one package, this script is the enforcement instead.
//
// Usage: dart run scripts/check_core_purity.dart
import 'dart:io';

/// Matches an import/export whose URI is Flutter-only: any
/// `package:flutter*` (covers `flutter`, `flutter_test`,
/// `flutter_localizations`, etc.) or `dart:ui` (only available under the
/// Flutter engine, not plain Dart).
final _flutterOnlyImport = RegExp(
  '''^\\s*(?:import|export)\\s+['"](package:flutter[^'"]*|dart:ui)['"]''',
);

void main() {
  final scriptDir = File.fromUri(Platform.script).parent;
  final repoRoot = scriptDir.parent;
  final coreDir = Directory('${repoRoot.path}/lib/core');

  if (!coreDir.existsSync()) {
    stderr.writeln('Error: lib/core not found at ${coreDir.path}.');
    stderr.writeln('Cause: this script assumes the merged `lib/core` / `lib/ui` '
        'layout (see CHANGELOG.md) — either it moved, or this isn\'t being run '
        'from the repo root.');
    stderr.writeln('Fix: run via `dart run scripts/check_core_purity.dart` from '
        'the repo root, or update this script\'s expected path if lib/core was '
        'intentionally relocated.');
    exit(1);
  }

  // file path -> [(line number, offending import line), ...]
  final offenders = <String, List<(int, String)>>{};
  for (final entity in coreDir.listSync(recursive: true)) {
    if (entity is! File || !entity.path.endsWith('.dart')) continue;
    final lines = entity.readAsLinesSync();
    for (var i = 0; i < lines.length; i++) {
      if (_flutterOnlyImport.hasMatch(lines[i])) {
        final relPath = entity.path.substring(repoRoot.path.length + 1);
        (offenders[relPath] ??= []).add((i + 1, lines[i].trim()));
      }
    }
  }

  if (offenders.isNotEmpty) {
    stderr.writeln('Error: lib/core has ${offenders.length} file(s) with a '
        'Flutter-only import:');
    for (final entry in offenders.entries) {
      for (final (line, text) in entry.value) {
        stderr.writeln('  ${entry.key}:$line: $text');
      }
    }
    stderr.writeln('Cause: lib/core is pure Dart by convention (it used to be a '
        'separate, non-Flutter pub package — the Flutter SDK dependency itself '
        'made this a build error, not just a lint) — anything under it must '
        'build without the Flutter SDK.');
    stderr.writeln('Fix: remove the import(s) above, or if the code genuinely '
        'needs Flutter, move that file to lib/ui instead.');
    exit(1);
  }

  stdout.writeln('lib/core is pure Dart. OK.');
}
