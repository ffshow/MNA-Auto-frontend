import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/supplier_model/supplier_model.dart';
import 'package:mna/pages/supplier/state/supplier_cubit.dart';
import 'package:mna/services/services.dart';
import 'package:mna/utils/extensions.dart';
import 'package:mna/widget/widget.dart';

class SupplierPage extends StatelessWidget {
  const SupplierPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SupplierService supplierService =
        RepositoryProvider.of<SupplierService>(context);
    return BlocProvider<SupplierCubit>(
      create: (BuildContext context) => SupplierCubit(supplierService)..init(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Supplier page'),
        ),
        body: BlocBuilder<SupplierCubit, SupplierState>(
          builder: (BuildContext context, SupplierState state) {
            return state.when(
              success: (List<SupplierModel> suppliers) {
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
  final List<SupplierModel> suppliers;

  SupplierDataTableSource(this.suppliers);

  @override
  DataRow? getRow(int index) {
    final SupplierModel item = suppliers[index];
    return DataRow(
      cells: [
        DataCell(Text(item.name ?? '')),
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
  int get rowCount => suppliers.length;

  @override
  int get selectedRowCount => 0;
}
