import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/services/services.dart';
import 'package:mna/utils/style.dart';
import 'package:toastification/toastification.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  void initState() {
    super.initState();
    final GarageService garageService =
        RepositoryProvider.of<GarageService>(context);
    final VehicleService vehicleService =
        RepositoryProvider.of<VehicleService>(context);
    NotificationService(
      context,
      garageService,
      vehicleService,
    ).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
