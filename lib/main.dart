import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mna/cubits/cubit/notification_cubit.dart';
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
  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider<Swagger>(create: (BuildContext context) => swagger),
      RepositoryProvider<NotificationService>(
        create: (BuildContext context) => notificationService..init(),
        lazy: false,
      ),
    ],
    child: BlocProvider<NotificationCubit>(
      create: (context) => notificationCubit,
      child: const MainApp(),
    ),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
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
