import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/style.dart';
import 'package:mna/widget/widget.dart';

import 'data_source.dart';

final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

class OwnerPage extends StatelessWidget {
  const OwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Owners Page'),
        centerTitle: false,
        actions: [
          IconButton(
            tooltip: 'Add an owner',
            onPressed: () {
              _create(context);
            },
            icon: const Icon(Icons.create),
          ),
        ],
      ),
      body: const OwnerListWidget(),
    );
  }

  Future<void> _create(BuildContext context) async {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final ScaffoldMessengerState scaffoldState = ScaffoldMessenger.of(context);

    final Map<String, Object?>? data =
        await showModalBottomSheet<Map<String, Object?>?>(
      context: context,
      builder: (BuildContext context) {
        return FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FormBuilderFilePicker(
                    //FIXME:
                    name: "photo__",
                    decoration: const InputDecoration(
                      labelText: "Attachment",
                    ),
                    maxFiles: 1,
                    previewImages: true,
                    typeSelectors: const [
                      TypeSelector(
                        type: FileType.image,
                        selector: Row(
                          children: <Widget>[
                            Icon(Icons.add_circle),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Add photo"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  kH8,
                  FormBuilderTextField(
                    name: 'email',
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: FormBuilderValidators.compose<String>(
                      [
                        FormBuilderValidators.email(),
                        FormBuilderValidators.required<String>(),
                      ],
                    ),
                  ),
                  kH8,
                  FormBuilderTextField(
                    name: 'phone',
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                    ),
                    validator: FormBuilderValidators.compose<String>(
                      [
                        FormBuilderValidators.required<String>(),
                      ],
                    ),
                  ),
                  kH8,
                  FormBuilderTextField(
                    name: 'address',
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                    ),
                    validator: FormBuilderValidators.compose<String>(
                      [
                        FormBuilderValidators.required<String>(),
                      ],
                    ),
                  ),
                  kH8,
                  FormBuilderTextField(
                    name: 'postal_code',
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: 'Zip code',
                    ),
                    validator: FormBuilderValidators.compose<String>(
                      [
                        FormBuilderValidators.required<String>(),
                      ],
                    ),
                  ),
                  kH16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      kW8,
                      OutlinedButton(
                        onPressed: () {
                          final bool isValid =
                              _formKey.currentState?.saveAndValidate() ?? false;
                          if (isValid) {
                            Navigator.pop(
                              context,
                              _formKey.currentState!.value,
                            );
                          }
                        },
                        child: const Text('Sumbit'),
                      ),
                    ],
                  ),
                  kH8,
                ],
              ),
            ),
          ),
        );
      },
    );
    if (data != null) {
      // create
      try {
        scaffoldState.showSnackBar(const SnackBar(
          content: Text('Creating a new owner...'),
          duration: Duration(seconds: 1),
        ));
        swagger.apiOwnerPost(ownerModel: CreateOwner.fromJson(data));
      } on Exception {
        scaffoldState.showSnackBar(const SnackBar(
          content: Text('Failed'),
          duration: Duration(seconds: 3),
        ));
      }
    }
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
          label: const Text('Email'),
          size: ColumnSize.M,
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
          size: ColumnSize.M,
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
          size: ColumnSize.S,
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
          size: ColumnSize.S,
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
