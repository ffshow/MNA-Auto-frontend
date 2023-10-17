import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/cubits/task/task_cubit.dart';
import 'package:mna/pages/vehicle_detail/cubit/vehicle_details_cubit.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/extensions.dart';
import 'package:mna/utils/style.dart';
import 'package:mna/widget/widget.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class VehicleDetailPage extends StatelessWidget {
  const VehicleDetailPage({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VehicleDetailsCubit, VehicleDetailsState>(
      builder: (BuildContext context, VehicleDetailsState state) {
        return state.when(
          initial: () {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Vehicle Details'),
              ),
              body: const Center(
                child: LoadingWidget(),
              ),
            );
          },
          loaded: (VehicleResponse response) {
            return _VehicleDetailsWidget(response: response);
          },
          failed: (String error) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Vehicle Details'),
              ),
              body: Center(
                child: AppErrorWidget(
                  error: error,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _VehicleDetailsWidget extends StatelessWidget {
  final VehicleResponse response;

  const _VehicleDetailsWidget({required this.response});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(response.registration ?? ''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const Text('Owner'),
                        title: Text(response.owner?.email ?? ''),
                      ),
                      ListTile(
                        leading: const Text('Mileage'),
                        title: Text(response.mileage?.toString() ?? ''),
                      ),
                      ListTile(
                        leading: const Text('Commercial name'),
                        title: Text(response.commercialName ?? ''),
                      ),
                      ListTile(
                        leading: const Text('Created by'),
                        title: Text(response.createdBy?.name ?? ''),
                        trailing: Text(response.createdAt.dateTime),
                      ),
                      ListTile(
                        leading: const Text('Updated by'),
                        title: Text(response.updatedBy?.name ?? ''),
                        trailing: Text(response.updatedAt.dateTime),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PrettyQrView.data(
                        data: response.id!.toString(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: const Text("••• Tasks"),
                  trailing: IconButton(
                    tooltip: 'Add tasks',
                    onPressed: () {
                      addTask(
                        context,
                        response.id!,
                        response.vehicleTasks,
                      );
                    },
                    icon: const Icon(Icons.add_task),
                  ),
                  onTap: () {
                    addTask(
                      context,
                      response.id!,
                      response.vehicleTasks,
                    );
                  },
                ),
                if (response.vehicleTasks?.isNotEmpty ?? false)
                  ListTile(
                    title: const Text("Vehicle Tasks"),
                    trailing: Text(response.statusText),
                  ),
                if (response.vehicleTasks?.isEmpty ?? false)
                  const ListTile(
                    title: Text("Vehicle doesn't attached to any tasks"),
                  ),
                for (final VehicleTask e
                    in response.vehicleTasks ?? <VehicleTask>[])
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8,
                    ),
                    child: ExpansionTile(
                      leading: Icon(
                        Icons.circle,
                        color: e.color,
                      ),
                      title: Text(e.task?.label ?? ''),
                      subtitle: e.assignedTo != null
                          ? Text(
                              'Assigned to: ${e.assignedTo?.name}',
                            )
                          : const Text('• Not assigned to an employee'),
                      children: <Widget>[VehicleTaskHandler(e: e)],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addTask(
    BuildContext context,
    int vehicleID,
    List<VehicleTask>? vehicleTasks,
  ) async {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);

    final Set<int>? data = await showModalBottomSheet<Set<int>?>(
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<TaskCubit, TaskState>(
          builder: (BuildContext context, TaskState state) {
            return state.when(
              loaded: (ListTask response) {
                return TaskSelectionWidget(
                  tasks: response.data
                          ?.where((TaskResponse e) =>
                              e.parentTaskId == null || e.parentTaskId == 0)
                          .toList() ??
                      [],
                  vehicleTasks: vehicleTasks,
                );
              },
              initial: () {
                return const LoadingWidget();
              },
              failed: (String error) {
                return Text(error);
              },
            );
          },
        );
      },
    );

    if (data == null) {
      return;
    }
    final r = await swagger.apiVehicleTaskImportPost(
        vehicleTaskModel: data
            .map(
              (e) => CreateVehicleTask(
                vehicleId: vehicleID,
                taskId: e,
              ),
            )
            .toList());

    print(r);
  }
}

class VehicleTaskHandler extends StatelessWidget {
  const VehicleTaskHandler({
    super.key,
    required this.e,
  });

  final VehicleTask e;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (e.started && !e.finished && !(e.deleted ?? false))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ElevatedButton(
              child: const Text('Finish'),
              onPressed: () {
                _patch(context, e.id!, "finish");
              },
            ),
          ),
        if (!e.started && !(e.deleted ?? false))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ElevatedButton(
              child: const Text('Start'),
              onPressed: () {
                _patch(context, e.id!, "start");
              },
            ),
          ),
        if (!e.finished && !(e.deleted ?? false))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ElevatedButton(
              child: const Text('Cancel'),
              onPressed: () {
                _patch(context, e.id!, "cancel");
              },
            ),
          ),
      ],
    );
  }

  void _patch(BuildContext context, int id, String status) {
    late final VehicleTask d;
    switch (status) {
      case 'cancel':
        d = e.copyWith(
            deleted: true,
            deletedAt: GormDeletedAt(
              time: DateTime.now().toUtc().toIso8601String(),
              valid: true,
            ));
        break;
      case 'start':
        d = e.copyWith(startedAt: DateTime.now().toUtc());
        break;
      case 'finish':
        d = e.copyWith(finishedAt: DateTime.now().toUtc());
        break;
    }
    context.read<VehicleDetailsCubit>().patchTask(id, d);
  }
}

