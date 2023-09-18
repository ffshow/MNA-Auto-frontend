import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mna/models/models.dart';
import 'package:mna/services/services.dart';
import 'package:toastification/toastification.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const Duration autoCloseDuration = Duration(seconds: 5);

class NotificationService {
  final BuildContext context;
  final GarageService _garageService;
  final VehicleService _vehicleService;
  NotificationService(
    this.context,
    this._garageService,
    this._vehicleService,
  );

  String topic = '';
  String title = '';
  String description = '';

  void init() {
    final Uri wsUrl = Uri.parse('ws://localhost:5000/ws');
    WebSocketChannel channel = WebSocketChannel.connect(wsUrl);

    channel.stream.listen(
      (dynamic message) {
        final Map<String, Object?> json =
            jsonDecode(utf8.decode(message)) as Map<String, Object?>;
        debugPrint('ws message: $json');
        topic = json['topic'] as String? ?? '';
        switch (topic) {
          case 'Garage.Create':
            final GarageModel model = GarageModel.fromJson(
              json['data'] as Map<String, Object?>,
            );
            title = model.label ?? 'Notification';
            description = 'New garage has been created';
            _garageService.onCreate(model);
            break;
          case 'Garage.Update':
            final GarageModel model = GarageModel.fromJson(
              json['data'] as Map<String, Object?>,
            );
            title = model.label ?? 'Notification';
            description = 'Garage ${model.label} has bee updated';
            _garageService.onUpdate(model);
            break;
          case 'Garage.Delete':
            final GarageModel model = GarageModel.fromJson(
              json['data'] as Map<String, Object?>,
            );
            title = model.label ?? 'Notification';
            description = 'Garage ${model.label} has been deleted';
            _garageService.onDelete(model);
            break;
          case 'Vehicle.Create':
            final VehicleModel model = VehicleModel.fromJson(
              json['data'] as Map<String, Object?>,
            );
            title = 'Vehicle created';
            description = 'A new vehicle has been created';
            _vehicleService.onCreate(model);
            break;
          case 'Vehicle.Update':
            final VehicleModel model = VehicleModel.fromJson(
              json['data'] as Map<String, Object?>,
            );
            title = 'Vehicle updated';
            description = 'A vehicle has been updated';
            _vehicleService.onUpdate(model);
            break;
          case 'Vehicle.Delete':
            final VehicleModel model = VehicleModel.fromJson(
              json['data'] as Map<String, Object?>,
            );
            title = 'Vehicle deleted';
            description = 'A vehicle has been deleted';
            _vehicleService.onDelete(model);
            break;
          default:
            title = '$topic Notification';
            description = '';
        }
        _notify();
      },
      onDone: () {
        debugPrint('ws closed');
        toastification.showError(
          context: context,
          title: 'Notification System',
          description: '',
          autoCloseDuration: const Duration(seconds: 5),
        );
      },
      onError: (err) {
        debugPrint('ws error: $err');
        toastification.showError(
          context: context,
          title: 'Notification System',
          description: '',
          autoCloseDuration: const Duration(seconds: 5),
        );
      },
    );
  }

  void _notify() {
    toastification.showSuccess(
      context: context,
      title: title,
      description: description,
      autoCloseDuration: autoCloseDuration,
      closeOnClick: true,
    );
  }
}
