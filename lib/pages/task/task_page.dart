import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mna/pages/task/data_source.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/widget/widget.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task page'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Add task',
            onPressed: () {
              _create(context);
            },
            icon: const Icon(Icons.create),
          ),
        ],
      ),
      body: const TaskListWidget(),
    );
  }

  Future<void> _create(BuildContext context) async {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    final Map<String, dynamic>? value = await showDialog<Map<String, dynamic>?>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add task'),
          content: FormBuilder(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FormBuilderTextField(
                  name: 'label',
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Label',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null) {
                      return null;
                    }
                    if (value.trim().isEmpty) {
                      return "required";
                    }
                    if (value.trim().length < 3) {
                      return "min length is 3 chars";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            OutlinedButton(
              onPressed: () {
                final bool valid =
                    formKey.currentState?.saveAndValidate() ?? false;
                if (valid) {
                  final Map<String, dynamic> value =
                      formKey.currentState!.value;
                  Navigator.pop(context, value);
                }
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
    if (value != null) {
      // create task
      swagger.apiTaskPost(task: ModelsCreateTaskModel.fromJson(value));
    }
  }
}

class TaskListWidget extends StatefulWidget {
  const TaskListWidget({super.key});

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  TaskDataTableSource? source;
  bool sortAscending = false;
  int sortColumnIndex = 1;
  @override
  void didChangeDependencies() {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final NotificationService notificationService =
        RepositoryProvider.of<NotificationService>(context);
    source ??= TaskDataTableSource(
      service: swagger,
      notificationService: notificationService,
      onEdit: (ModelsTaskModelResponse task) {
        _update(context, task);
      },
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
          label: const Text('Label'),
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

  Future<void> _update(
      BuildContext context, ModelsTaskModelResponse task) async {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    final Map<String, dynamic>? value = await showDialog<Map<String, dynamic>?>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add task'),
          content: FormBuilder(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FormBuilderTextField(
                  name: 'label',
                  initialValue: task.label,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Label',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null) {
                      return null;
                    }
                    if (value.trim().isEmpty) {
                      return "required";
                    }
                    if (value.trim().length < 3) {
                      return "min length is 3 chars";
                    }
                    if (value == task.label) {
                      return "nothing to change";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            OutlinedButton(
              onPressed: () {
                final bool valid =
                    formKey.currentState?.saveAndValidate() ?? false;
                if (valid) {
                  final Map<String, dynamic> value =
                      formKey.currentState!.value;
                  Navigator.pop(context, value);
                }
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
    if (value != null) {
      // update task
      swagger.apiTaskIdPut(
        id: task.id,
        task: ModelsUpdateTaskModel.fromJson(value),
      );
    }
  }
}
