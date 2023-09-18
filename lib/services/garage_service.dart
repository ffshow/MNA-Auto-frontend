//CODE GENERATED, DO NOT EDIT.
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// GarageService
class GarageService {
  final Dio _dio;

  GarageService(this._dio);

  StreamController<GarageModel> createStream = StreamController.broadcast();
  Stream<GarageModel> get onCreate => createStream.stream;

  StreamController<GarageModel> updateStream = StreamController.broadcast();
  Stream<GarageModel> get onUpdate => updateStream.stream;

  StreamController<GarageModel> deleteStream = StreamController.broadcast();
  Stream<GarageModel> get onDelete => deleteStream.stream;

  void create(GarageModel g) {
    createStream.sink.add(g);
  }

  void delete(GarageModel g) {
    deleteStream.sink.add(g);
  }

  void update(GarageModel g) {
    updateStream.sink.add(g);
  }

  /// ### Create many garage
  /// Description: Register garage (useful for importing data)
  ///
  /// Path /api/garage_import
  Future<List<CreateGarageModel>> postApiGarageImport(
    GarageModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/garage_import",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => CreateGarageModel.fromJson(e))
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
  Future<ListGarageModel> getApiGarageList({
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
      return ListGarageModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 503) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Create a new garage
  /// Description: Register garage
  ///
  /// Path /api/garage
  Future<GarageModel> postApiGarage(
    CreateGarageModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/garage",
      data: data.toJson(),
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

  /// ### Total records
  /// Description: Total records
  ///
  /// Path /api/garage/total
  Future<TotalCount> getApiGarageTotal() async {
    final Response response = await _dio.get(
      "/api/garage/total",
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
      data: data.toJson(),
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
}
