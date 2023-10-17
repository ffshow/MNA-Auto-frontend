part of 'vehicle_task_cubit.dart';

@freezed
class VehicleTaskState with _$VehicleTaskState {
  const factory VehicleTaskState.initial() = _Initial;
  const factory VehicleTaskState.failed(String error) = _Failed;
  const factory VehicleTaskState.success() = _Success;
}
