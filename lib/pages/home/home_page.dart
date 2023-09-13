import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/models.dart';
import 'package:mna/pages/home/cubit/vehicle_cubit.dart';
import 'package:mna/repository/repositories.dart';
import 'package:mna/repository/vehicle.dart';
import 'package:mna/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final VehicleRepository vehicleRepository =
        RepositoryProvider.of<VehicleRepository>(context);
    return BlocProvider<VehicleCubit>(
      create: (BuildContext context) => VehicleCubit(
        vehicleRepository,
      )..getVehicles(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: BlocBuilder<VehicleCubit, VehicleState>(
          builder: (BuildContext context, VehicleState state) {
            return state.when<Widget>(
              loaded: (Iterable<VehicleModel> vehicles) {
                return VehicleListWidget(vehicles: vehicles);
              },
              initial: () => const LoadingWidget(),
              failed: (String error) => AppErrorWidget(
                error: error,
                tryAgainFunc: () {
                  context.read<VehicleCubit>().getVehicles(tryAgain: true);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class VehicleListWidget extends StatelessWidget {
  const VehicleListWidget({super.key, required this.vehicles});
  final Iterable<VehicleModel> vehicles;
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        const TableRow(
          children: [
            TableCell(child: Text('id')),
            TableCell(child: Text('registration')),
          ],
        ),
        ...vehicles
            .map((e) => TableRow(
                  children: [
                    TableCell(child: Text(e.id)),
                    TableCell(child: Text('e.registration')),
                  ],
                ))
            .toList(),
      ],
    );
  }
}
