//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_vehicle_model.freezed.dart';

part 'create_vehicle_model.g.dart';

@freezed
class CreateVehicleModel with _$CreateVehicleModel {
  const factory CreateVehicleModel({
    @Default(null) String? collection_date,
    @Default(null) String? note,
    @Default(null) String? registration,
    @Default(null) String? serial_number,
    @Default(null) String? sold_at,
    @Default(null) String? owner_id,
    @Default(null) bool? procedure_ve,
    @Default(null) String? current_status,
    @Default(null) bool? expertise,
    @Default(null) String? first_circulation,
    @Default(null) dynamic? info,
    @Default(null) int? mileage,
    @Default(null) String? chrono,
    @Default(null) String? commercial_name,
    @Default(null) String? delivery_date,
  }) = _CreateVehicleModel;

  factory CreateVehicleModel.fromJson(Map<String, Object?> json) =>
      _$CreateVehicleModelFromJson(json);
}

const List<String> kCreateVehicleModelColumns = [
  'collection_date',
  'note',
  'registration',
  'serial_number',
  'sold_at',
  'owner_id',
  'procedure_ve',
  'current_status',
  'expertise',
  'first_circulation',
  'info',
  'mileage',
  'chrono',
  'commercial_name',
  'delivery_date',
];
