import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/widget/widget.dart';

import 'state/vehicle_cubit.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VehicleCubit>(
      create: (BuildContext context) => VehicleCubit(
        RepositoryProvider.of<Swagger>(context),
      )..getVehicles(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vehicle Page'),
        ),
        body: BlocBuilder<VehicleCubit, VehicleState>(
          builder: (BuildContext context, VehicleState state) {
            return state.when<Widget>(
              loaded: (Iterable<ModelsVehicleModel> vehicles) {
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
  final Iterable<ModelsVehicleModel> vehicles;
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
  final Iterable<ModelsVehicleModel> vehicles;

  VehicleDataSrouce(this.vehicles);

  @override
  DataRow? getRow(int index) {
    final ModelsVehicleModel e = vehicles.elementAt(index);
    return DataRow(
      cells: [
        DataCell(Text(e.serialNumber ?? '')),
        DataCell(Text(e.createdAt ?? '')),
        DataCell(Text(e.updatedAt ?? '')),
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
