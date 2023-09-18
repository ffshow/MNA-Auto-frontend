import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'create_vehicle_state.dart';

class CreateVehicleCubit extends Cubit<CreateVehicleState> {
  final Swagger swagger;
  CreateVehicleCubit(this.swagger)
      : super(const CreateVehicleState(
          status: StateStatus.initial,
        ));

  Future<void> create(Map<String, Object?> data) async {
    try {
      ModelsCreateVehicleModel? vehicle =
          ModelsCreateVehicleModel.fromJson(data);
      emit(state.copyWith(status: StateStatus.loading, vehicle: vehicle));
      swagger.apiVehiclePost(vehicle: vehicle);
      emit(state.copyWith(status: StateStatus.success));
    } on Exception catch (e, s) {
      emit(state.copyWith(status: StateStatus.failure, error: e.toString()));
    }
  }
}
