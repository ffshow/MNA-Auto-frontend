import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  void init() {
    emit(const AuthState.initial());
  }

  void signIn() {
    emit(const AuthState.authenticated());
  }

  void signOut() {
    emit(const AuthState.initial());
  }

  Future<String?> getToken({bool refresh = false}) {
    return Future.value("Bearer authToken");
  }
}
