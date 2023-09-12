import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    super.key,
    this.error,
    this.tryAgainFunc,
  });

  final String? error;
  final void Function()? tryAgainFunc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(error ?? "something went wrong"),
        if (tryAgainFunc != null)
          ElevatedButton(
            onPressed: () {
              tryAgainFunc?.call();
            },
            child: const Text('try again'),
          ),
      ],
    );
  }
}
