import 'package:chopper/chopper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

part 'activity_state.dart';
part 'activity_cubit.freezed.dart';

class ActivityCubit extends Cubit<ActivityState> {
  final Swagger _swagger;
  ActivityCubit(this._swagger) : super(const ActivityState.initial());

  Future<void> getActivities() async {
    try {
      final Response<ListActivity> res = await _swagger.apiActivityListGet(
        page: 1,
        perPage: 100,
        sortBy: 'created_at',
        descending: true,
        withVehicleTasks: false,
      );

      if (!res.isSuccessful) {
        emit(const ActivityState.failed("Unknown error"));
        return;
      }
      emit(ActivityState.success(res.body!));
    } catch (e) {
      emit(ActivityState.failed(e.toString()));
    }
  }
}
