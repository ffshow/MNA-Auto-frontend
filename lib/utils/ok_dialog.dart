import 'package:flutter/material.dart';

enum Confirmation {
  cancel,
  ok,
}

Future<Confirmation> confirmationDialog(
    BuildContext context, String title) async {
  final res = await showDialog<Confirmation>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, Confirmation.cancel);
            },
            child: const Text('Cancel'),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context, Confirmation.ok);
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
  return res ?? Confirmation.cancel;
}
