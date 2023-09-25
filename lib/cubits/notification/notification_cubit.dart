import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationCubit extends Cubit<NotificationModel> {
  NotificationCubit() : super(NotificationModel.empty());

  void add(NotificationModel notificationModel) {
    emit(notificationModel);
  }
}

class NotificationModel extends Equatable {
  final String title;
  final String description;
  final Type type;
  final DateTime time;

  const NotificationModel(
      {required this.title,
      required this.description,
      required this.type,
      required this.time});

  static NotificationModel empty() => NotificationModel(
        title: '',
        description: '',
        type: Type.info,
        time: DateTime.now(),
      );

  @override
  List<Object?> get props => [title, description, type, time];
}

enum Type {
  success,
  error,
  warning,
  info,
}
