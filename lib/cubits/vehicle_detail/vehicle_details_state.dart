part of 'vehicle_details_cubit.dart';

@freezed
class VehicleDetailsState with _$VehicleDetailsState {
  const factory VehicleDetailsState.initial() = _Initial;
  const factory VehicleDetailsState.loaded(VehicleResponse response) = _Loaded;
  const factory VehicleDetailsState.failed(String error) = _Failed;
}
