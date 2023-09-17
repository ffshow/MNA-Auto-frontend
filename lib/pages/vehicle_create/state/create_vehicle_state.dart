part of 'create_vehicle_cubit.dart';

enum StateStatus {
  initial,
  loading,
  success,
  failure,
}

extension WeatherStatusX on StateStatus {
  bool get isInitial => this == StateStatus.initial;
  bool get isLoading => this == StateStatus.loading;
  bool get isSuccess => this == StateStatus.success;
  bool get isFailure => this == StateStatus.failure;
}

final class CreateVehicleState extends Equatable {
  final StateStatus status;
  final CreateVehicleModel? vehicle;
  final String? error;

  const CreateVehicleState({
    required this.status,
    this.vehicle,
    this.error,
  });

  CreateVehicleState copyWith({
    StateStatus? status,
    String? error,
    CreateVehicleModel? vehicle,
  }) {
    return CreateVehicleState(
      status: status ?? this.status,
      error: error ?? this.error,
      vehicle: vehicle ?? this.vehicle,
    );
  }

  @override
  List<Object?> get props => <Object?>[status, vehicle, error];
}
