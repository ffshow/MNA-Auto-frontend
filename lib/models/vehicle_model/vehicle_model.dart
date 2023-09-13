//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required String id,
    required dynamic info,
    required String owner_id,
    required String serial_number,
    required DateTime sold_at,
    @Default(null) String? current_status,
    required DateTime created_at,
    required DateTime delivery_date,
    @Default(false) bool expertise,
    required DateTime first_circulation,
    @Default(false) bool procedure_ve,
    @Default(null) String? chrono,
    required DateTime updated_at,
    required DateTime collection_date,
    required int mileage,
    required String note,
    required String registration,
    required String commercial_name,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
