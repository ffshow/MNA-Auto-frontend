part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState.initial() = _Initial;
  const factory ActivityState.failed(String error) = _Failed;
  const factory ActivityState.success(List<ActivityResponse> activities) =
      _Success;
}
