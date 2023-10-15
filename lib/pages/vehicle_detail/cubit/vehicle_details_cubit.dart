import 'package:chopper/chopper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'vehicle_details_state.dart';
part 'vehicle_details_cubit.freezed.dart';

class VehicleDetailsCubit extends Cubit<VehicleDetailsState> {
  final Swagger _swagger;
  VehicleDetailsCubit(this._swagger)
      : super(const VehicleDetailsState.initial());

  Future<void> getVehicle(int id) async {
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
      print(
          'response.body?.tasks?.length ${response.body?.vehicleTasks?.length}');
      emit(VehicleDetailsState.loaded(response.body!));
    } catch (e) {
      emit(VehicleDetailsState.failed(e.toString()));
    }
  }
}
