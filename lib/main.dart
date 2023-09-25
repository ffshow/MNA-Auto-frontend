import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mna/cubits/auth/auth_cubit.dart';
import 'package:mna/cubits/notification/notification_cubit.dart';
import 'package:mna/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/client_index.dart';

class Auth extends Authenticator {
  final AuthCubit authCubit;

  Auth(this.authCubit);
  @override
  FutureOr<Request?> authenticate(Request request, Response response,
      [Request? originalRequest]) async {
    if (response.statusCode == 401) {
      final token = await authCubit.getToken(refresh: true);
      if (token == null) {
        return null;
      }
      final Request req = request.copyWith(
          headers: request.headers
            ..addAll(<String, String>{
              "Authorization": token,
            }));
      return req;
    }
    return null;
  }
}

void main() {
  final AuthCubit authCubit = AuthCubit();
  final Swagger swagger = Swagger.create(
    authenticator: Auth(authCubit),
    interceptors: [
      (Request request) async {
        final String? token = await authCubit.getToken();
        if (token != null) {
          request.headers.putIfAbsent('Authorization', () => token);
        }
        return request;
      }
    ],
  );
  final NotificationCubit notificationCubit = NotificationCubit();
  final NotificationService notificationService = NotificationService(
    notificationCubit,
  );
  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider<Swagger>(create: (BuildContext context) => swagger),
      RepositoryProvider<NotificationService>(
        create: (BuildContext context) => notificationService..init(),
        lazy: false,
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => authCubit..init(),
          lazy: false,
        ),
        BlocProvider<NotificationCubit>(
          create: (BuildContext context) => notificationCubit,
        ),
      ],
      child: const MainApp(),
    ),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthCubit authCubit = context.read<AuthCubit>();
    return MaterialApp.router(
      routerConfig: router(authCubit),
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        useMaterial3: true,
        scheme: FlexScheme.material,
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        scheme: FlexScheme.material,
      ),
      themeMode: ThemeMode.system,
    );
  }
}
