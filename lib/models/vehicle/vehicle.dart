import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';

part 'vehicle.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required String id,
    required String registration,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, Object?> json) =>
      _$VehicleModelFromJson(json);
}
