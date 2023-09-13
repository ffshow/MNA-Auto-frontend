import 'package:flutter/material.dart';
import 'package:mna/utils/style.dart';

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
    return Padding(
      padding: kEdgeAll16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(error ?? "something went wrong"),
          ...[
            kH8,
            if (tryAgainFunc != null)
              ElevatedButton(
                onPressed: () {
                  tryAgainFunc?.call();
                },
                child: const Text('try again'),
              ),
          ]
        ],
      ),
    );
  }
}
