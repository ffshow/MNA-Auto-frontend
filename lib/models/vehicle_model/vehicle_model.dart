//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    @Default(null) int? mileage,
    @Default(null) DateTime? sold_at,
    @Default(null) DateTime? created_at,
    @Default(null) bool? expertise,
    @Default(null) String? registration,
    @Default(null) String? chrono,
    @Default(null) DateTime? first_circulation,
    @Default(null) String? note,
    @Default(null) String? owner_id,
    @Default(null) String? serial_number,
    @Default(null) DateTime? delivery_date,
    @Default(null) String? commercial_name,
    @Default(null) String? current_status,
    @Default(null) String? id,
    @Default(null) dynamic? info,
    @Default(null) bool? procedure_ve,
    @Default(null) DateTime? updated_at,
    @Default(null) DateTime? collection_date,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
