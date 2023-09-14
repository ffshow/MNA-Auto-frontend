import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/owner_service.dart';

part 'owner_state.dart';
part 'owner_cubit.freezed.dart';

class OwnerCubit extends Cubit<OwnerState> {
  final OwnerService _ownerService;

  OwnerCubit(this._ownerService) : super(const OwnerState.initial());

  Future<void> getOwners({bool tryAgain = false}) async {
    emit(const OwnerState.initial());

    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }
    try {
      final Iterable<OwnerModel> data = await _ownerService.getApiOwnerList();
      emit(OwnerState.loaded(data));
    } catch (e) {
      emit(OwnerState.failed(e.toString()));
    }
  }
}