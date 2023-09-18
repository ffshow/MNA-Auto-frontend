import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/services.dart';

part 'garage_state.dart';
part 'garage_cubit.freezed.dart';

class GarageCubit extends Cubit<GarageState> {
  final GarageService _garageService;
  GarageCubit(this._garageService) : super(const GarageState.initial());

  Future<void> init({bool tryAgain = false}) async {
    emit(const GarageState.initial());
    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }

    try {
      final res = await _garageService.getApiGarageList(
          sort_by: 'created_at', descending: true);

      emit(GarageState.success(res.data ?? []));
    } on Exception catch (e) {
      emit(GarageState.failure(e.toString()));
    }
  }
}
