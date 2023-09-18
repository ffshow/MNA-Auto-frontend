import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/pages/supplier/state/supplier_cubit.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/widget/widget.dart';

class SupplierPage extends StatelessWidget {
  const SupplierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SupplierCubit>(
      create: (BuildContext context) =>
          SupplierCubit(RepositoryProvider.of<Swagger>(context))..init(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Supplier page'),
        ),
        body: BlocBuilder<SupplierCubit, SupplierState>(
          builder: (BuildContext context, SupplierState state) {
            return state.when(
              success: (List<ModelsSupplierModel> suppliers) {
                return SupplierListPage(
                    source: SupplierDataTableSource(suppliers));
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

class SupplierListPage extends StatelessWidget {
  final SupplierDataTableSource source;
  const SupplierListPage({super.key, required this.source});

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      columns: const [
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Created at')),
        DataColumn(label: Text('Updated at')),
      ],
      source: source,
    );
  }
}

class SupplierDataTableSource extends DataTableSource {
  final List<ModelsSupplierModel> suppliers;

  SupplierDataTableSource(this.suppliers);

  @override
  DataRow? getRow(int index) {
    final ModelsSupplierModel item = suppliers[index];
    return DataRow(
      cells: [
        DataCell(Text(item.name ?? '')),
        DataCell(
          Tooltip(
            message: item.createdAt,
            child: Text(item.createdAt ?? ''),
          ),
        ),
        DataCell(
          Tooltip(
            message: item.updatedAt,
            child: Text(item.updatedAt ?? ''),
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => suppliers.length;

  @override
  int get selectedRowCount => 0;
}
