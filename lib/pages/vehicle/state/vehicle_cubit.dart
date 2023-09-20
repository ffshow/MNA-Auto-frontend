import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'vehicle_state.dart';
part 'vehicle_cubit.freezed.dart';

class VehicleCubit extends Cubit<VehicleState> {
  final Swagger swagger;

  VehicleCubit(this.swagger) : super(const VehicleState.initial());

  Future<void> getVehicles({bool tryAgain = false}) async {
    emit(const VehicleState.initial());

    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }
    try {
      final res = await swagger.apiVehicleListGet(
        sortBy: 'created_at',
        descending: true,
      );
      emit(VehicleState.loaded(res.body?.data ?? []));
    } catch (e, s) {
      debugPrint(s.toString());
      emit(VehicleState.failed(e.toString()));
    }
  }
}
