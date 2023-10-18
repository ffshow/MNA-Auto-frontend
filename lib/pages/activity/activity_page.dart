import 'package:chopper/src/response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/cubits/cubits.dart';
import 'package:mna/swagger_generated_code/client_index.dart';
import 'package:mna/swagger_generated_code/swagger.models.swagger.dart';
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
            success: (ListActivity activities) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: activities.data
                          ?.map((e) => Chip(
                                label: Text(e.label ?? ''),
                              ))
                          .toList() ??
                      [],
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
}
