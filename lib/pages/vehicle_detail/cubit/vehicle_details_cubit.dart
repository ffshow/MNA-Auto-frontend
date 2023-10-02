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

  Future<void> getVehicle(String id) async {
    try {
      final Response<ModelsVehicleModelResponse> response =
          await _swagger.apiVehicleIdGet(id: id, owner: true, task: true);
      emit(VehicleDetailsState.loaded(response.body!));
    } catch (e) {
      emit(VehicleDetailsState.failed(e.toString()));
    }
  }
}
