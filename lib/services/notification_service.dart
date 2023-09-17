import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const Duration autoCloseDuration = Duration(seconds: 5);

class NotificationService {
  final BuildContext context;

  NotificationService(this.context);

  String topic = '';
  String title = '';
  String description = '';

  void init() {
    final Uri wsUrl = Uri.parse('ws://localhost:5000/ws');
    WebSocketChannel channel = WebSocketChannel.connect(wsUrl);

    channel.stream.listen(
      (message) {
        final Map<String, Object?> json =
            jsonDecode(utf8.decode(message)) as Map<String, Object?>;
        debugPrint('ws message: $json');
        topic = json['topic'] as String? ?? '';
        switch (topic) {
          case 'Garage.Create':
            title = (json['data'] as Map<String, dynamic>)['label'] as String;
            description = 'New garage has been created';
            break;
          default:
            title = 'Notification';
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
