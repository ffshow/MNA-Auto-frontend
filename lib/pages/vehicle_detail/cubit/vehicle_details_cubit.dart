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
        withHistory: true,
        withOwner: true,
        withUpdatedBy: true,
      );
      emit(VehicleDetailsState.loaded(response.body!));
    } catch (e) {
      emit(VehicleDetailsState.failed(e.toString()));
    }
  }

  Future<void> patchTask(int id, VehicleTask task) async {
    if (state is _Loaded) {
      final VehicleResponse res = (state as _Loaded).response;
      final List<VehicleTask> tasks = List.from(res.vehicleTasks ?? []);
      final int index = tasks.indexWhere((e) => e.id == id);
      if (index > -1) {
        try {
          final Response<VehicleTaskResponse> response =
              await _swagger.apiVehicleTaskIdPatch(
            id: id,
            vehicleTaskModel: task,
          );
          if (response.isSuccessful) {
            tasks.removeAt(index);
            tasks.insert(index, task);
            emit(VehicleDetailsState.loaded(res.copyWith(vehicleTasks: tasks)));
          } else {
            //TODO: handle this case
          }
        } on Exception catch (e) {
          //TODO: handle this case
        }
      }
    }
  }

  Future<void> attachToTasks(int id, List<CreateVehicleTask> tasks) async {
    try {
      final Response<List<VehicleTaskResponse>> res =
          await _swagger.apiVehicleTaskImportPost(vehicleTaskModel: tasks);
      if (res.isSuccessful) {
        // getVehicle(id);
      }
    } catch (e) {}
  }
}
