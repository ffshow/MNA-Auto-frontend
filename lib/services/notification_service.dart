import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mna/cubits/cubit/notification_cubit.dart';
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

  late final StreamController<ModelsSupplierModel> _onCreateSupplierStream =
      StreamController.broadcast();

  Stream get onCreateSupplier => _onCreateSupplierStream.stream;

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
        switch (topic) {
          case "Supplier.Create":
            _onCreateSupplierStream.sink.add(ModelsSupplierModel.fromJson(
                json['data'] as Map<String, dynamic>));
          case "Vehicle.Create":
            _onCreateVehicleStream.sink.add(1);
          default:
            description = '';
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
  }
}
