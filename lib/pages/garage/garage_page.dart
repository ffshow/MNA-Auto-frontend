import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/extensions.dart';
import 'package:mna/utils/style.dart';

import 'create/create_garage_widget.dart';

class GaragePage extends StatelessWidget {
  const GaragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage page'),
        actions: [
          IconButton(
            tooltip: 'Import data',
            onPressed: () {
              ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                const SnackBar(content: Text('not implemented yet!')),
              );
            },
            icon: const Icon(Icons.import_contacts),
          ),
          IconButton(
            onPressed: () {
              final Swagger swagger = RepositoryProvider.of<Swagger>(context);
              final DateTime now = DateTime.now();
              final g = ModelsCreateGarageModel(
                label: 'garage ${now.microsecond}',
              );
              swagger.apiGaragePost(garage: g);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const Padding(
        padding: kEdgeAll8,
        child: Column(
          children: <Widget>[
            CreateGarageWidget(),
            kH16,
            Expanded(child: GarageListWidget()),
          ],
        ),
      ),
    );
  }
}

class GarageListWidget extends StatefulWidget {
  const GarageListWidget({super.key});

  @override
  State<GarageListWidget> createState() => _GarageListWidgetState();
}

class _GarageListWidgetState extends State<GarageListWidget> {
  GarageDataTableSource? source;

  bool sortAscending = false;
  int sortColumnIndex = 1;

  @override
  void didChangeDependencies() {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    source ??= GarageDataTableSource(swagger);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    source?.cancel();
    source?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AsyncPaginatedDataTable2(
      source: source!,
      initialFirstRowIndex: 0,
      rowsPerPage: source!.defaultRowsPerPage,
      showCheckboxColumn: true,
      sortAscending: sortAscending,
      sortColumnIndex: sortColumnIndex,
      showFirstLastButtons: true,
      autoRowsToHeight: true,
      columns: <DataColumn>[
        DataColumn(
          label: const Text('Label'),
          onSort: (int columnIndex, bool ascending) {
            setState(() {
              sortAscending = ascending;
              sortColumnIndex = columnIndex;
            });
            source!.sort(columnIndex, ascending);
          },
        ),
        DataColumn(
          label: const Text('Created at'),
          onSort: (int columnIndex, bool ascending) {
            setState(() {
              sortAscending = ascending;
              sortColumnIndex = columnIndex;
            });
            source!.sort(columnIndex, ascending);
          },
        ),
        DataColumn(
          label: const Text('Updated at'),
          onSort: (int columnIndex, bool ascending) {
            setState(() {
              sortAscending = ascending;
              sortColumnIndex = columnIndex;
            });
            source!.sort(columnIndex, ascending);
          },
        ),
        const DataColumn(label: Text('Actions')),
      ],
      onRowsPerPageChanged: (value) {
        source!.onRowsPerPageChanged(value);
      },
    );
  }
}

class GarageDataTableSource extends AsyncDataTableSource {
  final Swagger service;

  GarageDataTableSource(this.service) {
    // service.getApiGarageTotal().then((total) {
    //   totalCount = total.count ?? 0;
    //   notifyListeners();
    // });
    // onCreate = service.onCreate.listen(
    //   (GarageModel g) {
    //     debugPrint('garage created ${g.id}');
    //     items.insert(0, g);
    //     refreshDatasource();
    //   },
    // );
    // onUpdate = service.onUpdate.listen(
    //   (GarageModel g) {
    //     debugPrint('garage updated ${g.id}');
    //     final int index = items.indexWhere((e) => e.id == g.id);
    //     if (index > -1) {
    //       items[index] = g;
    //       refreshDatasource();
    //     }
    //   },
    // );
    // onDelete = service.onDelete.listen(
    //   (GarageModel g) {
    //     debugPrint('garage deleted ${g.id}');
    //     items.removeWhere((e) => e.id == g.id);
    //     refreshDatasource();
    //   },
    // );
  }

  final List<ModelsGarageModelResponse> items = [];
  bool sortAscending = false;
  int sortColumnIndex = 1;
  int defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int totalCount = 0;
  late final StreamSubscription<ModelsGarageModelResponse>? onCreate;
  late final StreamSubscription<ModelsGarageModelResponse>? onUpdate;
  late final StreamSubscription<ModelsGarageModelResponse>? onDelete;

  DataRow2 toRow(ModelsGarageModelResponse item) {
    return DataRow2(
      cells: <DataCell>[
        DataCell(Text(item.label ?? '')),
        DataCell(
          Tooltip(
            message: item.createdAt.date,
            child: Text(item.createdAt.date),
          ),
        ),
        DataCell(
          Tooltip(
            message: item.updatedAt.date,
            child: Text(item.updatedAt.date),
          ),
        ),
        const DataCell(Row(
          children: <Widget>[
            IconButton(
              // onPressed: () => service.delete(item),
              onPressed: null,
              icon: Icon(Icons.delete),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.edit),
            ),
          ],
        )),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => totalCount;

  @override
  int get selectedRowCount => 0;

  void onRowsPerPageChanged(int? value) {
    defaultRowsPerPage = value ?? defaultRowsPerPage;
    notifyListeners();
  }

  @override
  Future<AsyncRowsResponse> getRows(int startIndex, int count) async {
    final Response<ModelsListGarageModel> res = await service.apiGarageListGet(
      page: (startIndex ~/ defaultRowsPerPage) + 1,
      perPage: count,
      sortBy: sortBy(sortColumnIndex),
      descending: !sortAscending,
    );
    if (res.body?.total != null && res.body!.total != 0) {
      totalCount = res.body!.total!;
    }
    return AsyncRowsResponse(
      totalCount,
      res.body?.data?.map((e) => toRow(e)).toList() ?? [],
    );
  }

  void sort(int columnIndex, bool ascending) {
    sortAscending = ascending;
    sortColumnIndex = columnIndex;
    refreshDatasource();
  }

  String? sortBy(int sortColumnIndex) {
    switch (sortColumnIndex) {
      case 0:
        return "label";
      case 1:
        return "created_at";
      case 2:
        return "updated_at";
      default:
        return "created_at";
    }
  }

  void cancel() {
    // onCreate?.cancel();
    // onUpdate?.cancel();
    // onDelete?.cancel();
  }
}
