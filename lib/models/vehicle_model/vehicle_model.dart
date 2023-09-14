//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    @Default(null) String? chrono,
    required String note,
    required DateTime updated_at,
    required String commercial_name,
    required DateTime created_at,
    required DateTime delivery_date,
    required String id,
    required int mileage,
    @Default(false) bool procedure_ve,
    required DateTime sold_at,
    required DateTime collection_date,
    required DateTime first_circulation,
    required String registration,
    required String serial_number,
    @Default(null) String? current_status,
    @Default(false) bool expertise,
    required dynamic info,
    required String owner_id,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