class TaskSelectionWidget extends StatefulWidget {
  final List<TaskResponse> tasks;
  final List<VehicleTask>? vehicleTasks;
  const TaskSelectionWidget({
    super.key,
    required this.tasks,
    this.vehicleTasks,
  });

  @override
  State<TaskSelectionWidget> createState() => _TaskSelectionWidgetState();
}

class _TaskSelectionWidgetState extends State<TaskSelectionWidget> {
  Set<int> selectedTasks = {};
  Set<int> selectedSubTasks = {};

  @override
  void initState() {
    super.initState();
    if (widget.vehicleTasks != null && widget.vehicleTasks!.isNotEmpty) {
      selectedTasks = widget.vehicleTasks!.map((e) => e.taskId!).toSet();
      selectedSubTasks = widget.vehicleTasks!.map((e) => e.taskId!).toSet();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context, selectedTasks);
          },
          child: const Text('Submit'),
        ),
      ],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const ListTile(title: Text('• Add tasks')),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.tasks.length,
              itemBuilder: (BuildContext context, int index) {
                final TaskResponse item = widget.tasks[index];
                return ExpansionTile(
                  leading: Checkbox.adaptive(
                    tristate: true,
                    value: isTaskSelected(item),
                    onChanged: (bool? value) {
                      switch (value) {
                        case true:
                          selectedTasks.add(item.id!);
                          // selectedSubTasks.addAll(item.subTasksIds ?? []);
                          break;
                        case false:
                          selectedTasks.remove(item.id);
                          // selectedSubTasks.removeAll(item.subTasksIds ?? []);
                          break;
                        case null:
                          selectedTasks.remove(item.id);
                          // selectedSubTasks.removeAll(item.subTasksIds ?? []);
                          break;
                      }
                      setState(() {});
                    },
                  ),
                  title: Text(item.label ?? ''),
                  expandedAlignment: Alignment.topLeft,
                  children: <Widget>[
                    ...?item.subTasks?.map((e) {
                      return CheckboxListTile.adaptive(
                        tristate: true,
                        onChanged: (bool? selected) {
                          switch (selected) {
                            case true:
                              selectedSubTasks.add(e.id!);
                              break;
                            case false:
                              selectedSubTasks.remove(e.id);
                              break;
                            case null:
                              selectedSubTasks.remove(e.id);
                              break;
                          }
                          setState(() {});
                        },
                        value: selectedSubTasks.contains(e.id),
                        title: Text(e.label ?? ''),
                      );
                    }).toList(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  bool? isTaskSelected(TaskResponse item) {
    // if (selectedSubTasks.containsAll(item.subTasksIds ?? [])) {
    //   return true;
    // }
    if (selectedTasks.contains(item.id)) {
      return true;
    }
    if (item.subTasks == null || (item.subTasks?.isEmpty ?? false)) {
      return false;
    }
    for (final e in item.subTasks!) {
      if (selectedSubTasks.contains(e.id)) {
        return null;
      }
    }
    return false;
  }
}
