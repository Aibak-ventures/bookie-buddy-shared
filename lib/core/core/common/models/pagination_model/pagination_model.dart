
import 'base_pagination_model.dart';

class PaginationModel<T> extends BasePaginationModel {
  final List<T> data;
  @override
  final String? nextPageUrl;
  @override
  final String? previousPageUrl;
  @override
  final int totalData;
  @override
  final int pageSize;
  @override
  final int currentPage;
  @override
  final int totalPages;
  @override
  final int startIndex;
  @override
  final int endIndex;

  PaginationModel({
    required this.data,
    this.nextPageUrl,
    this.previousPageUrl,
    this.totalData = 0,
    this.pageSize = 0,
    this.currentPage = 1,
    this.totalPages = 0,
    this.startIndex = 0,
    this.endIndex = 0,
  });

  /// JSON factory with generic type parsing
  factory PaginationModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) itemFromJson, {
    List<T> Function(List<T> data)? listFromJson,
    List<T> Function(dynamic dataJson, T Function(Object? json) itemFromJson)?
    customJsonParser,
  }) {
    final result = customJsonParser != null
        ? customJsonParser(json['data'], itemFromJson)
        : (json['data'] as List<dynamic>?)
                  ?.map((item) => itemFromJson(item))
                  .toList() ??
              <T>[];

    final meta = BasePaginationModel.parseMeta(json);

    return PaginationModel<T>(
      data: listFromJson != null ? listFromJson(result) : result,
      totalData: meta.totalData,
      nextPageUrl: meta.nextPageUrl,
      previousPageUrl: meta.previousPageUrl,
      currentPage: meta.currentPage,
      totalPages: meta.totalPages,
      startIndex: meta.startIndex,
      endIndex: meta.endIndex,
      pageSize: meta.pageSize,
    );
  }

  /// Extracts the page number from a pagination URL.
  ///
  /// If the URL is null, does not contain a 'page' query parameter, or if parsing fails,
  /// this method will return `1` as the default page number.
  static int getPageFromUrl(String? url) =>
      BasePaginationModel.getPageFromUrl(url);
}

extension PaginationModelMapper<T> on PaginationModel<T> {
  PaginationModel<E> toMappedEntity<E>(E Function(T) mapper) =>
      PaginationModel<E>(
        data: data.map(mapper).toList(),
        nextPageUrl: nextPageUrl,
        previousPageUrl: previousPageUrl,
        totalData: totalData,
        pageSize: pageSize,
        currentPage: currentPage,
        totalPages: totalPages,
        startIndex: startIndex,
        endIndex: endIndex,
      );
}
