import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mna/cubits/auth/auth_cubit.dart';
import 'package:mna/cubits/notification/notification_cubit.dart';
import 'package:mna/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/client_index.dart';

void main() {
  final Swagger swagger = Swagger.create();
  final NotificationCubit notificationCubit = NotificationCubit();
  final NotificationService notificationService = NotificationService(
    notificationCubit,
  );
  final AuthCubit authCubit = AuthCubit();
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
