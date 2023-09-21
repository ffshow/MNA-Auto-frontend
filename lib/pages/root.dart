import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mna/cubits/cubit/notification_cubit.dart';
import 'package:mna/utils/style.dart';
import 'package:toastification/toastification.dart';

const Duration autoCloseDuration = Duration(seconds: 5);

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationCubit, NotificationModel>(
      listener: (BuildContext context, NotificationModel state) {
        switch (state.type) {
          case Type.error:
            toastification.showError(
              context: context,
              title: state.title,
              description: state.description,
              autoCloseDuration: autoCloseDuration,
              closeOnClick: true,
            );
          case Type.info:
            toastification.showInfo(
              context: context,
              title: state.title,
              description: state.description,
              autoCloseDuration: autoCloseDuration,
              closeOnClick: true,
            );
          case Type.success:
            toastification.showSuccess(
              context: context,
              title: state.title,
              description: state.description,
              autoCloseDuration: autoCloseDuration,
              closeOnClick: true,
            );
          case Type.warning:
            toastification.showWarning(
              context: context,
              title: state.title,
              description: state.description,
              autoCloseDuration: autoCloseDuration,
              closeOnClick: true,
            );
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/vehicles');
              },
              child: const Text('vehicles'),
            ),
            kH8,
            ElevatedButton(
              onPressed: () {
                context.go('/owners');
              },
              child: const Text('owners'),
            ),
            kH8,
            ElevatedButton(
              onPressed: () {
                context.go('/create_vehicle');
              },
              child: const Text('create vehicle'),
            ),
            kH8,
            ElevatedButton(
              onPressed: () {
                context.go('/garage');
              },
              child: const Text('garages'),
            ),
            kH8,
            ElevatedButton(
              onPressed: () {
                context.go('/suppliers');
              },
              child: const Text('suppliers'),
            ),
            kH8,
            ElevatedButton(
              onPressed: () {
                context.go('/dev');
              },
              child: const Text('dev'),
            ),
            kH8,
            ElevatedButton(
              onPressed: () {
                context.go('/notifications');
              },
              child: const Text('notifications'),
            ),
            kH8,
            ElevatedButton(
              onPressed: () {
                context.go('/tasks');
              },
              child: const Text('tasks'),
            ),
          ],
        ),
      ),
    );
  }
}
