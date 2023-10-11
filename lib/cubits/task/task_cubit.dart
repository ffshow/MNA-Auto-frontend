import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mna/repositories/task.dart';
import 'package:mna/swagger_generated_code/swagger.models.swagger.dart';

part 'task_state.dart';
part 'task_cubit.freezed.dart';

class TaskCubit extends Cubit<TaskState> {
  final TaskRepository _taskRepository;
  TaskCubit(this._taskRepository) : super(const TaskState.initial());

  Future<void> init() async {
    try {
      final ListTask data = await _taskRepository.getTasks();
      emit(TaskState.loaded(data));
    } on Exception catch (e) {
      emit(TaskState.failed(e.toString()));
    }
  }
}
