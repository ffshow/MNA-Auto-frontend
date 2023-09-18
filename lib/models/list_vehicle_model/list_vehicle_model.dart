//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_vehicle_model.freezed.dart';

part 'list_vehicle_model.g.dart';

@freezed
class ListVehicleModel with _$ListVehicleModel {
  const factory ListVehicleModel({
    @Default(null) List<VehicleModel>? data,
    @Default(null) int? total,
  }) = _ListVehicleModel;

  factory ListVehicleModel.fromJson(Map<String, Object?> json) =>
      _$ListVehicleModelFromJson(json);
}

const List<String> kListVehicleModelColumns = [
  'data',
  'total',
];
