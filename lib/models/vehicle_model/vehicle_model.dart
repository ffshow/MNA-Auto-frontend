//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    @Default(null) String? current_status,
    required String id,
    required String note,
    required String registration,
    required String serial_number,
    required DateTime updated_at,
    required DateTime delivery_date,
    required int mileage,
    required String owner_id,
    @Default(null) String? chrono,
    required DateTime collection_date,
    required String commercial_name,
    @Default(false) bool expertise,
    required DateTime first_circulation,
    @Default(false) bool procedure_ve,
    required DateTime sold_at,
    required DateTime created_at,
    required dynamic info,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
