//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    @Default(null) DateTime? delivery_date,
    @Default(null) int? mileage,
    @Default(null) bool? procedure_ve,
    @Default(null) DateTime? updated_at,
    @Default(null) String? chrono,
    @Default(null) String? commercial_name,
    @Default(null) String? current_status,
    @Default(null) String? note,
    @Default(null) String? owner_id,
    @Default(null) DateTime? sold_at,
    @Default(null) DateTime? collection_date,
    @Default(null) DateTime? first_circulation,
    @Default(null) String? id,
    @Default(null) dynamic? info,
    @Default(null) String? registration,
    @Default(null) DateTime? created_at,
    @Default(null) bool? expertise,
    @Default(null) String? serial_number,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}

const List<String> kVehicleModelColumns = [
  'delivery_date',
  'mileage',
  'procedure_ve',
  'updated_at',
  'chrono',
  'commercial_name',
  'current_status',
  'note',
  'owner_id',
  'sold_at',
  'collection_date',
  'first_circulation',
  'id',
  'info',
  'registration',
  'created_at',
  'expertise',
  'serial_number',
];
