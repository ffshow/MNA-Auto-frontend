import 'package:dio/dio.dart';
import 'package:mna/models/models.dart';

class VehicleRepository {
  final Dio dio;
  VehicleRepository(this.dio);

  Iterable<VehicleModel> vehicles = [];

  Future<Iterable<VehicleModel>> get() async {
    if (vehicles.isNotEmpty) {
      return vehicles;
    }
    final Response response = await dio.get("/vehicle_list");
    vehicles = (response.data as List).map((e) => VehicleModel.fromJson(e));
    return vehicles;
  }
}
