//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_vehicle_model.freezed.dart';

part 'create_vehicle_model.g.dart';

@freezed
class CreateVehicleModel with _$CreateVehicleModel {
  const factory CreateVehicleModel({
    @Default(null) bool? procedure_ve,
    @Default(null) String? collection_date,
    @Default(null) String? commercial_name,
    @Default(null) String? delivery_date,
    @Default(null) String? first_circulation,
    @Default(null) String? owner_id,
    @Default(null) String? registration,
    @Default(null) String? sold_at,
    @Default(null) String? chrono,
    @Default(null) dynamic? info,
    @Default(null) int? mileage,
    @Default(null) String? note,
    @Default(null) String? serial_number,
    @Default(null) String? current_status,
    @Default(null) bool? expertise,
  }) = _CreateVehicleModel;

  factory CreateVehicleModel.fromJson(Map<String, Object?> json) =>
      _$CreateVehicleModelFromJson(json);
}
