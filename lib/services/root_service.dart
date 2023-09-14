//CODE GENERATED, DO NOT EDIT.
import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

// RootService
class RootService {
  final Dio _dio;

  RootService(this._dio);

  /// ### Seed vehicles
  /// Description: Seed vehicles.
  ///
  /// Query param: **count** string count
  ///
  ///
  /// Path /api/vehicles_seed
  void postApiVehiclesSeed(
    String count,
  ) async {
    final Response response = await _dio.post(
      "/api/vehicles_seed",
      queryParameters: <String, dynamic>{
        if (count != null) "count": count,
      },
    );
    if (response.statusCode == 200) {
      return;
    }

    throw Exception("Something went wrong");
  }

  /// ### Show the status of server.
  /// Description: get the status of server.
  ///
  /// Path /
  void get() async {
    final Response response = await _dio.get(
      "/",
      queryParameters: <String, dynamic>{},
    );
    if (response.statusCode == 200) {
      return;
    }

    throw Exception("Something went wrong");
  }
}
