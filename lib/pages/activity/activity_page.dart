import 'package:chopper/src/response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/cubits/cubits.dart';
import 'package:mna/swagger_generated_code/client_index.dart';
import 'package:mna/swagger_generated_code/swagger.models.swagger.dart';
import 'package:mna/utils/ok_dialog.dart';
import 'package:mna/widget/widget.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
        actions: [
          IconButton(
            tooltip: 'Create an activity',
            onPressed: () {
              _createActivity(context);
            },
            icon: const Icon(Icons.create),
          ),
        ],
      ),
      body: BlocBuilder<ActivityCubit, ActivityState>(
        builder: (BuildContext context, ActivityState state) {
          return state.when<Widget>(
            success: (activities) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: activities
                      .map((e) => Chip(
                            label: InkWell(
                              onTap: () {
                                _editActivity(context, e);
                              },
                              child: Text(e.label ?? ''),
                            ),
                            onDeleted: () {
                              _delete(context, e);
                            },
                          ))
                      .toList(),
                ),
              );
            },
            initial: () => const LoadingWidget(),
            failed: (error) => AppErrorWidget(error: error),
          );
        },
      ),
    );
  }

  void _createActivity(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Create an activity'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            OutlinedButton(
              onPressed: () {
                final String value = controller.text;
                if (value.trim().isNotEmpty) {
                  _create(context, value);
                }
                Navigator.pop(context);
              },
              child: const Text('Submit'),
            ),
          ],
          content: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Label',
            ),
            onFieldSubmitted: (value) {
              if (value.trim().isNotEmpty) {
                _create(context, value);
              }
            },
          ),
        );
      },
    );
  }

  void _editActivity(BuildContext context, ActivityResponse e) {
    final TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit ${e.label} activity'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            OutlinedButton(
              onPressed: () {
                final String value = controller.text;
                if (value.trim().isNotEmpty) {
                  _edit(context, e.id!, value);
                }
                Navigator.pop(context);
              },
              child: const Text('Submit'),
            ),
          ],
          content: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'New Label',
              hintText: e.label,
            ),
            onFieldSubmitted: (value) {
              if (value.trim().isNotEmpty) {
                _create(context, value);
              }
            },
          ),
        );
      },
    );
  }

  Future<void> _create(BuildContext context, String value) async {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final Response<ActivityResponse> res =
        await swagger.apiActivityPost(activityModel: Activity(label: value));
    if (!res.isSuccessful) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(res.body.toString())));
    }
  }

  Future<void> _edit(BuildContext context, int id, String value) async {
    final Swagger swagger = RepositoryProvider.of<Swagger>(context);
    final Response<ActivityResponse> res = await swagger.apiActivityIdPatch(
        id: id, activityModel: Activity(label: value));
    if (!res.isSuccessful) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(res.body.toString())));
    }
  }

  void _delete(BuildContext context, ActivityResponse e) {
    confirmationDialog(context, 'Are you sure?').then((confirmation) async {
      if (confirmation == Confirmation.ok) {
        final Swagger swagger = RepositoryProvider.of<Swagger>(context);
        final res = await swagger.apiActivityIdDelete(id: e.id);
        if (!res.isSuccessful) {
          ScaffoldMessenger.maybeOf(context)
              ?.showSnackBar(SnackBar(content: Text(res.body.toString())));
        }
      }
    });
  }
}
