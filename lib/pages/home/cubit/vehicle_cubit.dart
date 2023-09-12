import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/models/vehicle/vehicle.dart';
import 'package:mna/repository/vehicle.dart';

part 'vehicle_state.dart';
part 'vehicle_cubit.freezed.dart';

class VehicleCubit extends Cubit<VehicleState> {
  final VehicleRepository _vehicleRepository;

  VehicleCubit(this._vehicleRepository) : super(const VehicleState.initial());

  Future<void> getVehicles() async {
    emit(const VehicleState.initial());
    try {
      final Iterable<VehicleModel> data = await _vehicleRepository.get();
      emit(VehicleState.loaded(data));
    } catch (e) {
      emit(VehicleState.failed(e.toString()));
    }
  }
}
