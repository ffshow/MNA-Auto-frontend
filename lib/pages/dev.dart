import 'package:chopper/chopper.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';
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
        child: Column(
          children: [
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
                if (vehicleCount != null) Text('Vehicles count $vehicleCount'),
              ],
            ),
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
            ElevatedButton(
              onPressed: _createVechile,
              child: const Text('Create random vechile'),
            ),
            ElevatedButton(
              onPressed: _createOwner,
              child: const Text('Create owner'),
            ),
          ],
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
}
