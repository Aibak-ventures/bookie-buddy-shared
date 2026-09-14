import 'dart:developer';

/// Shared pagination metadata + parsing. Extend this on any model that
/// carries a page of data — whether that data is a `List<T>` (see
/// [PaginationModel]) or a single object (see [PaginationObjectModel]) — so
/// pagination fields and their JSON parsing never need to be redeclared per
/// model.
abstract class BasePaginationModel {
  String? get nextPageUrl;
  String? get previousPageUrl;
  int get totalData;
  int get pageSize;
  int get currentPage;
  int get totalPages;
  int get startIndex;
  int get endIndex;

  /// Extracts the page number from a pagination URL.
  ///
  /// If the URL is null, does not contain a 'page' query parameter, or if parsing fails,
  /// this method will return `1` as the default page number.
  static int getPageFromUrl(String? url) {
    final uri = Uri.tryParse(url ?? '');
    return int.tryParse(uri?.queryParameters['page'] ?? '1') ?? 1;
  }

  /// Parses only the pagination metadata fields — shared by any paginated
  /// response shape, regardless of whether `data` is a list or an object.
  static PaginationMeta parseMeta(Map<String, dynamic> json) => (
    totalData: json['count'] as int? ?? 0,
    nextPageUrl: json['next'] as String?,
    previousPageUrl: json['previous'] as String?,
    currentPage: json['current_page'] as int? ?? 1,
    totalPages: json['total_pages'] as int? ?? 1,
    startIndex: json['start_index'] as int? ?? 0,
    endIndex: json['end_index'] as int? ?? 0,
    pageSize: json['page_size'] as int? ?? 0,
  );
}

/// The parsed pagination metadata fields, independent of the `data` shape.
typedef PaginationMeta = ({
  int totalData,
  String? nextPageUrl,
  String? previousPageUrl,
  int currentPage,
  int totalPages,
  int startIndex,
  int endIndex,
  int pageSize,
});

extension BasePaginationModelX on BasePaginationModel {
  bool get hasNextPage => nextPageUrl != null && nextPageUrl!.isNotEmpty;

  void logExtraInfo({bool full = false}) {
    log(
      '\nNext Page URL: $nextPageUrl \nPrevious Page URL: $previousPageUrl \nTotal Data count: $totalData ${full ? '\nTotal Pages: $totalPages \nPage Size: $pageSize \nCurrent Page: $currentPage' : ''} ',
      name: 'PaginationModel',
    );
  }
}
