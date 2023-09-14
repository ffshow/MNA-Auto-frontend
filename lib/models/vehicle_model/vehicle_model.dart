//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    @Default(false) bool expertise,
    @Default(false) bool procedure_ve,
    @Default(null) String? current_status,
    required DateTime created_at,
    required DateTime delivery_date,
    required DateTime first_circulation,
    required dynamic info,
    required int mileage,
    required String note,
    required String owner_id,
    required String commercial_name,
    required String serial_number,
    required DateTime updated_at,
    required String registration,
    required DateTime collection_date,
    required String id,
    required DateTime sold_at,
    @Default(null) String? chrono,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
