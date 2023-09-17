import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/vehicle_service.dart';

part 'vehicle_state.dart';
part 'vehicle_cubit.freezed.dart';

class VehicleCubit extends Cubit<VehicleState> {
  final VehicleService _service;

  VehicleCubit(this._service) : super(const VehicleState.initial());

  Future<void> getVehicles({bool tryAgain = false}) async {
    emit(const VehicleState.initial());

    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }
    try {
      final Iterable<VehicleModel> data = await _service.getApiVehicleList(
        sort_by: 'created_at',
        descending: true,
      );
      emit(VehicleState.loaded(data));
    } catch (e, s) {
      print(s);
      emit(VehicleState.failed(e.toString()));
    }
  }
}
