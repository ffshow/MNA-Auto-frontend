import 'package:dio/dio.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:mna/router.dart';
import 'package:mna/services/providers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final now = DateTime.now();
  print(now.toIso8601String());
  print(now.toString());
  final Dio dio = Dio(
    BaseOptions(baseUrl: "http://localhost:3000/"),
  );

  runApp(MultiRepositoryProvider(
    providers: [
      ...getProviders(dio),
    ],
    child: const MainApp(),
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
