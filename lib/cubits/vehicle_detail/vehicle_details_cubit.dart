import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'vehicle_details_state.dart';
part 'vehicle_details_cubit.freezed.dart';

class VehicleDetailsCubit extends Cubit<VehicleDetailsState> {
  final Swagger _swagger;
  final NotificationService _notificationService;
  VehicleDetailsCubit(this._swagger, this._notificationService)
      : super(const VehicleDetailsState.initial()) {
    onCreateVehicleTasks = _notificationService.onCreateVehicleTasks
        .listen((List<VehicleTask> tasks) {
      if (vehicleID == null) {
        return;
      }
      if (tasks.takeWhile((value) => value.vehicleId == vehicleID).isNotEmpty) {
        getVehicle(vehicleID!);
      }
    });
    onUpdateVehicleTask =
        _notificationService.onUpdateVehicleTask.listen((event) {
      if (vehicleID == null) {
        return;
      }
      getVehicle(vehicleID!);
    });
  }

  @override
  Future<void> close() {
    onCreateVehicleTasks?.cancel();

    return super.close();
  }

  late final StreamSubscription? onCreateVehicleTasks;
  late final StreamSubscription? onUpdateVehicleTask;
  int? vehicleID;

  Future<void> getVehicle(int id) async {
    vehicleID = id;
    try {
      final Response<VehicleResponse> response = await _swagger.apiVehicleIdGet(
        id: id,
        withVehicleTasks: true,
        withCreatedBy: true,
        withDeletedBy: true,
        withOwner: true,
        withUpdatedBy: true,
      );
      emit(VehicleDetailsState.loaded(response.body!));
    } catch (e) {
      emit(VehicleDetailsState.failed(e.toString()));
    }
  }
}
