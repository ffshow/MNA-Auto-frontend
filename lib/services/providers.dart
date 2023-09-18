//CODE GENERATED, DO NOT EDIT
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mna/services/services.dart';

List getProviders(Dio dio) {
  return [
    RepositoryProvider(
      create: (BuildContext context) => PermissionService(dio),
    ),
    RepositoryProvider(
      create: (BuildContext context) => SparePartService(dio),
    ),
    RepositoryProvider(
      create: (BuildContext context) => OwnerService(dio),
    ),
    RepositoryProvider(
      create: (BuildContext context) => SupplierService(dio),
    ),
    RepositoryProvider(
      create: (BuildContext context) => VehicleService(dio),
    ),
    RepositoryProvider(
      create: (BuildContext context) => AccountService(dio),
    ),
    RepositoryProvider(
      create: (BuildContext context) => GarageService(dio),
    ),
  ];
}
