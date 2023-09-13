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
    return SingleChildScrollView(
      child: PaginatedDataTable(
        source: VehicleDataSrouce(vehicles),
        columns: const [
          DataColumn(label: Text('Registration')),
          DataColumn(label: Text('Created at')),
          DataColumn(label: Text('Updated at')),
          DataColumn(label: Text('Actions')),
        ],
      ),
    );
  }
}

class VehicleDataSrouce extends DataTableSource {
  final Iterable<VehicleModel> vehicles;

  VehicleDataSrouce(this.vehicles);

  @override
  DataRow? getRow(int index) {
    final VehicleModel e = vehicles.elementAt(index);
    return DataRow(
      cells: [
        DataCell(Text(e.serial_number)),
        DataCell(Text(e.created_at.toIso8601String())),
        DataCell(Text(e.updated_at.toIso8601String())),
        DataCell(Row(
          children: [
            IconButton(
              tooltip: 'Edit',
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              tooltip: 'Remove',
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ],
        )),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => vehicles.length;

  @override
  int get selectedRowCount => 0;
}
