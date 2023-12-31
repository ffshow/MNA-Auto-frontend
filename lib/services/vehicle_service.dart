//CODE GENERATED, DO NOT EDIT.
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// VehicleService
class VehicleService {
  final Dio _dio;

  VehicleService(this._dio);

  StreamController<VehicleModel> createStream = StreamController.broadcast();
  Stream<VehicleModel> get onCreate => createStream.stream;

  StreamController<VehicleModel> updateStream = StreamController.broadcast();
  Stream<VehicleModel> get onUpdate => updateStream.stream;

  StreamController<VehicleModel> deleteStream = StreamController.broadcast();
  Stream<VehicleModel> get onDelete => deleteStream.stream;

  void create(VehicleModel g) {
    createStream.sink.add(g);
  }

  void delete(VehicleModel g) {
    deleteStream.sink.add(g);
  }

  void update(VehicleModel g) {
    updateStream.sink.add(g);
  }

  /// ### List vehicle
  /// Description: List vehicle
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
  /// Path /api/vehicle_list
  Future<ListVehicleModel> getApiVehicleList({
    int? page,
    int? per_page,
    String? sort_by,
    bool? descending,
  }) async {
    final Response response = await _dio.get(
      "/api/vehicle_list",
      queryParameters: <String, dynamic>{
        if (page != null) "page": page,
        if (per_page != null) "per_page": per_page,
        if (sort_by != null) "sort_by": sort_by,
        if (descending != null) "descending": descending,
      },
    );
    if (response.statusCode == 200) {
      return ListVehicleModel.fromJson(response.data as Map<String, Object?>);
    }

    if (response.statusCode == 503) {
      final ResponseError error =
          ResponseError.fromJson((response.data as Map<String, Object>));
      throw Exception(error.message);
    }

    throw Exception("Something went wrong");
  }

  /// ### Get vehicle by ID
  /// Description: Get vehicle by ID
  ///
  /// Path param: **id** string
  ///
  /// Path /api/vehicle/{id}
  Future<VehicleModel> getApiVehicle(
    String id,
  ) async {
    final Response response = await _dio.get(
      "/api/vehicle/$id",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return VehicleModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Update a vehicle
  /// Description: Edit vehicle
  ///
  /// Path param: **id** string
  ///
  /// Path /api/vehicle/{id}
  Future<VehicleModel> putApiVehicle(
    VehicleModel data,
    String id,
  ) async {
    final Response response = await _dio.put(
      "/api/vehicle/$id",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return VehicleModel.fromJson(response.data as Map<String, Object?>);
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

  /// ### Create many vehicle
  /// Description: Register vehicle (useful for importing data)
  ///
  /// Path /api/vehicle_import
  Future<List<CreateVehicleModel>> postApiVehicleImport(
    VehicleModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/vehicle_import",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((e) => CreateVehicleModel.fromJson(e))
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

  /// ### Total records
  /// Description: Total records
  ///
  /// Path /api/vehicle/total
  Future<TotalCount> getApiVehicleTotal() async {
    final Response response = await _dio.get(
      "/api/vehicle/total",
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

  /// ### Create a new vehicle
  /// Description: Register vehicle
  ///
  /// Path /api/vehicle
  Future<VehicleModel> postApiVehicle(
    CreateVehicleModel data,
  ) async {
    final Response response = await _dio.post(
      "/api/vehicle",
      data: data.toJson(),
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return VehicleModel.fromJson(response.data as Map<String, Object?>);
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
