//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_vehicle_model.freezed.dart';

part 'create_vehicle_model.g.dart';

@freezed
class CreateVehicleModel with _$CreateVehicleModel {
  const factory CreateVehicleModel({
    @Default(null) String? commercial_name,
    @Default(null) String? delivery_date,
    @Default(null) dynamic? info,
    @Default(null) String? registration,
    @Default(null) String? chrono,
    @Default(null) bool? expertise,
    @Default(null) String? first_circulation,
    @Default(null) String? owner_id,
    @Default(null) String? serial_number,
    @Default(null) String? sold_at,
    @Default(null) String? collection_date,
    @Default(null) bool? procedure_ve,
    @Default(null) String? current_status,
    @Default(null) int? mileage,
    @Default(null) String? note,
  }) = _CreateVehicleModel;

  factory CreateVehicleModel.fromJson(Map<String, Object?> json) =>
      _$CreateVehicleModelFromJson(json);
}

const List<String> kCreateVehicleModelColumns = [
  'commercial_name',
  'delivery_date',
  'info',
  'registration',
  'chrono',
  'expertise',
  'first_circulation',
  'owner_id',
  'serial_number',
  'sold_at',
  'collection_date',
  'procedure_ve',
  'current_status',
  'mileage',
  'note',
];
