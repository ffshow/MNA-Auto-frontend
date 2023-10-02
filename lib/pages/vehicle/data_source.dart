import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/extensions.dart';

class VehicleDataTableSource extends AsyncDataTableSource {
  final Swagger service;
  final NotificationService notificationService;
  final Function(ModelsVehicleModelResponse item)? onTap;
  VehicleDataTableSource(this.service, this.notificationService, {this.onTap}) {
    sub = notificationService.onCreateVehicle.listen((_) {
      refreshDatasource();
    });
  }
  final List<ModelsVehicleModelResponse> items = [];
  bool sortAscending = false;
  int sortColumnIndex = 1;
  int defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int totalCount = 0;
  late final StreamSubscription? sub;
  DataRow2 toRow(ModelsVehicleModelResponse item) {
    return DataRow2(
      onTap: () {
        onTap?.call(item);
      },
      cells: <DataCell>[
        DataCell(Text(item.registration ?? '')),
        DataCell(Text(item.owner?.email ?? '')),
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
    try {
      final Response<ModelsListVehicleModel> res =
          await service.apiVehicleListGet(
        page: (startIndex ~/ defaultRowsPerPage) + 1,
        perPage: count,
        sortBy: sortBy(sortColumnIndex),
        descending: !sortAscending,
        withOwner: true, //FIXME:
      );
      if (res.body?.total != null && res.body!.total != 0) {
        totalCount = res.body!.total!;
      }
      return AsyncRowsResponse(
        totalCount,
        res.body?.data?.map((e) => toRow(e)).toList() ?? [],
      );
    } on Exception catch (_) {
      return AsyncRowsResponse(0, []);
    }
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
      case 2:
        return "created_at";
      case 3:
        return "updated_at";
      default:
        return "created_at";
    }
  }

  @override
  void dispose() {
    sub?.cancel();
    super.dispose();
  }
}
