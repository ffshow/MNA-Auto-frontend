import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/services.dart';
part 'create_garage_state.dart';

class CreateGarageCubit extends Cubit<CreateGarageState> {
  final GarageService _garageService;

  CreateGarageCubit(this._garageService)
      : super(const CreateGarageState(
          status: StateStatus.initial,
        ));

  Future<void> create(CreateGarageModel model) async {
    emit(state.copyWith(status: StateStatus.loading, model: model));
    try {
      final GarageModel garage = await _garageService.postApiGarage(model);
      emit(state.copyWith(status: StateStatus.success, model: null));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.failure, error: e.toString()));
    }
  }
}
