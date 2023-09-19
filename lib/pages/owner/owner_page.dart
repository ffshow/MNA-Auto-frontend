import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/widget/widget.dart';

import 'data_source.dart';

class OwnerPage extends StatelessWidget {
  const OwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Owners Page'),
        centerTitle: false,
      ),
      body: const OwnerListWidget(),
    );
  }
}

class OwnerListWidget extends StatefulWidget {
  const OwnerListWidget({super.key});

  @override
  State<OwnerListWidget> createState() => _OwnerListWidgetState();
}

class _OwnerListWidgetState extends State<OwnerListWidget> {
  OwnerDataTableSource? source;
  bool sortAscending = false;
  int sortColumnIndex = 3;
  @override
  void didChangeDependencies() {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    source ??= OwnerDataTableSource(swagger);
    super.didChangeDependencies();
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
      minWidth: 800,
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
          label: const Text('Email'),
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
          label: const Text('Phone'),
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
          label: const Text('Address'),
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
