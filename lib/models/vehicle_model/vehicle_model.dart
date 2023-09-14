//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required int mileage,
    required String owner_id,
    @Default(false) bool procedure_ve,
    required DateTime collection_date,
    required DateTime delivery_date,
    required String id,
    required dynamic info,
    required String commercial_name,
    required DateTime first_circulation,
    required String registration,
    required String serial_number,
    required String note,
    required DateTime sold_at,
    required DateTime updated_at,
    @Default(null) String? chrono,
    required DateTime created_at,
    @Default(null) String? current_status,
    @Default(false) bool expertise,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
