import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'print_ticket_entity.freezed.dart';

/// Paper size, width in dots.
enum PrinterPaperSize {
  mm58(value: 1, widthMM: 58, widthPixels: 384),
  mm72(value: 2, widthMM: 72, widthPixels: 512),
  mm80(value: 3, widthMM: 80, widthPixels: 576);

  final int value;
  final int widthMM;
  final int widthPixels;

  const PrinterPaperSize({
    required this.value,
    required this.widthMM,
    required this.widthPixels,
  });

  @override
  String toString() => '${widthMM}mm (${widthPixels}px)';
}

/// One printer operation — a plain Command-pattern value, not a domain
/// entity (no business identity). Kept as a hand-written sealed class
/// rather than @freezed since it's small, changes shape often while the
/// receipt design is iterated on, and a native `switch` already gives the
/// same exhaustiveness-checking a freezed `.map()` would.
///
/// Domain never touches Flutter/rendering — [PrintTicketImageCommand] just
/// carries already-rendered, already-monochrome raw RGBA pixels, produced
/// by the presentation-layer `ReceiptCanvas` (see
/// `presentation/receipt_design/`). Deliberately raw pixels rather than an
/// encoded format (PNG, etc.) — the repository needs a decoded bitmap
/// again immediately to hand to the printer package, so encoding here
/// would just be compressed bytes decompressed right back with nothing in
/// between ever needing the compressed form.
sealed class PrintTicketCommand {
  const PrintTicketCommand();
}

/// One rasterized section of the receipt (header, everything else) — not
/// the whole receipt as a single image, so the header's async logo fetch
/// stays isolated from the rest. [rgba] is [width] × [height] pixels,
/// 4 bytes each (RGBA, already thresholded to pure black/white).
class PrintTicketImageCommand extends PrintTicketCommand {
  const PrintTicketImageCommand({
    required this.rgba,
    required this.width,
    required this.height,
  });

  final Uint8List rgba;
  final int width;
  final int height;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrintTicketImageCommand &&
          other.width == width &&
          other.height == height &&
          const ListEquality<int>().equals(other.rgba, rgba));

  @override
  int get hashCode =>
      Object.hash(width, height, const ListEquality<int>().hash(rgba));
}

/// A native ESC/POS text line — printed using the printer's own built-in
/// font, not a rasterized image like [PrintTicketImageCommand]. Reach for
/// this whenever a ticket genuinely needs a native (non-image) line rather
/// than something `ReceiptCanvas` rasterizes — e.g. `BookingReceiptCanvasBuilder.call`
/// currently uses one as a diagnostic probe: sent as the very first command
/// in a ticket, ahead of the rasterized header image, it tests whether a
/// printer's blank-paper gap before the first thing it prints is specific
/// to entering raster/image mode — if the gap moves to after this line (or
/// disappears) with a native text line first, that confirms it.
class PrintTicketTextCommand extends PrintTicketCommand {
  const PrintTicketTextCommand(this.text);

  final String text;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrintTicketTextCommand && other.text == text);

  @override
  int get hashCode => text.hashCode;
}

class PrintTicketFeedCommand extends PrintTicketCommand {
  const PrintTicketFeedCommand({this.lines = 1});

  final int lines;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrintTicketFeedCommand && other.lines == lines);

  @override
  int get hashCode => lines.hashCode;
}

/// [linesBefore] feeds extra blank lines immediately before the physical
/// cut — most printers' cutter blade sits a few line-heights below the
/// print head, so cutting without enough clearance can slice through (or
/// above) the last printed line, making it look like it printed on the
/// next receipt. Default of 4 is a reasonable general clearance; may need
/// tuning per printer model.
class PrintTicketCutCommand extends PrintTicketCommand {
  const PrintTicketCutCommand({this.linesBefore = 4});

  final int linesBefore;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrintTicketCutCommand && other.linesBefore == linesBefore);

  @override
  int get hashCode => linesBefore.hashCode;
}

/// A fully built, ready-to-print ticket — an ordered list of commands with
/// no knowledge of what content they represent (receipt, label, etc.) or
/// which transport will send them. This one keeps its `Entity` suffix and
/// stays `@freezed`: unlike the commands inside it, it genuinely is "the
/// print job" referenced across the repository/usecases the way other
/// entities are, and its shape is stable.
///
/// [paperSize] must match the width the commands' images were actually
/// rendered at — the repository builds the underlying printer `Ticket`
/// using this value, so a mismatch here means images sized for one paper
/// width get printed against a `Ticket` configured for another.
@freezed
abstract class PrintTicketEntity with _$PrintTicketEntity {
  const factory PrintTicketEntity({
    required List<PrintTicketCommand> commands,
    @Default(PrinterPaperSize.mm80) PrinterPaperSize paperSize,
  }) = _PrintTicketEntity;
}
