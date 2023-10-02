import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/cubits/task/task_cubit.dart';
import 'package:mna/pages/vehicle_detail/cubit/vehicle_details_cubit.dart';
import 'package:mna/swagger_generated_code/swagger.models.swagger.dart';
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
          loaded: (ModelsVehicleModelResponse response) {
            return _VehicleDetailsWidget(response: response);
          },
          failed: (error) {
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
  final ModelsVehicleModelResponse response;

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
                        leading: const Text('Created at'),
                        title: Text(response.createdAt.dateTime),
                      ),
                      ListTile(
                        leading: const Text('Updated at'),
                        title: Text(response.updatedAt.dateTime),
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
                        data: response.id!,
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
                ),
                ...?response.vehicleTask
                    ?.map((e) => ListTile(
                          title: Text(e.task?.label ?? ''),
                        ))
                    .toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void addTask(BuildContext context, String vehicleID) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            const ListTile(title: Text('Add tasks')),
            BlocBuilder<TaskCubit, TaskState>(
              builder: (context, state) {
                return state.when(
                  loaded: (ModelsListTaskModel response) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: response.data?.length,
                      itemBuilder: (context, index) {
                        final ModelsTaskModelResponse item =
                            response.data![index];
                        return ListTile(
                          leading: Checkbox.adaptive(
                            value: false,
                            onChanged: (value) {},
                          ),
                          title: Text(item.label ?? ''),
                        );
                      },
                    );
                  },
                  initial: () {
                    return const LoadingWidget();
                  },
                  failed: (error) {
                    return Text(error);
                  },
                );
              },
            )
          ],
        );
      },
    );
  }
}
