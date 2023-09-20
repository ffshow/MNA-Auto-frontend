part of 'vehicle_cubit.dart';

@freezed
class VehicleState with _$VehicleState {
  const factory VehicleState.initial() = _Initial;
  const factory VehicleState.loaded(
      Iterable<ModelsVehicleModelResponse> vehicles) = _Loaded;
  const factory VehicleState.failed(String error) = _failed;
}
