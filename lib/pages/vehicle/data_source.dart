import 'package:chopper/chopper.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

class VehicleDataTableSource extends AsyncDataTableSource {
  final Swagger service;

  VehicleDataTableSource(this.service);

  final List<ModelsVehicleModel> items = [];
  bool sortAscending = false;
  int sortColumnIndex = 1;
  int defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int totalCount = 0;

  DataRow2 toRow(ModelsVehicleModel item) {
    return DataRow2(
      cells: <DataCell>[
        DataCell(Text(item.registration ?? '')),
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
    final Response<ModelsListVehicleModel> res =
        await service.apiVehicleListGet(
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
        return "registration";
      case 1:
        return "created_at";
      case 2:
        return "updated_at";
      default:
        return "created_at";
    }
  }

  void cancel() {
    //TODO:
  }
}
