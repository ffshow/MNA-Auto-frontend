import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/vehicle_service.dart';
import 'package:mna/widget/widget.dart';

import 'state/vehicle_cubit.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    final VehicleService service =
        RepositoryProvider.of<VehicleService>(context);
    return BlocProvider<VehicleCubit>(
      create: (BuildContext context) => VehicleCubit(
        service,
      )..getVehicles(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vehicle Page'),
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
        DataCell(Text(e.serial_number ?? '')),
        DataCell(Text(e.created_at?.toIso8601String() ?? '')),
        DataCell(Text(e.updated_at?.toIso8601String() ?? '')),
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
