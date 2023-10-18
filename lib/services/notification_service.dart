import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mna/cubits/notification/notification_cubit.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class NotificationService {
  final NotificationCubit _notificationCubit;
  NotificationService(this._notificationCubit);

  String topic = '';
  String title = '';
  String description = '';
  int listeners = 0;

  late final StreamController<int> _onCreateVehicleStream =
      StreamController.broadcast();
  Stream get onCreateVehicle => _onCreateVehicleStream.stream;

  late final StreamController<int> _onCreateSupplierStream =
      StreamController.broadcast();

  Stream get onCreateSupplier => _onCreateSupplierStream.stream;

  late final StreamController<int> _onCreateTaskStream =
      StreamController.broadcast();
  Stream get onCreateTask => _onCreateTaskStream.stream;

  late final StreamController<int> _onCreateGarageStream =
      StreamController.broadcast();
  Stream get onCreateGarage => _onCreateGarageStream.stream;

  late final StreamController<List<VehicleTask>> _onCreateVehicleTasksStream =
      StreamController.broadcast();
  Stream<List<VehicleTask>> get onCreateVehicleTasks =>
      _onCreateVehicleTasksStream.stream;

  late final StreamController<int> _onUpdateVehicleTaskStream =
      StreamController.broadcast();
  Stream get onUpdateVehicleTask => _onUpdateVehicleTaskStream.stream;

  late final StreamController<ActivityResponse> _onCreateActivityStream =
      StreamController.broadcast();
  Stream<ActivityResponse> get onCreateActivity =>
      _onCreateActivityStream.stream;

  late final StreamController<ActivityResponse> _onUpdateActivityStream =
      StreamController.broadcast();
  Stream<ActivityResponse> get onUpdateActivity =>
      _onUpdateActivityStream.stream;

  late final StreamController<int> _onDeleteActivityStream =
      StreamController.broadcast();
  Stream<int> get onDeleteActivity => _onDeleteActivityStream.stream;

  void init() {
    final Uri wsUrl = Uri.parse('ws://localhost:5000/ws');
    WebSocketChannel channel = WebSocketChannel.connect(wsUrl);

    channel.stream.listen(
      (dynamic message) {
        final Map<String, Object?> json =
            jsonDecode(utf8.decode(message)) as Map<String, Object?>;
        debugPrint('ws message: $json');
        topic = json['topic'] as String? ?? '';
        title = '$topic Notification';
        description = '';
        switch (topic) {
          case "Supplier.Create":
            _onCreateSupplierStream.sink.add(1);
          case "Supplier.CreateMany":
            _onCreateSupplierStream.sink.add(1);
          case "Vehicle.Create":
            _onCreateVehicleStream.sink.add(1);
          case "Vehicle.CreateMany":
            _onCreateVehicleStream.sink.add(1);
          case "Task.Create":
            _onCreateTaskStream.sink.add(1);
          case "Task.CreateMany":
            _onCreateTaskStream.sink.add(1);
          case "Garage.Create":
            _onCreateGarageStream.sink.add(1);
          case "Garage.CreateMany":
            _onCreateGarageStream.sink.add(1);
          case "VehicleTask.Create":
          case "VehicleTask.CreateMany":
            final List<VehicleTask> tasks = (json['data'] as List)
                .map((e) => VehicleTask.fromJson(e))
                .toList();
            _onCreateVehicleTasksStream.sink.add(tasks);
          case "VehicleTask.Update":
            _onUpdateVehicleTaskStream.sink.add(1);
          case "Activity.Create":
            final data =
                ActivityResponse.fromJson(json['data'] as Map<String, dynamic>);
            _onCreateActivityStream.sink.add(data);
          case "Activity.Update":
            final data =
                ActivityResponse.fromJson(json['data'] as Map<String, dynamic>);
            _onUpdateActivityStream.sink.add(data);
          case "Activity.Delete":
            final id = json['data'] as int?;
            if (id != null) {
              _onDeleteActivityStream.sink.add(id);
            }
          default:
        }
        _notify();
      },
      onDone: () {
        //TODO: reconnect or do something
        debugPrint('ws closed');
      },
      onError: (err) {
        //TODO: handle error
        debugPrint('ws error: $err');
        title = 'Notification System';
        description = '';
        _notify(type: Type.error);
      },
    );
  }

  void _notify({Type? type}) {
    _notificationCubit.add(NotificationModel(
      title: title,
      description: description,
      type: type ?? Type.info,
      time: DateTime.now(),
    ));
    title = '';
    description = '';
  }
}
