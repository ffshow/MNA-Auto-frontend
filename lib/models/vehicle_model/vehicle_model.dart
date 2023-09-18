//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    @Default(null) int? mileage,
    @Default(null) String? note,
    @Default(null) String? owner_id,
    @Default(null) DateTime? updated_at,
    @Default(null) dynamic? info,
    @Default(null) String? registration,
    @Default(null) String? serial_number,
    @Default(null) String? chrono,
    @Default(null) DateTime? created_at,
    @Default(null) DateTime? delivery_date,
    @Default(null) String? id,
    @Default(null) DateTime? sold_at,
    @Default(null) String? current_status,
    @Default(null) bool? expertise,
    @Default(null) DateTime? first_circulation,
    @Default(null) bool? procedure_ve,
    @Default(null) DateTime? collection_date,
    @Default(null) String? commercial_name,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}

const List<String> kVehicleModelColumns = [
  'mileage',
  'note',
  'owner_id',
  'updated_at',
  'info',
  'registration',
  'serial_number',
  'chrono',
  'created_at',
  'delivery_date',
  'id',
  'sold_at',
  'current_status',
  'expertise',
  'first_circulation',
  'procedure_ve',
  'collection_date',
  'commercial_name',
];
