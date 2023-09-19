import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mna/pages/supplier/data_source.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/widget/widget.dart';

final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

class SupplierPage extends StatelessWidget {
  const SupplierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suppliers page'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Add supplier',
            onPressed: () {
              _create(context);
            },
            icon: const Icon(Icons.create),
          )
        ],
      ),
      body: const SuppliersListPage(),
    );
  }

  Future<void> _create(BuildContext context) async {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final Map<String, Object?>? value = await showDialog<Map<String, Object?>?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add supplier'),
          content: FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FormBuilderTextField(
                  name: 'name',
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                  validator: FormBuilderValidators.compose<String>(
                    [
                      FormBuilderValidators.required<String>(),
                      FormBuilderValidators.minLength<String>(3),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cencel'),
            ),
            OutlinedButton(
              onPressed: () {
                final bool valid =
                    _formKey.currentState?.saveAndValidate() ?? false;
                if (valid) {
                  Navigator.pop(
                    context,
                    _formKey.currentState!.value,
                  );
                }
              },
              child: const Text('Create'),
            ),
          ],
        );
      },
    );

    if (value != null) {
      swagger.apiSupplierPost(
        supplier: ModelsCreateSupplierModel.fromJson(value),
      );
    }
  }
}

class SuppliersListPage extends StatefulWidget {
  const SuppliersListPage({super.key});

  @override
  State<SuppliersListPage> createState() => _SuppliersListPageState();
}

class _SuppliersListPageState extends State<SuppliersListPage> {
  SupplierDataTableSource? source;
  bool sortAscending = false;
  int sortColumnIndex = 1;
  @override
  void didChangeDependencies() {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final NotificationService notificationService =
        RepositoryProvider.of<NotificationService>(context);
    source ??= SupplierDataTableSource(swagger, notificationService);
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
          label: const Text('Name'),
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
