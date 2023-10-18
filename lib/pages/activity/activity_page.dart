import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/cubits/cubits.dart';
import 'package:mna/swagger_generated_code/swagger.models.swagger.dart';
import 'package:mna/widget/widget.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
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
}
