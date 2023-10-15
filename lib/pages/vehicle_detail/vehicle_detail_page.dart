import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/cubits/task/task_cubit.dart';
import 'package:mna/pages/vehicle_detail/cubit/vehicle_details_cubit.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/extensions.dart';
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
              children: [
                ListTile(
                  title: const Text("••• Tasks"),
                  trailing: IconButton(
                    tooltip: 'Add tasks',
                    onPressed: () {
                      addTask(context, response.id!);
                    },
                    icon: const Icon(Icons.add_task),
                  ),
                  onTap: () {
                    addTask(context, response.id!);
                  },
                ),
                for (final VehicleTask e
                    in response.vehicleTasks ?? <VehicleTask>[])
                  ListTile(
                    title: Text(e.task?.label ?? ''),
                    trailing: Text(e.createdAt.date),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addTask(BuildContext context, int vehicleID) async {
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
                            ?.where((TaskResponse e) => e.parentTaskID == null)
                            .toList() ??
                        []);
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

class TaskSelectionWidget extends StatefulWidget {
  final List<TaskResponse> tasks;
  const TaskSelectionWidget({super.key, required this.tasks});

  @override
  State<TaskSelectionWidget> createState() => _TaskSelectionWidgetState();
}

class _TaskSelectionWidgetState extends State<TaskSelectionWidget> {
  Set<int> selectedTasks = {};
  Set<int> selectedSubTasks = {};

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
