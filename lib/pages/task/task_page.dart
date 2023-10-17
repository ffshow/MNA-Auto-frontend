import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mna/cubits/task/task_cubit.dart';
import 'package:mna/pages/task/data_source.dart';
import 'package:mna/services/notification_service.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/style.dart';
import 'package:mna/widget/widget.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CreateTaskWidgt(),
      appBar: AppBar(
        title: const Text('Tasks page'),
        actions: <Widget>[
          Builder(builder: (context) {
            return IconButton(
              tooltip: 'Add task',
              onPressed: () {
                Scaffold.maybeOf(context)?.openEndDrawer();
              },
              icon: const Icon(Icons.create),
            );
          }),
        ],
      ),
      // body: const TaskListWidget(),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (BuildContext context, TaskState state) {
          return state.when(
            loaded: (ListTask data) {
              return _TasksWidget(data: data.data!);
            },
            initial: () {
              return const LoadingWidget();
            },
            failed: (error) {
              return AppErrorWidget(error: error);
            },
          );
        },
      ),
    );
  }

  Future<void> _create(BuildContext context) async {
    //
    // final Map<String, dynamic>? value =
    //     await showModalBottomSheet<Map<String, dynamic>?>(
    //   context: context,
    //   useSafeArea: true,
    //   builder: (BuildContext context) {
    //     return const CreateTaskWidgt();
    //   },
    // );
    // if (value != null) {
    //   // create task
    //   swagger.apiTaskPost(
    //     task: CreateTask.fromJson(value),
    //   );
    // }
  }
}

final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

class CreateTaskWidgt extends StatelessWidget {
  const CreateTaskWidgt({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * .3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add task'),
        ),
        persistentFooterButtons: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          OutlinedButton(
            onPressed: () {
              formKey.currentState!.save();
              final Map<String, dynamic> value = formKey.currentState!.value;
              Navigator.pop(context);
              final Swagger swagger = RepositoryProvider.of<Swagger>(context);
              final List<String> labels =
                  value['sub_tasks'] as List<String>? ?? [];
              final List<Task> tasks =
                  labels.map((String e) => Task(label: e)).toList();
              swagger.apiTaskPost(
                taskModel: CreateTask(
                  label: value['label'],
                  subTasks: tasks,
                ),
              );
            },
            child: const Text('Sumbit'),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FormBuilder(
            key: formKey,
            child: SingleChildScrollView(
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
                  ListTile(
                    title: const Text('Add sub task'),
                    trailing: const Icon(Icons.add),
                    onTap: () {
                      final List<String> l = formKey.currentState!
                              .value['sub_tasks'] as List<String>? ??
                          [];
                      l.add('');
                      formKey.currentState!.fields['sub_tasks']?.didChange(l);
                      formKey.currentState!.save();
                    },
                  ),
                  FormBuilderField<List<String>?>(
                    name: 'sub_tasks',
                    builder: (FormFieldState<Object?> field) {
                      final List<String> labels =
                          field.value as List<String>? ?? [];
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: labels.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextFormField(
                              onChanged: (value) {
                                labels[index] = value;
                                field.didChange(labels);
                              },
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                labelText: 'sub-task label',
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.close),
                                ),
                              ),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
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
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TasksWidget extends StatefulWidget {
  final List<TaskResponse> data;

  const _TasksWidget({required this.data});

  @override
  State<_TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<_TasksWidget> {
  TaskResponse? _selected;

  @override
  void initState() {
    super.initState();
    if (widget.data.isNotEmpty) {
      _selected = widget.data.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              runSpacing: 8,
              spacing: 8,
              children: widget.data
                  .where((e) => e.parentTaskId == null)
                  .map((TaskResponse e) {
                return ChoiceChip(
                  selected: _selected == e,
                  label: Text(e.label ?? ''),
                  onSelected: (value) {
                    _selected = e;
                    setState(() {});
                  },
                );
              }).toList(),
            ),
            kH16,
            if (_selected?.subTasks?.isEmpty ?? false)
              const Text('This task has no sub-tasks'),
            if (_selected?.subTasks?.isNotEmpty ?? false)
              const ListTile(title: Text('Subtasks')),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ...?_selected?.subTasks?.map((Task e) {
                  return Chip(
                    label: Text(e.label ?? ''),
                  );
                }).toList()
              ],
            ),
          ],
        ),
      ),
    );
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
      onEdit: (TaskResponse task) {
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

  Future<void> _update(BuildContext context, TaskResponse task) async {
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
      swagger.apiTaskIdPatch(
        id: task.id,
        taskModel: UpdateTask.fromJson(value),
      );
    }
  }
}
