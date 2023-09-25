import 'package:chopper/chopper.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/cubits/notification/notification_cubit.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
import 'package:mna/utils/style.dart';
import 'package:mna/widget/widget.dart';

class DevPage extends StatefulWidget {
  const DevPage({super.key});

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  late final Swagger swagger;
  int? vehicleCount;
  final Faker faker = Faker();
  final TextEditingController _seedCtrl = TextEditingController();

  @override
  void dispose() {
    _seedCtrl.dispose();
    super.dispose();
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<NotificationCubit>().add(
                        NotificationModel(
                          title: 'mock',
                          description: 'description',
                          type: Type.warning,
                          time: DateTime.now(),
                        ),
                      );
                },
                child: const Text('show notification'),
              ),
              kH8,
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      swagger.apiVehicleTotalGet().then((value) {
                        vehicleCount = value.body?.count;
                        setState(() {});
                      });
                    },
                    child: const Text('get vehicles count'),
                  ),
                  if (vehicleCount != null)
                    Text('Vehicles count $vehicleCount'),
                ],
              ),
              kH8,
              FutureBuilder(
                future: swagger.apiVehicleListGet(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<Response<ModelsListVehicleModel>> snapshot,
                ) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data?.body?.data?.length.toString() ?? '0',
                    );
                  }
                  if (snapshot.hasError) {
                    return Text('error: ${snapshot.error}');
                  }
                  return const LoadingWidget();
                },
              ),
              kH8,
              ElevatedButton(
                onPressed: _createVechile,
                child: const Text('Create random vechile'),
              ),
              kH8,
              ElevatedButton(
                onPressed: _createOwner,
                child: const Text('Create owner'),
              ),
              kH8,
              TextFormField(
                controller: _seedCtrl,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onFieldSubmitted: (_) => _seedVehicles(),
                onEditingComplete: () => _seedVehicles(),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'seed vehicles',
                  hintText: 'max value is 100',
                  suffix: IconButton(
                    onPressed: () => _seedVehicles(),
                    icon: const Icon(Icons.sentiment_dissatisfied),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _createVechile() async {
    final String date = faker.date
        .dateTime(minYear: 1999, maxYear: 2022)
        .toUtc()
        .toIso8601String();
    final v = ModelsCreateVehicleModel(
      chrono: faker.vehicle.make(),
      collectionDate: date,
      deliveryDate: date,
      firstCirculation: date,
      soldAt: date,
      commercialName: faker.vehicle.model(),
      currentStatus: 'toGetBack',
      expertise: faker.randomGenerator.boolean(),
      mileage: faker.randomGenerator.integer(1000, min: 20),
      note: faker.lorem.sentence(),
      ownerId: '65005460b40777ab605fa163',
      procedureVe: faker.randomGenerator.boolean(),
      registration: faker.vehicle.yearMakeModel(),
      serialNumber: faker.vehicle.vin(),
    );
    swagger.apiVehiclePost(vehicle: v);
  }

  void _createOwner() {
    final ModelsCreateOwnerModel o = ModelsCreateOwnerModel(
      address: faker.address.neighborhood(),
      email: '${faker.person.firstName()}@${faker.person.lastName()}.com',
      phone: faker.phoneNumber.de(),
      photo: '',
      postalCode: faker.address.zipCode(),
    );
    swagger.apiOwnerPost(owner: o);
  }

  void _seedVehicles() {
    final int? count = int.tryParse(_seedCtrl.text);
    if (count != null) {
      if (count > 100) {
        return;
      }
      swagger.apiVehiclesSeedPost(count: _seedCtrl.text);
      _seedCtrl.clear();
    }
  }
}
