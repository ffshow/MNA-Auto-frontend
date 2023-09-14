import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/owner_service.dart';
import 'package:mna/widget/widget.dart';

import 'state/owner_cubit.dart';

class OwnerPage extends StatelessWidget {
  const OwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OwnerService ownerService =
        RepositoryProvider.of<OwnerService>(context);
    return BlocProvider<OwnerCubit>(
      create: (BuildContext context) => OwnerCubit(
        ownerService,
      )..getOwners(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Owner Page'),
        ),
        body: BlocBuilder<OwnerCubit, OwnerState>(
          builder: (BuildContext context, OwnerState state) {
            return state.when<Widget>(
              loaded: (Iterable<OwnerModel> owners) {
                return OwnerListWidget(owners: owners);
              },
              initial: () => const LoadingWidget(),
              failed: (String error) => AppErrorWidget(
                error: error,
                tryAgainFunc: () {
                  context.read<OwnerCubit>().getOwners(tryAgain: true);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class OwnerListWidget extends StatelessWidget {
  const OwnerListWidget({super.key, required this.owners});
  final Iterable<OwnerModel> owners;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
        source: OwnerDataSrouce(owners),
        columns: const [
          DataColumn(label: Text('Email')),
          DataColumn(label: Text('Address')),
          DataColumn(label: Text('Created at')),
          DataColumn(label: Text('Actions')),
        ],
      ),
    );
  }
}

class OwnerDataSrouce extends DataTableSource {
  final Iterable<OwnerModel> owners;

  OwnerDataSrouce(this.owners);

  @override
  DataRow? getRow(int index) {
    final OwnerModel e = owners.elementAt(index);
    return DataRow(
      cells: [
        DataCell(Text(e.email)),
        DataCell(Text(e.address)),
        DataCell(Text(e.created_at.toIso8601String())),
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
  int get rowCount => owners.length;

  @override
  int get selectedRowCount => 0;
}
