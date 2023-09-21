import 'package:chopper/chopper.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/extensions.dart';

class OwnerDataTableSource extends AsyncDataTableSource {
  final Swagger service;

  OwnerDataTableSource(this.service);

  final List<ModelsOwnerModel> items = [];
  bool sortAscending = false;
  int sortColumnIndex = 3;
  int defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int totalCount = 0;

  DataRow2 toRow(ModelsOwnerModelResponse item) {
    return DataRow2(
      cells: <DataCell>[
        DataCell(Text(item.email ?? '')),
        DataCell(Text(item.phone ?? '')),
        DataCell(Text(item.address ?? '')),
        DataCell(
          Tooltip(
            message: item.createdAt.dateTime,
            child: Text(item.createdAt.date),
          ),
        ),
        DataCell(
          Tooltip(
            message: item.updatedAt.dateTime,
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
    final Response<ModelsListOwnerModel> res = await service.apiOwnerListGet(
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
        return "email";
      case 1:
        return "phone";
      case 2:
        return "address";
      case 3:
        return "created_at";
      case 4:
        return "updated_at";
      default:
        return "created_at";
    }
  }

  void cancel() {
    //TODO:
  }
}