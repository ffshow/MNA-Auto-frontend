//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required String registration,
    required DateTime created_at,
    required String current_status,
    required DateTime delivery_date,
    required String serial_number,
    required DateTime updated_at,
    required String id,
    required dynamic info,
    required int mileage,
    required String note,
    required String owner_id,
    required String chrono,
    required bool expertise,
    required DateTime first_circulation,
    required DateTime sold_at,
    required DateTime collection_date,
    required String commercial_name,
    required bool procedure_ve,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
