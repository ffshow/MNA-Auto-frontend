import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'garage_state.dart';
part 'garage_cubit.freezed.dart';

class GarageCubit extends Cubit<GarageState> {
  final Swagger swagger;
  GarageCubit(this.swagger) : super(const GarageState.initial());

  Future<void> init({bool tryAgain = false}) async {
    emit(const GarageState.initial());
    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }

    try {
      final res = await swagger.apiGarageListGet(
        sortBy: 'created_at',
        descending: true,
      );

      emit(GarageState.success(res.body?.data ?? []));
    } on Exception catch (e) {
      emit(GarageState.failure(e.toString()));
    }
  }
}
