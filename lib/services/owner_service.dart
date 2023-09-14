//CODE GENERATED, DO NOT EDIT.
import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// OwnerService
class OwnerService {
  final Dio _dio;

  OwnerService(this._dio);

  /// ### Create a new owner
  /// Description: Register owner
  ///
  /// Path /api/owner
  Future<OwnerModel> postApiOwner(
    OwnerModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/owner",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return OwnerModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Get owner by ID
  /// Description: Get owner by ID
  ///
  /// Path param: **id** string
  ///
  /// Path /api/owner/{id}
  Future<OwnerModel> getApiOwner(
    String id,
  ) async {
    final Response response = await _dio.get(
      "/api/owner/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return OwnerModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Update a owner
  /// Description: Edit owner
  ///
  /// Path param: **id** string
  ///
  /// Path /api/owner/{id}
  Future<OwnerModel> putApiOwner(
    OwnerModel data,
    String id,
  ) async {
    final Response response = await _dio.put(
      "/api/owner/$id",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return OwnerModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Create many owner
  /// Description: Register owner (useful for importing data)
  ///
  /// Path /api/owner_import
  Future<List<OwnerModel>> postApiOwnerImport(
    OwnerModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/owner_import",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => OwnerModel.fromJson(e))
          .toList();
    }

    if (response.statusCode == 404) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    if (response.statusCode == 500) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### List owner
  /// Description: List owner
  ///
  /// Query param: **page** integer page
  ///
  /// Query param: **per_page** integer page size
  ///
  /// Query param: **sort_by** string sort field
  ///
  /// Query param: **descending** boolean order
  ///
  ///
  /// Path /api/owner_list
  Future<List<OwnerModel>> getApiOwnerList({
    int? page,
    int? per_page,
    String? sort_by,
    bool? descending,
  }) async {
    final Response response = await _dio.get(
      "/api/owner_list",
      queryParameters: <String, dynamic>{
        if (page != null) "page": page,
        if (per_page != null) "per_page": per_page,
        if (sort_by != null) "sort_by": sort_by,
        if (descending != null) "descending": descending,
      },
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => OwnerModel.fromJson(e))
          .toList();
    }

    if (response.statusCode == 503) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }
}
