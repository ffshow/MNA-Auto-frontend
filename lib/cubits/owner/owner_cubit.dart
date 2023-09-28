import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/repositories/owner.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/pagination.dart';

part 'owner_state.dart';
part 'owner_cubit.freezed.dart';

class OwnerCubit extends Cubit<OwnerState> {
  final OwnerRepository _ownerRepository;
  OwnerCubit(this._ownerRepository) : super(const OwnerState.initial());

  Future<void> getOwners({bool tryAgain = false}) async {
    emit(const OwnerState.initial());
    if (tryAgain) {
      await Future.delayed(const Duration(milliseconds: 500));
    }
    try {
      final Response<ModelsListOwnerModel> res =
          await _ownerRepository.getOwners(p: Pagination(perPage: 100));
      emit(OwnerState.loaded(res.body?.data ?? []));
    } catch (e, s) {
      debugPrint(s.toString());
      emit(OwnerState.failed(e.toString()));
    }
  }
}
