import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/services.dart';

part 'create_vehicle_state.dart';

class CreateVehicleCubit extends Cubit<CreateVehicleState> {
  final VehicleService _vehicleService;
  CreateVehicleCubit(this._vehicleService)
      : super(const CreateVehicleState(
          status: StateStatus.initial,
        ));

  Future<void> create(Map<String, Object?> data) async {
    try {
      final CreateVehicleModel vehicle = CreateVehicleModel.fromJson(data);
      emit(state.copyWith(status: StateStatus.loading, vehicle: vehicle));
      await _vehicleService.postApiVehicle(vehicle);
      emit(state.copyWith(status: StateStatus.success));
    } on Exception catch (e, s) {
      print(s);
      emit(state.copyWith(status: StateStatus.failure, error: e.toString()));
    }
  }
}
