//CODE GENERATED, DO NOT EDIT.
import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// PermissionService
class PermissionService {
  final Dio _dio;

  PermissionService(this._dio);

  /// ### Get permission by ID
  /// Description: Get permission by ID
  ///
  /// Path param: **id** string
  ///
  /// Path /api/permission/{id}
  Future<PermissionModel> getApiPermission(
    String id,
  ) async {
    final Response response = await _dio.get(
      "/api/permission/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return PermissionModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Update a permission
  /// Description: Edit permission
  ///
  /// Path param: **id** string
  ///
  /// Path /api/permission/{id}
  Future<PermissionModel> putApiPermission(
    PermissionModel data,
    String id,
  ) async {
    final Response response = await _dio.put(
      "/api/permission/$id",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return PermissionModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Create a new permission
  /// Description: Register permission
  ///
  /// Path /api/permission
  Future<PermissionModel> postApiPermission(
    PermissionModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/permission",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return PermissionModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### List permission
  /// Description: List permission
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
  /// Path /api/permission_list
  Future<List<PermissionModel>> getApiPermissionList({
    int? page,
    int? per_page,
    String? sort_by,
    bool? descending,
  }) async {
    final Response response = await _dio.get(
      "/api/permission_list",
      queryParameters: <String, dynamic>{
        if (page != null) "page": page,
        if (per_page != null) "per_page": per_page,
        if (sort_by != null) "sort_by": sort_by,
        if (descending != null) "descending": descending,
      },
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => PermissionModel.fromJson(e))
          .toList();
    }

    if (response.statusCode == 503) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Create many permission
  /// Description: Register permission (useful for importing data)
  ///
  /// Path /api/permission_import
  Future<List<PermissionModel>> postApiPermissionImport(
    PermissionModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/permission_import",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => PermissionModel.fromJson(e))
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
}
