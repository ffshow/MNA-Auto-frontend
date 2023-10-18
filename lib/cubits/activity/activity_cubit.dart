import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'activity_state.dart';
part 'activity_cubit.freezed.dart';

class ActivityCubit extends Cubit<ActivityState> {
  final Swagger _swagger;
  final NotificationService _notificationService;

  ActivityCubit(this._swagger, this._notificationService)
      : super(const ActivityState.initial()) {
    onCreate = _notificationService.onCreateActivity.listen((activity) {
      if (res == null) {
        return;
      }
      res = res!.copyWith(
          body: ListActivity(
        total: res!.body!.total! + 1,
        data: res!.body!.data!..insert(0, activity),
      ));
      emit(ActivityState.success(res!.body!));
    });
  }

  late final StreamSubscription<ActivityResponse>? onCreate;
  Response<ListActivity>? res;

  @override
  Future<void> close() {
    onCreate?.cancel();
    return super.close();
  }

  Future<void> getActivities() async {
    try {
      res = await _swagger.apiActivityListGet(
        page: 1,
        perPage: 100,
        sortBy: 'created_at',
        descending: true,
        withVehicleTasks: false,
      );
      if (res == null) {
        emit(const ActivityState.failed("Unknown error"));
        return;
      }
      if (!res!.isSuccessful) {
        emit(const ActivityState.failed("Unknown error"));
        return;
      }
      emit(ActivityState.success(res!.body!));
    } catch (e) {
      emit(ActivityState.failed(e.toString()));
    }
  }
}
