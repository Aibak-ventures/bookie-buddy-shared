import 'base_pagination_model.dart';

/// A paginated envelope wrapping a single object per page (`data: T`),
/// for endpoints that return one resource per page with `next`/`previous`
/// navigation — as opposed to [PaginationModel], which wraps `List<T>`.
class PaginationObjectModel<T> extends BasePaginationModel {
  final T data;
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

  PaginationObjectModel({
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
  factory PaginationObjectModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) itemFromJson,
  ) {
    final meta = BasePaginationModel.parseMeta(json);

    return PaginationObjectModel<T>(
      data: itemFromJson(json['data']),
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
}

extension PaginationObjectModelMapper<T> on PaginationObjectModel<T> {
  PaginationObjectModel<E> toMappedEntity<E>(E Function(T) mapper) =>
      PaginationObjectModel<E>(
        data: mapper(data),
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
