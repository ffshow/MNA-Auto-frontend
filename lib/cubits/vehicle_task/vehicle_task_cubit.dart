import 'package:chopper/chopper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'vehicle_task_state.dart';
part 'vehicle_task_cubit.freezed.dart';

class VehicleTaskCubit extends Cubit<VehicleTaskState> {
  final Swagger _swagger;
  VehicleTaskCubit(this._swagger) : super(const VehicleTaskState.initial());

  Future<void> patchTask(int id, VehicleTask task) async {
    try {
      final Response<VehicleTaskResponse> response =
          await _swagger.apiVehicleTaskIdPatch(
        id: id,
        vehicleTaskModel: task,
      );
      if (!response.isSuccessful) {
        emit(const VehicleTaskState.failed("Unknow error"));
      }
    } catch (e) {
      emit(VehicleTaskState.failed(e.toString()));
    }
  }

  Future<void> attachToTasks(int id, List<CreateVehicleTask> tasks) async {
    try {
      final Response<List<VehicleTaskResponse>> res =
          await _swagger.apiVehicleTaskImportPost(vehicleTaskModel: tasks);
      if (!res.isSuccessful) {
        emit(const VehicleTaskState.failed("Unknow error"));
      }
    } catch (e) {
      emit(VehicleTaskState.failed(e.toString()));
    }
  }
}
