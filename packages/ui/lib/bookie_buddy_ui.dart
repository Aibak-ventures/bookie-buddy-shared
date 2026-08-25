/// Shared visual layer for Bookie Buddy's mobile and web apps.
///
/// Only exports what's actually finished and analyzing clean — see
/// docs/PENDING.md for what's staged in this package but not yet wired up
/// (booking/sales receipt builders, still coupled to app-specific entities).
library;

export 'features/thermal_printer/presentation/receipt_design/shared/receipt_canvas.dart';
export 'features/thermal_printer/presentation/receipt_design/shared/monochrome.dart';
export 'features/thermal_printer/presentation/receipt_design/shared/offscreen_render.dart';
