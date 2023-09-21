import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:mna/pages/pages.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  errorBuilder: _errorPageBuilder,
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const RootPage();
      },
      routes: [
        GoRoute(
          path: 'vehicles',
          builder: (BuildContext context, GoRouterState state) {
            return const VehiclePage();
          },
        ),
        GoRoute(
          path: 'owners',
          builder: (BuildContext context, GoRouterState state) {
            return const OwnerPage();
          },
        ),
        GoRoute(
          path: 'create_vehicle',
          builder: (BuildContext context, GoRouterState state) {
            return const CreateVechilePage();
          },
        ),
        GoRoute(
          path: 'garage',
          builder: (BuildContext context, GoRouterState state) {
            return const GaragePage();
          },
        ),
        GoRoute(
          path: 'suppliers',
          builder: (BuildContext context, GoRouterState state) {
            return const SupplierPage();
          },
        ),
        GoRoute(
          path: 'dev',
          builder: (BuildContext context, GoRouterState state) {
            return const DevPage();
          },
        ),
        GoRoute(
          path: 'notifications',
          builder: (BuildContext context, GoRouterState state) {
            return const NotificationPage();
          },
        ),
        GoRoute(
          path: 'tasks',
          builder: (BuildContext context, GoRouterState state) {
            return const TaskPage();
          },
        ),
      ],
    ),
  ],
);

Widget _errorPageBuilder(BuildContext context, _) {
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Something went wrong',
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text('Home'),
        ),
      ],
    ),
  );
}
