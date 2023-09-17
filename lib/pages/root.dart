import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mna/utils/style.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

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
        ],
      ),
    );
  }
}
