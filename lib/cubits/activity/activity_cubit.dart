import 'dart:async';

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
      res = List.from(res)..insert(0, activity);
      emit(ActivityState.success(res));
    });

    onUpdate = _notificationService.onUpdateActivity
        .listen((ActivityResponse activity) {
      final int index =
          res.indexWhere((ActivityResponse e) => e.id == activity.id);
      if (index > -1) {
        final List<ActivityResponse> a = List.from(res)..removeAt(index);
        a.insert(index, activity);
        res = a;
        emit(ActivityState.success(res));
      }
    });

    onDelete = _notificationService.onDeleteActivity.listen((id) {
      res = List.from(res)..removeWhere((e) => e.id == id);
      emit(ActivityState.success(res));
    });
  }

  late final StreamSubscription<ActivityResponse>? onCreate;
  late final StreamSubscription<ActivityResponse>? onUpdate;
  late final StreamSubscription<int>? onDelete;
  List<ActivityResponse> res = [];

  @override
  Future<void> close() {
    onCreate?.cancel();
    onUpdate?.cancel();
    return super.close();
  }

  Future<void> getActivities() async {
    try {
      final response = await _swagger.apiActivityListGet(
        page: 1,
        perPage: 100,
        sortBy: 'created_at',
        descending: true,
        withVehicleTasks: false,
      );
      if (response.body == null) {
        emit(const ActivityState.failed("Unknown error"));
        return;
      }
      if (!response.isSuccessful) {
        emit(const ActivityState.failed("Unknown error"));
        return;
      }
      res = response.body!.data!;
      emit(ActivityState.success(res));
    } catch (e) {
      emit(ActivityState.failed(e.toString()));
    }
  }
}
