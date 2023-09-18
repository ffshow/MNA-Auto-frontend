part of 'create_garage_cubit.dart';

enum StateStatus {
  initial,
  loading,
  success,
  failure,
}

extension StateStatusX on StateStatus {
  bool get isInitial => this == StateStatus.initial;
  bool get isLoading => this == StateStatus.loading;
  bool get isSuccess => this == StateStatus.success;
  bool get isFailure => this == StateStatus.failure;
}

final class CreateGarageState extends Equatable {
  final StateStatus status;
  final String? error;
  final ModelsCreateGarageModel? model;

  const CreateGarageState({
    required this.status,
    this.error,
    this.model,
  });

  CreateGarageState copyWith({
    StateStatus? status,
    String? error,
    ModelsCreateGarageModel? model,
  }) {
    return CreateGarageState(
      status: status ?? this.status,
      error: error ?? this.error,
      model: model ?? this.model,
    );
  }

  @override
  List<Object?> get props => <Object?>[status, error, model];
}
