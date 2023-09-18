import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'supplier_state.dart';
part 'supplier_cubit.freezed.dart';

class SupplierCubit extends Cubit<SupplierState> {
  final Swagger swagger;
  SupplierCubit(this.swagger) : super(const SupplierState.initial());

  Future<void> init({bool tryAgain = false}) async {
    emit(const SupplierState.initial());
    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }

    try {
      final res = await swagger.apiSupplierListGet(
        sortBy: 'created_at',
        descending: true,
      );
      emit(SupplierState.success(res.body?.data ?? []));
    } on Exception catch (e) {
      emit(SupplierState.failure(e.toString()));
    }
  }
}
