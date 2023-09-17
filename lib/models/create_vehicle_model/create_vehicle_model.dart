//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_vehicle_model.freezed.dart';

part 'create_vehicle_model.g.dart';

@freezed
class CreateVehicleModel with _$CreateVehicleModel {
  const factory CreateVehicleModel({
    @Default(false) bool procedure_ve,
    required String sold_at,
    required String chrono,
    required String collection_date,
    required String commercial_name,
    @Default(false) bool expertise,
    required int mileage,
    required String note,
    required String owner_id,
    required String registration,
    required String serial_number,
    required String delivery_date,
    required String first_circulation,
    required dynamic info,
    required String current_status,
  }) = _CreateVehicleModel;

  factory CreateVehicleModel.fromJson(Map<String, Object?> json) =>
      _$CreateVehicleModelFromJson(json);
}
