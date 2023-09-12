import 'package:dio/dio.dart';
import 'package:mna/models/vehicle/vehicle.dart';

class VehicleRepository {
  final Dio dio;
  VehicleRepository(this.dio);

  Future<Iterable<VehicleModel>> get() async {
    try {
      final Response response = await dio.get("/vehicle_list");
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => VehicleModel.fromJson(e));
      }
      throw Exception();
    } catch (e) {
      throw Exception(e);
    }
  }
}
