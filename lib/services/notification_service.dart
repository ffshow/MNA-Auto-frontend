import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mna/cubits/notification/notification_cubit.dart';
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
        switch (topic.split('.').first) {
          case "Supplier":
            _onCreateSupplierStream.sink.add(1);
          case "Vehicle":
            _onCreateVehicleStream.sink.add(1);
          case "Task":
            _onCreateTaskStream.sink.add(1);
          case "Garage":
            _onCreateGarageStream.sink.add(1);
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
