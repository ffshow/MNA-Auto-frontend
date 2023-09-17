//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required String commercial_name,
    required DateTime created_at,
    required DateTime delivery_date,
    required dynamic info,
    required String registration,
    required String serial_number,
    @Default(null) String? chrono,
    required DateTime collection_date,
    @Default(null) String? current_status,
    @Default(false) bool expertise,
    required String id,
    required String note,
    required String owner_id,
    required DateTime updated_at,
    @Default(false) bool procedure_ve,
    required DateTime first_circulation,
    required int mileage,
    required DateTime sold_at,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
