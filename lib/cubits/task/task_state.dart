part of 'task_cubit.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loaded(ListTask data) = _Loaded;
  const factory TaskState.failed(String error) = _Failed;
}
