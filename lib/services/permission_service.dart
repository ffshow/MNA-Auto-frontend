//CODE GENERATED, DO NOT EDIT.
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// PermissionService
class PermissionService {
  final Dio _dio;

  PermissionService(this._dio);

  StreamController<PermissionModel> createStream = StreamController.broadcast();
  Stream<PermissionModel> get onCreate => createStream.stream;

  StreamController<PermissionModel> updateStream = StreamController.broadcast();
  Stream<PermissionModel> get onUpdate => updateStream.stream;

  StreamController<PermissionModel> deleteStream = StreamController.broadcast();
  Stream<PermissionModel> get onDelete => deleteStream.stream;

  void create(PermissionModel g) {
    createStream.sink.add(g);
  }

  void delete(PermissionModel g) {
    deleteStream.sink.add(g);
  }

  void update(PermissionModel g) {
    updateStream.sink.add(g);
  }

  /// ### Total records
  /// Description: Total records
  ///
  /// Path /api/permission/total
  Future<TotalCount> getApiPermissionTotal() async {
    final Response response = await _dio.get(
      "/api/permission/total",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return TotalCount.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 599) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

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
      data: data.toJson(),
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
    CreatePermissionModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/permission",
      data: data.toJson(),
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

  /// ### Create many permission
  /// Description: Register permission (useful for importing data)
  ///
  /// Path /api/permission_import
  Future<List<CreatePermissionModel>> postApiPermissionImport(
    PermissionModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/permission_import",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => CreatePermissionModel.fromJson(e))
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
  Future<ListPermissionModel> getApiPermissionList({
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
      return ListPermissionModel.fromJson(
          response.data as Map<String, Object?>);
    }

    if (response.statusCode == 503) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }
}
