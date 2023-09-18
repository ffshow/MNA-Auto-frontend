import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'owner_state.dart';
part 'owner_cubit.freezed.dart';

class OwnerCubit extends Cubit<OwnerState> {
  final Swagger swagger;
  OwnerCubit(this.swagger) : super(const OwnerState.initial());

  Future<void> getOwners({bool tryAgain = false}) async {
    emit(const OwnerState.initial());

    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }
    try {
      final res = await swagger.apiOwnerListGet();
      emit(OwnerState.loaded(res.body?.data ?? []));
    } catch (e, s) {
      print(s);
      print(e);
      emit(OwnerState.failed(e.toString()));
    }
  }
}
