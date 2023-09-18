import 'package:flutter/material.dart';
import 'package:mna/swagger_generated_code/client_index.dart';
import 'package:swagger_dart_code_generator/swagger_dart_code_generator.dart';

class DevPage extends StatefulWidget {
  const DevPage({super.key});

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  late final Swagger swagger;
  @override
  void initState() {
    super.initState();
    swagger = Swagger.create();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dev page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              swagger.apiVehicleTotalGet().then((value) {
                print('count: ${value.body?.count}');
              });

              swagger.apiVehicleListGet().then((value) {
                print('count: ${value.body?.data}');
              });
            },
            child: const Text('get vehicles'),
          ),
        ],
      ),
    );
  }
}
