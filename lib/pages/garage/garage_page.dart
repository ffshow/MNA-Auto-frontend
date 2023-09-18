import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/models/garage_model/garage_model.dart';
import 'package:mna/pages/garage/state/garage_cubit.dart';
import 'package:mna/services/services.dart';
import 'package:mna/utils/extensions.dart';
import 'package:mna/utils/style.dart';
import 'package:mna/widget/widget.dart';

import 'create/create_garage_widget.dart';

class GaragePage extends StatelessWidget {
  const GaragePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GarageService garageService =
        RepositoryProvider.of<GarageService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage page'),
        actions: [
          IconButton(
            tooltip: 'Import data',
            onPressed: () {
              ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                const SnackBar(content: Text('not implemented yet!')),
              );
            },
            icon: const Icon(Icons.import_contacts),
          ),
          IconButton(
            onPressed: () {
              GarageService garageService =
                  RepositoryProvider.of<GarageService>(context);
              final DateTime now = DateTime.now();
              final g = GarageModel(
                id: now.millisecondsSinceEpoch.toString(),
                label: 'garage ${now.microsecond}',
                created_at: now,
                updated_at: now,
              );
              garageService.onCreate(g);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: kEdgeAll8,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const CreateGarageWidget(),
              kH16,
              GarageListWidget(
                source: GarageDataTableSource(garageService),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GarageListWidget extends StatelessWidget {
  final GarageDataTableSource source;
  const GarageListWidget({super.key, required this.source});

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      columns: const [
        DataColumn(label: Text('Label')),
        DataColumn(label: Text('Created at')),
        DataColumn(label: Text('Updated at')),
        DataColumn(label: Text('Actions')),
      ],
      source: source,
      onPageChanged: (value) {
        print(value);
      },
    );
  }
}

class GarageDataTableSource extends DataTableSource {
  final GarageService garageService;
  GarageDataTableSource(this.garageService) {
    garageService
        .getApiGarageList(
      sort_by: 'created_at',
      descending: true,
    )
        .then((garages) {
      this.garages = garages;
      notifyListeners();
      garageService.onCreateGarage.listen(
        (GarageModel g) {
          debugPrint('garage created ${g.id}');
          garages.insert(0, g);
          notifyListeners();
        },
      );
      garageService.onUpdateGarage.listen(
        (GarageModel g) {
          debugPrint('garage updated ${g.id}');
          final int index = garages.indexWhere((e) => e.id == g.id);
          if (index > -1) {
            garages[index] = g;
            notifyListeners();
          }
        },
      );
      garageService.onDeleteGarage.listen(
        (GarageModel g) {
          debugPrint('garage deleted ${g.id}');
          garages.removeWhere((e) => e.id == g.id);
          notifyListeners();
        },
      );
    });
  }

  List<GarageModel> garages = [];

  @override
  DataRow? getRow(int index) {
    if (index >= garages.length) {
      return null;
    }
    final GarageModel item = garages[index];
    return DataRow(
      cells: [
        DataCell(Text(item.label ?? '')),
        DataCell(
          Tooltip(
            message: item.created_at.dateTime,
            child: Text(item.created_at?.date ?? ''),
          ),
        ),
        DataCell(
          Tooltip(
            message: item.updated_at.dateTime,
            child: Text(item.updated_at?.date ?? ''),
          ),
        ),
        DataCell(Row(
          children: [
            IconButton(
              onPressed: () {
                garageService.onDelete(item);
              },
              icon: const Icon(Icons.delete),
            ),
            IconButton(
              onPressed: () {
                final i = item.copyWith(
                  label: '${item.label} updated',
                  updated_at: DateTime.now(),
                );
                garageService.onUpdate(i);
              },
              icon: const Icon(Icons.edit),
            ),
          ],
        )),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => garages.length;

  @override
  int get selectedRowCount => 0;
}
