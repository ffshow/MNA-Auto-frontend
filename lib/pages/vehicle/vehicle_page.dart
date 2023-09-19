import 'package:data_table_2/data_table_2.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/widget/widget.dart';

import 'data_source.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicles Page'),
        actions: [
          IconButton(
            onPressed: () {
              final faker = Faker();
              final String date = faker.date
                  .dateTime(minYear: 1999, maxYear: 2022)
                  .toUtc()
                  .toIso8601String();
              final v = ModelsCreateVehicleModel(
                chrono: faker.vehicle.make(),
                collectionDate: date,
                deliveryDate: date,
                firstCirculation: date,
                soldAt: date,
                commercialName: faker.vehicle.model(),
                currentStatus: 'toGetBack',
                expertise: faker.randomGenerator.boolean(),
                mileage: faker.randomGenerator.integer(1000, min: 20),
                note: faker.lorem.sentence(),
                ownerId: '65005460b40777ab605fa163',
                procedureVe: faker.randomGenerator.boolean(),
                registration: faker.vehicle.yearMakeModel(),
                serialNumber: faker.vehicle.vin(),
              );
              RepositoryProvider.of<Swagger>(context)
                  .apiVehiclePost(vehicle: v);
            },
            icon: const Icon(Icons.create),
          ),
        ],
      ),
      body: const VehicleListWidget(),
    );
  }
}

class VehicleListWidget extends StatefulWidget {
  const VehicleListWidget({super.key});

  @override
  State<VehicleListWidget> createState() => _VehicleListWidgetState();
}

class _VehicleListWidgetState extends State<VehicleListWidget> {
  VehicleDataTableSource? source;
  bool sortAscending = false;
  int sortColumnIndex = 1;
  @override
  void didChangeDependencies() {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final NotificationService notificationService =
        RepositoryProvider.of<NotificationService>(context);
    source ??= VehicleDataTableSource(
      swagger,
      notificationService,
    );
    super.didChangeDependencies();
  }

  @override
  void dispose() {
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
      pageSyncApproach: PageSyncApproach.doNothing,
      onRowsPerPageChanged: (int? value) {
        source!.onRowsPerPageChanged(value);
      },
      loading: const LoadingWidget(),
      empty: const Center(
        child: Text('No data!'),
      ),
      horizontalMargin: 20,
      // checkboxHorizontalMargin: 12,
      columnSpacing: 0,
      wrapInCard: false,
      autoRowsToHeight: true,
      header: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'Search',
                hintText: 'not implemented yet!',
              ),
            ),
          ),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  tooltip: 'Filter',
                  onPressed: null,
                  icon: Icon(Icons.filter_alt),
                ),
              ],
            ),
          ),
        ],
      ),
      columns: <DataColumn2>[
        DataColumn2(
          label: const Text('Registration'),
          size: ColumnSize.L,
          onSort: (int columnIndex, bool ascending) {
            setState(() {
              sortAscending = ascending;
              sortColumnIndex = columnIndex;
            });
            source!.sort(columnIndex, ascending);
          },
        ),
        DataColumn2(
          label: const Text('Created at'),
          onSort: (int columnIndex, bool ascending) {
            setState(() {
              sortAscending = ascending;
              sortColumnIndex = columnIndex;
            });
            source!.sort(columnIndex, ascending);
          },
        ),
        DataColumn2(
          label: const Text('Updated at'),
          onSort: (int columnIndex, bool ascending) {
            setState(() {
              sortAscending = ascending;
              sortColumnIndex = columnIndex;
            });
            source!.sort(columnIndex, ascending);
          },
        ),
        const DataColumn2(
          label: Text('Actions'),
          size: ColumnSize.S,
        ),
      ],
    );
  }
}
