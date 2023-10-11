import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
part 'create_garage_state.dart';

class CreateGarageCubit extends Cubit<CreateGarageState> {
  final Swagger swagger;

  CreateGarageCubit(this.swagger)
      : super(const CreateGarageState(
          status: StateStatus.initial,
        ));

  Future<void> create(CreateGarage model) async {
    emit(state.copyWith(status: StateStatus.loading, model: model));
    try {
      await swagger.apiGaragePost(garageModel: model);
      emit(state.copyWith(status: StateStatus.success, model: null));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.failure, error: e.toString()));
    }
  }
}
