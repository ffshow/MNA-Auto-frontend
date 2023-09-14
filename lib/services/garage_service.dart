//CODE GENERATED, DO NOT EDIT.
import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// GarageService
class GarageService {
  final Dio _dio;

  GarageService(this._dio);

  /// ### Create a new garage
  /// Description: Register garage
  ///
  /// Path /api/garage
  Future<GarageModel> postApiGarage(
    GarageModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/garage",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return GarageModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Create many garage
  /// Description: Register garage (useful for importing data)
  ///
  /// Path /api/garage_import
  Future<List<GarageModel>> postApiGarageImport(
    GarageModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/garage_import",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => GarageModel.fromJson(e))
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

  /// ### Get garage by ID
  /// Description: Get garage by ID
  ///
  /// Path param: **id** string
  ///
  /// Path /api/garage/{id}
  Future<GarageModel> getApiGarage(
    String id,
  ) async {
    final Response response = await _dio.get(
      "/api/garage/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return GarageModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Update a garage
  /// Description: Edit garage
  ///
  /// Path param: **id** string
  ///
  /// Path /api/garage/{id}
  Future<GarageModel> putApiGarage(
    GarageModel data,
    String id,
  ) async {
    final Response response = await _dio.put(
      "/api/garage/$id",
      data: data,
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return GarageModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### List garage
  /// Description: List garage
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
  /// Path /api/garage_list
  Future<List<GarageModel>> getApiGarageList({
    int? page,
    int? per_page,
    String? sort_by,
    bool? descending,
  }) async {
    final Response response = await _dio.get(
      "/api/garage_list",
      queryParameters: <String, dynamic>{
        if (page != null) "page": page,
        if (per_page != null) "per_page": per_page,
        if (sort_by != null) "sort_by": sort_by,
        if (descending != null) "descending": descending,
      },
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => GarageModel.fromJson(e))
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
