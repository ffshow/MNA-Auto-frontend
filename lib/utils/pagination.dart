class Pagination {
  final int? page;
  final int? perPage;
  final String? sortBy;
  final bool? descending;

  Pagination({
    this.page,
    this.perPage,
    this.sortBy,
    this.descending,
  });

  Map<String, String> toMap() => <String, String>{
        if (page != null) "page": page.toString(),
        if (perPage != null) "per_page": perPage.toString(),
        if (sortBy != null) "sort_by": sortBy.toString(),
        if (descending != null) "descending": descending.toString(),
      };
}
