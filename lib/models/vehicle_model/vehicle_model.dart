
//CODE GENERATED, DO NOT EDIT
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required String id,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
