import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/services.dart';

part 'supplier_state.dart';
part 'supplier_cubit.freezed.dart';

class SupplierCubit extends Cubit<SupplierState> {
  final SupplierService _supplierService;
  SupplierCubit(this._supplierService) : super(const SupplierState.initial());

  Future<void> init({bool tryAgain = false}) async {
    emit(const SupplierState.initial());
    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }

    try {
      final List<SupplierModel> suppliers = await _supplierService
          .getApiSupplierList(sort_by: 'created_at', descending: true);
      emit(SupplierState.success(suppliers));
    } on Exception catch (e) {
      emit(SupplierState.failure(e.toString()));
    }
  }
}
