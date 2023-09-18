part of 'garage_cubit.dart';

@freezed
class GarageState with _$GarageState {
  const factory GarageState.initial() = _Initial;
  const factory GarageState.success(List<ModelsGarageModel> garages) = _Success;
  const factory GarageState.failure(String error) = _Failure;
}
