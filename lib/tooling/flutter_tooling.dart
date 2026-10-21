import 'script_context.dart';

/// Flutter-specific script helpers: picks `fvm flutter` when available, reads
/// the app version, builds split-per-ABI APKs.
class FlutterTooling {
  FlutterTooling(this.context);

  final ScriptContext context;

  static const apkOutputDir = 'build/app/outputs/flutter-apk';

  List<String>? _flutterCommand;

  /// `['fvm', 'flutter']` if fvm is installed, otherwise `['flutter']`.
  Future<List<String>> flutterCommand() async {
    if (_flutterCommand != null) return _flutterCommand!;
    if (await context.commandExists('fvm')) {
      return _flutterCommand = ['fvm', 'flutter'];
    }
    context.warn('fvm not found, falling back to plain flutter.');
    return _flutterCommand = ['flutter'];
  }

  Future<void> flutter(List<String> args) async {
    final command = await flutterCommand();
    await context.run(command.first, [...command.skip(1), ...args]);
  }

  /// The full `version:` from pubspec.yaml, e.g. `2.18.0+69`.
  String pubspecVersion() {
    context.requireProjectRoot();
    return context.pubspecVersion() ??
        context.fail('Could not find a version in pubspec.yaml.');
  }

  /// The pubspec version without the build number, as a file-name-safe tag:
  /// `2.18.0+69` → `v2_18_0`. (Builds that differ only in build number share
  /// a tag, so their APK names collide.)
  String versionTag() =>
      'v${pubspecVersion().split('+').first.replaceAll('.', '_')}';

  /// Runs `flutter build apk --release --split-per-abi` and copies the
  /// arm64-v8a APK (what almost every current Android phone needs) to
  /// `<apkOutputDir>/<fileName>`. Returns the new file's path.
  Future<String> buildArm64Apk({
    required String fileName,
    List<String> extraArgs = const [],
  }) async {
    await flutter([
      'build',
      'apk',
      '--release',
      '--split-per-abi',
      ...extraArgs,
    ]);
    const built = '$apkOutputDir/app-arm64-v8a-release.apk';
    if (!context.exists(built)) {
      context.fail('Expected APK not found at ${context.path(built)}.');
    }
    final copy = '$apkOutputDir/$fileName';
    context.copy(built, copy);
    return context.path(copy);
  }
}
