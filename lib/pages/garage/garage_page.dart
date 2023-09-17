import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/garage_model/garage_model.dart';
import 'package:mna/pages/garage/state/garage_cubit.dart';
import 'package:mna/services/services.dart';
import 'package:mna/utils/extensions.dart';
import 'package:mna/widget/widget.dart';

class GaragePage extends StatelessWidget {
  const GaragePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GarageService garageService =
        RepositoryProvider.of<GarageService>(context);
    return BlocProvider<GarageCubit>(
      create: (BuildContext context) => GarageCubit(garageService)..init(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Garage page'),
        ),
        body: BlocBuilder<GarageCubit, GarageState>(
          builder: (BuildContext context, GarageState state) {
            return state.when(
              success: (List<GarageModel> garages) {
                return GarageListPage(source: GarageDataTableSource(garages));
              },
              initial: () {
                return const LoadingWidget();
              },
              failure: (String error) {
                return AppErrorWidget(error: error);
              },
            );
          },
        ),
      ),
    );
  }
}

class GarageListPage extends StatelessWidget {
  final GarageDataTableSource source;
  const GarageListPage({super.key, required this.source});

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      columns: const [
        DataColumn(label: Text('Label')),
        DataColumn(label: Text('Created at')),
        DataColumn(label: Text('Updated at')),
      ],
      source: source,
    );
  }
}

class GarageDataTableSource extends DataTableSource {
  final List<GarageModel> garages;

  GarageDataTableSource(this.garages);

  @override
  DataRow? getRow(int index) {
    final GarageModel item = garages[index];
    return DataRow(
      cells: [
        DataCell(Text(item.label ?? '')),
        DataCell(
          Tooltip(
            message: item.created_at.dateTime,
            child: Text(item.created_at?.date ?? ''),
          ),
        ),
        DataCell(
          Tooltip(
            message: item.updated_at.dateTime,
            child: Text(item.updated_at?.date ?? ''),
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => garages.length;

  @override
  int get selectedRowCount => 0;
}
