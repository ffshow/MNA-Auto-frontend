// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart' as chopper;

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://localhost:3000/'));
    return _$Swagger(newClient);
  }

  ///Show the status of server.
  Future<chopper.Response<Object>> get() {
    return _get();
  }

  ///Show the status of server.
  @Get(path: '/')
  Future<chopper.Response<Object>> _get();

  ///Create a new account
  ///@param account Register account
  Future<chopper.Response<ModelsAccountModel>> apiAccountPost(
      {required ModelsCreateAccountModel? account}) {
    generatedMapping.putIfAbsent(ModelsCreateAccountModel,
        () => ModelsCreateAccountModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsAccountModel, () => ModelsAccountModel.fromJsonFactory);

    return _apiAccountPost(account: account);
  }

  ///Create a new account
  ///@param account Register account
  @Post(path: '/api/account')
  Future<chopper.Response<ModelsAccountModel>> _apiAccountPost(
      {@Body() required ModelsCreateAccountModel? account});

  ///Get account by ID
  ///@param id Account ID
  Future<chopper.Response<ModelsAccountModel>> apiAccountIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsAccountModel, () => ModelsAccountModel.fromJsonFactory);

    return _apiAccountIdGet(id: id);
  }

  ///Get account by ID
  ///@param id Account ID
  @Get(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModel>> _apiAccountIdGet(
      {@Path('id') required String? id});

  ///Update a account
  ///@param id Account ID
  ///@param account Register account
  Future<chopper.Response<ModelsAccountModel>> apiAccountIdPut({
    required String? id,
    required ModelsAccountModel? account,
  }) {
    generatedMapping.putIfAbsent(
        ModelsAccountModel, () => ModelsAccountModel.fromJsonFactory);

    return _apiAccountIdPut(id: id, account: account);
  }

  ///Update a account
  ///@param id Account ID
  ///@param account Register account
  @Put(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModel>> _apiAccountIdPut({
    @Path('id') required String? id,
    @Body() required ModelsAccountModel? account,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiAccountTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiAccountTotalGet();
  }

  ///Total records
  @Get(path: '/api/account/total')
  Future<chopper.Response<ModelsTotalCount>> _apiAccountTotalGet();

  ///Create many account
  ///@param account Register account
  Future<chopper.Response<List<dynamic>>> apiAccountImportPost(
      {required List<ModelsAccountModel>? account}) {
    return _apiAccountImportPost(account: account);
  }

  ///Create many account
  ///@param account Register account
  @Post(path: '/api/account_import')
  Future<chopper.Response<List<dynamic>>> _apiAccountImportPost(
      {@Body() required List<ModelsAccountModel>? account});

  ///List account
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListAccountModel>> apiAccountListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListAccountModel, () => ModelsListAccountModel.fromJsonFactory);

    return _apiAccountListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List account
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/account_list')
  Future<chopper.Response<ModelsListAccountModel>> _apiAccountListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new garage
  ///@param garage Register garage
  Future<chopper.Response<ModelsGarageModel>> apiGaragePost(
      {required ModelsCreateGarageModel? garage}) {
    generatedMapping.putIfAbsent(
        ModelsCreateGarageModel, () => ModelsCreateGarageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsGarageModel, () => ModelsGarageModel.fromJsonFactory);

    return _apiGaragePost(garage: garage);
  }

  ///Create a new garage
  ///@param garage Register garage
  @Post(path: '/api/garage')
  Future<chopper.Response<ModelsGarageModel>> _apiGaragePost(
      {@Body() required ModelsCreateGarageModel? garage});

  ///Get garage by ID
  ///@param id Garage ID
  Future<chopper.Response<ModelsGarageModel>> apiGarageIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsGarageModel, () => ModelsGarageModel.fromJsonFactory);

    return _apiGarageIdGet(id: id);
  }

  ///Get garage by ID
  ///@param id Garage ID
  @Get(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModel>> _apiGarageIdGet(
      {@Path('id') required String? id});

  ///Update a garage
  ///@param id Garage ID
  ///@param garage Register garage
  Future<chopper.Response<ModelsGarageModel>> apiGarageIdPut({
    required String? id,
    required ModelsGarageModel? garage,
  }) {
    generatedMapping.putIfAbsent(
        ModelsGarageModel, () => ModelsGarageModel.fromJsonFactory);

    return _apiGarageIdPut(id: id, garage: garage);
  }

  ///Update a garage
  ///@param id Garage ID
  ///@param garage Register garage
  @Put(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModel>> _apiGarageIdPut({
    @Path('id') required String? id,
    @Body() required ModelsGarageModel? garage,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiGarageTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiGarageTotalGet();
  }

  ///Total records
  @Get(path: '/api/garage/total')
  Future<chopper.Response<ModelsTotalCount>> _apiGarageTotalGet();

  ///Create many garage
  ///@param garage Register garage
  Future<chopper.Response<List<dynamic>>> apiGarageImportPost(
      {required List<ModelsGarageModel>? garage}) {
    return _apiGarageImportPost(garage: garage);
  }

  ///Create many garage
  ///@param garage Register garage
  @Post(path: '/api/garage_import')
  Future<chopper.Response<List<dynamic>>> _apiGarageImportPost(
      {@Body() required List<ModelsGarageModel>? garage});

  ///List garage
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListGarageModel>> apiGarageListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListGarageModel, () => ModelsListGarageModel.fromJsonFactory);

    return _apiGarageListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List garage
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/garage_list')
  Future<chopper.Response<ModelsListGarageModel>> _apiGarageListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new owner
  ///@param owner Register owner
  Future<chopper.Response<ModelsOwnerModel>> apiOwnerPost(
      {required ModelsCreateOwnerModel? owner}) {
    generatedMapping.putIfAbsent(
        ModelsCreateOwnerModel, () => ModelsCreateOwnerModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsOwnerModel, () => ModelsOwnerModel.fromJsonFactory);

    return _apiOwnerPost(owner: owner);
  }

  ///Create a new owner
  ///@param owner Register owner
  @Post(path: '/api/owner')
  Future<chopper.Response<ModelsOwnerModel>> _apiOwnerPost(
      {@Body() required ModelsCreateOwnerModel? owner});

  ///Get owner by ID
  ///@param id Owner ID
  Future<chopper.Response<ModelsOwnerModel>> apiOwnerIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsOwnerModel, () => ModelsOwnerModel.fromJsonFactory);

    return _apiOwnerIdGet(id: id);
  }

  ///Get owner by ID
  ///@param id Owner ID
  @Get(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModel>> _apiOwnerIdGet(
      {@Path('id') required String? id});

  ///Update a owner
  ///@param id Owner ID
  ///@param owner Register owner
  Future<chopper.Response<ModelsOwnerModel>> apiOwnerIdPut({
    required String? id,
    required ModelsOwnerModel? owner,
  }) {
    generatedMapping.putIfAbsent(
        ModelsOwnerModel, () => ModelsOwnerModel.fromJsonFactory);

    return _apiOwnerIdPut(id: id, owner: owner);
  }

  ///Update a owner
  ///@param id Owner ID
  ///@param owner Register owner
  @Put(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModel>> _apiOwnerIdPut({
    @Path('id') required String? id,
    @Body() required ModelsOwnerModel? owner,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiOwnerTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiOwnerTotalGet();
  }

  ///Total records
  @Get(path: '/api/owner/total')
  Future<chopper.Response<ModelsTotalCount>> _apiOwnerTotalGet();

  ///Create many owner
  ///@param owner Register owner
  Future<chopper.Response<List<dynamic>>> apiOwnerImportPost(
      {required List<ModelsOwnerModel>? owner}) {
    return _apiOwnerImportPost(owner: owner);
  }

  ///Create many owner
  ///@param owner Register owner
  @Post(path: '/api/owner_import')
  Future<chopper.Response<List<dynamic>>> _apiOwnerImportPost(
      {@Body() required List<ModelsOwnerModel>? owner});

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListOwnerModel>> apiOwnerListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListOwnerModel, () => ModelsListOwnerModel.fromJsonFactory);

    return _apiOwnerListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/owner_list')
  Future<chopper.Response<ModelsListOwnerModel>> _apiOwnerListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new permission
  ///@param permission Register permission
  Future<chopper.Response<ModelsPermissionModel>> apiPermissionPost(
      {required ModelsCreatePermissionModel? permission}) {
    generatedMapping.putIfAbsent(ModelsCreatePermissionModel,
        () => ModelsCreatePermissionModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsPermissionModel, () => ModelsPermissionModel.fromJsonFactory);

    return _apiPermissionPost(permission: permission);
  }

  ///Create a new permission
  ///@param permission Register permission
  @Post(path: '/api/permission')
  Future<chopper.Response<ModelsPermissionModel>> _apiPermissionPost(
      {@Body() required ModelsCreatePermissionModel? permission});

  ///Get permission by ID
  ///@param id Permission ID
  Future<chopper.Response<ModelsPermissionModel>> apiPermissionIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsPermissionModel, () => ModelsPermissionModel.fromJsonFactory);

    return _apiPermissionIdGet(id: id);
  }

  ///Get permission by ID
  ///@param id Permission ID
  @Get(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModel>> _apiPermissionIdGet(
      {@Path('id') required String? id});

  ///Update a permission
  ///@param id Permission ID
  ///@param permission Register permission
  Future<chopper.Response<ModelsPermissionModel>> apiPermissionIdPut({
    required String? id,
    required ModelsPermissionModel? permission,
  }) {
    generatedMapping.putIfAbsent(
        ModelsPermissionModel, () => ModelsPermissionModel.fromJsonFactory);

    return _apiPermissionIdPut(id: id, permission: permission);
  }

  ///Update a permission
  ///@param id Permission ID
  ///@param permission Register permission
  @Put(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModel>> _apiPermissionIdPut({
    @Path('id') required String? id,
    @Body() required ModelsPermissionModel? permission,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiPermissionTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiPermissionTotalGet();
  }

  ///Total records
  @Get(path: '/api/permission/total')
  Future<chopper.Response<ModelsTotalCount>> _apiPermissionTotalGet();

  ///Create many permission
  ///@param permission Register permission
  Future<chopper.Response<List<dynamic>>> apiPermissionImportPost(
      {required List<ModelsPermissionModel>? permission}) {
    return _apiPermissionImportPost(permission: permission);
  }

  ///Create many permission
  ///@param permission Register permission
  @Post(path: '/api/permission_import')
  Future<chopper.Response<List<dynamic>>> _apiPermissionImportPost(
      {@Body() required List<ModelsPermissionModel>? permission});

  ///List permission
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListPermissionModel>> apiPermissionListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(ModelsListPermissionModel,
        () => ModelsListPermissionModel.fromJsonFactory);

    return _apiPermissionListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List permission
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/permission_list')
  Future<chopper.Response<ModelsListPermissionModel>> _apiPermissionListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new spare_part
  ///@param spare_part Register spare_part
  Future<chopper.Response<ModelsSparePartModel>> apiSparePartPost(
      {required ModelsCreateSparePartModel? sparePart}) {
    generatedMapping.putIfAbsent(ModelsCreateSparePartModel,
        () => ModelsCreateSparePartModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsSparePartModel, () => ModelsSparePartModel.fromJsonFactory);

    return _apiSparePartPost(sparePart: sparePart);
  }

  ///Create a new spare_part
  ///@param spare_part Register spare_part
  @Post(path: '/api/spare_part')
  Future<chopper.Response<ModelsSparePartModel>> _apiSparePartPost(
      {@Body() required ModelsCreateSparePartModel? sparePart});

  ///Get spare_part by ID
  ///@param id SparePart ID
  Future<chopper.Response<ModelsSparePartModel>> apiSparePartIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsSparePartModel, () => ModelsSparePartModel.fromJsonFactory);

    return _apiSparePartIdGet(id: id);
  }

  ///Get spare_part by ID
  ///@param id SparePart ID
  @Get(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModel>> _apiSparePartIdGet(
      {@Path('id') required String? id});

  ///Update a spare_part
  ///@param id SparePart ID
  ///@param spare_part Register spare_part
  Future<chopper.Response<ModelsSparePartModel>> apiSparePartIdPut({
    required String? id,
    required ModelsSparePartModel? sparePart,
  }) {
    generatedMapping.putIfAbsent(
        ModelsSparePartModel, () => ModelsSparePartModel.fromJsonFactory);

    return _apiSparePartIdPut(id: id, sparePart: sparePart);
  }

  ///Update a spare_part
  ///@param id SparePart ID
  ///@param spare_part Register spare_part
  @Put(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModel>> _apiSparePartIdPut({
    @Path('id') required String? id,
    @Body() required ModelsSparePartModel? sparePart,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiSparePartTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiSparePartTotalGet();
  }

  ///Total records
  @Get(path: '/api/spare_part/total')
  Future<chopper.Response<ModelsTotalCount>> _apiSparePartTotalGet();

  ///Create many spare_part
  ///@param spare_part Register spare_part
  Future<chopper.Response<List<dynamic>>> apiSparePartImportPost(
      {required List<ModelsSparePartModel>? sparePart}) {
    return _apiSparePartImportPost(sparePart: sparePart);
  }

  ///Create many spare_part
  ///@param spare_part Register spare_part
  @Post(path: '/api/spare_part_import')
  Future<chopper.Response<List<dynamic>>> _apiSparePartImportPost(
      {@Body() required List<ModelsSparePartModel>? sparePart});

  ///List spare_part
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListSparePartModel>> apiSparePartListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(ModelsListSparePartModel,
        () => ModelsListSparePartModel.fromJsonFactory);

    return _apiSparePartListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List spare_part
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/spare_part_list')
  Future<chopper.Response<ModelsListSparePartModel>> _apiSparePartListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new supplier
  ///@param supplier Register supplier
  Future<chopper.Response<ModelsSupplierModel>> apiSupplierPost(
      {required ModelsCreateSupplierModel? supplier}) {
    generatedMapping.putIfAbsent(ModelsCreateSupplierModel,
        () => ModelsCreateSupplierModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsSupplierModel, () => ModelsSupplierModel.fromJsonFactory);

    return _apiSupplierPost(supplier: supplier);
  }

  ///Create a new supplier
  ///@param supplier Register supplier
  @Post(path: '/api/supplier')
  Future<chopper.Response<ModelsSupplierModel>> _apiSupplierPost(
      {@Body() required ModelsCreateSupplierModel? supplier});

  ///Get supplier by ID
  ///@param id Supplier ID
  Future<chopper.Response<ModelsSupplierModel>> apiSupplierIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsSupplierModel, () => ModelsSupplierModel.fromJsonFactory);

    return _apiSupplierIdGet(id: id);
  }

  ///Get supplier by ID
  ///@param id Supplier ID
  @Get(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModel>> _apiSupplierIdGet(
      {@Path('id') required String? id});

  ///Update a supplier
  ///@param id Supplier ID
  ///@param supplier Register supplier
  Future<chopper.Response<ModelsSupplierModel>> apiSupplierIdPut({
    required String? id,
    required ModelsSupplierModel? supplier,
  }) {
    generatedMapping.putIfAbsent(
        ModelsSupplierModel, () => ModelsSupplierModel.fromJsonFactory);

    return _apiSupplierIdPut(id: id, supplier: supplier);
  }

  ///Update a supplier
  ///@param id Supplier ID
  ///@param supplier Register supplier
  @Put(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModel>> _apiSupplierIdPut({
    @Path('id') required String? id,
    @Body() required ModelsSupplierModel? supplier,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiSupplierTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiSupplierTotalGet();
  }

  ///Total records
  @Get(path: '/api/supplier/total')
  Future<chopper.Response<ModelsTotalCount>> _apiSupplierTotalGet();

  ///Create many supplier
  ///@param supplier Register supplier
  Future<chopper.Response<List<dynamic>>> apiSupplierImportPost(
      {required List<ModelsSupplierModel>? supplier}) {
    return _apiSupplierImportPost(supplier: supplier);
  }

  ///Create many supplier
  ///@param supplier Register supplier
  @Post(path: '/api/supplier_import')
  Future<chopper.Response<List<dynamic>>> _apiSupplierImportPost(
      {@Body() required List<ModelsSupplierModel>? supplier});

  ///List supplier
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListSupplierModel>> apiSupplierListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListSupplierModel, () => ModelsListSupplierModel.fromJsonFactory);

    return _apiSupplierListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List supplier
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/supplier_list')
  Future<chopper.Response<ModelsListSupplierModel>> _apiSupplierListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new vehicle
  ///@param vehicle Register vehicle
  Future<chopper.Response<ModelsVehicleModel>> apiVehiclePost(
      {required ModelsCreateVehicleModel? vehicle}) {
    generatedMapping.putIfAbsent(ModelsCreateVehicleModel,
        () => ModelsCreateVehicleModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsVehicleModel, () => ModelsVehicleModel.fromJsonFactory);

    return _apiVehiclePost(vehicle: vehicle);
  }

  ///Create a new vehicle
  ///@param vehicle Register vehicle
  @Post(path: '/api/vehicle')
  Future<chopper.Response<ModelsVehicleModel>> _apiVehiclePost(
      {@Body() required ModelsCreateVehicleModel? vehicle});

  ///Get vehicle by ID
  ///@param id Vehicle ID
  Future<chopper.Response<ModelsVehicleModel>> apiVehicleIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsVehicleModel, () => ModelsVehicleModel.fromJsonFactory);

    return _apiVehicleIdGet(id: id);
  }

  ///Get vehicle by ID
  ///@param id Vehicle ID
  @Get(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModel>> _apiVehicleIdGet(
      {@Path('id') required String? id});

  ///Update a vehicle
  ///@param id Vehicle ID
  ///@param vehicle Register vehicle
  Future<chopper.Response<ModelsVehicleModel>> apiVehicleIdPut({
    required String? id,
    required ModelsVehicleModel? vehicle,
  }) {
    generatedMapping.putIfAbsent(
        ModelsVehicleModel, () => ModelsVehicleModel.fromJsonFactory);

    return _apiVehicleIdPut(id: id, vehicle: vehicle);
  }

  ///Update a vehicle
  ///@param id Vehicle ID
  ///@param vehicle Register vehicle
  @Put(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModel>> _apiVehicleIdPut({
    @Path('id') required String? id,
    @Body() required ModelsVehicleModel? vehicle,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiVehicleTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiVehicleTotalGet();
  }

  ///Total records
  @Get(path: '/api/vehicle/total')
  Future<chopper.Response<ModelsTotalCount>> _apiVehicleTotalGet();

  ///Create many vehicle
  ///@param vehicle Register vehicle
  Future<chopper.Response<List<dynamic>>> apiVehicleImportPost(
      {required List<ModelsVehicleModel>? vehicle}) {
    return _apiVehicleImportPost(vehicle: vehicle);
  }

  ///Create many vehicle
  ///@param vehicle Register vehicle
  @Post(path: '/api/vehicle_import')
  Future<chopper.Response<List<dynamic>>> _apiVehicleImportPost(
      {@Body() required List<ModelsVehicleModel>? vehicle});

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListVehicleModel>> apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListVehicleModel, () => ModelsListVehicleModel.fromJsonFactory);

    return _apiVehicleListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/vehicle_list')
  Future<chopper.Response<ModelsListVehicleModel>> _apiVehicleListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Seed vehicles
  ///@param count count
  Future<chopper.Response<Object>> apiVehiclesSeedPost(
      {required String? count}) {
    return _apiVehiclesSeedPost(count: count);
  }

  ///Seed vehicles
  ///@param count count
  @Post(
    path: '/api/vehicles_seed',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _apiVehiclesSeedPost(
      {@Query('count') required String? count});
}

@JsonSerializable(explicitToJson: true)
class ModelsAccountModel {
  ModelsAccountModel({
    this.createdAt,
    this.email,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory ModelsAccountModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsAccountModelFromJson(json);

  static const toJsonFactory = _$ModelsAccountModelToJson;
  Map<String, dynamic> toJson() => _$ModelsAccountModelToJson(this);

  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory = _$ModelsAccountModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsAccountModel &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsAccountModelExtension on ModelsAccountModel {
  ModelsAccountModel copyWith(
      {String? createdAt,
      String? email,
      String? id,
      String? name,
      String? updatedAt}) {
    return ModelsAccountModel(
        createdAt: createdAt ?? this.createdAt,
        email: email ?? this.email,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsAccountModel copyWithWrapped(
      {Wrapped<String?>? createdAt,
      Wrapped<String?>? email,
      Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? updatedAt}) {
    return ModelsAccountModel(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        email: (email != null ? email.value : this.email),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateAccountModel {
  ModelsCreateAccountModel({
    this.email,
    this.name,
  });

  factory ModelsCreateAccountModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateAccountModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateAccountModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateAccountModelToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsCreateAccountModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateAccountModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ModelsCreateAccountModelExtension on ModelsCreateAccountModel {
  ModelsCreateAccountModel copyWith({String? email, String? name}) {
    return ModelsCreateAccountModel(
        email: email ?? this.email, name: name ?? this.name);
  }

  ModelsCreateAccountModel copyWithWrapped(
      {Wrapped<String?>? email, Wrapped<String?>? name}) {
    return ModelsCreateAccountModel(
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateGarageModel {
  ModelsCreateGarageModel({
    this.label,
  });

  factory ModelsCreateGarageModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateGarageModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateGarageModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateGarageModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsCreateGarageModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateGarageModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $ModelsCreateGarageModelExtension on ModelsCreateGarageModel {
  ModelsCreateGarageModel copyWith({String? label}) {
    return ModelsCreateGarageModel(label: label ?? this.label);
  }

  ModelsCreateGarageModel copyWithWrapped({Wrapped<String?>? label}) {
    return ModelsCreateGarageModel(
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateOwnerModel {
  ModelsCreateOwnerModel({
    this.address,
    this.email,
    this.phone,
    this.photo,
    this.postalCode,
  });

  factory ModelsCreateOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateOwnerModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateOwnerModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateOwnerModelToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  static const fromJsonFactory = _$ModelsCreateOwnerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateOwnerModel &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      runtimeType.hashCode;
}

extension $ModelsCreateOwnerModelExtension on ModelsCreateOwnerModel {
  ModelsCreateOwnerModel copyWith(
      {String? address,
      String? email,
      String? phone,
      String? photo,
      String? postalCode}) {
    return ModelsCreateOwnerModel(
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode);
  }

  ModelsCreateOwnerModel copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode}) {
    return ModelsCreateOwnerModel(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreatePermissionModel {
  ModelsCreatePermissionModel({
    this.available,
    this.label,
  });

  factory ModelsCreatePermissionModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreatePermissionModelFromJson(json);

  static const toJsonFactory = _$ModelsCreatePermissionModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreatePermissionModelToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsCreatePermissionModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreatePermissionModel &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $ModelsCreatePermissionModelExtension on ModelsCreatePermissionModel {
  ModelsCreatePermissionModel copyWith({bool? available, String? label}) {
    return ModelsCreatePermissionModel(
        available: available ?? this.available, label: label ?? this.label);
  }

  ModelsCreatePermissionModel copyWithWrapped(
      {Wrapped<bool?>? available, Wrapped<String?>? label}) {
    return ModelsCreatePermissionModel(
        available: (available != null ? available.value : this.available),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateSparePartModel {
  ModelsCreateSparePartModel({
    this.barcode,
    this.reference,
  });

  factory ModelsCreateSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateSparePartModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateSparePartModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateSparePartModelToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'reference')
  final String? reference;
  static const fromJsonFactory = _$ModelsCreateSparePartModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateSparePartModel &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(reference) ^
      runtimeType.hashCode;
}

extension $ModelsCreateSparePartModelExtension on ModelsCreateSparePartModel {
  ModelsCreateSparePartModel copyWith({String? barcode, String? reference}) {
    return ModelsCreateSparePartModel(
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference);
  }

  ModelsCreateSparePartModel copyWithWrapped(
      {Wrapped<String?>? barcode, Wrapped<String?>? reference}) {
    return ModelsCreateSparePartModel(
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateSupplierModel {
  ModelsCreateSupplierModel({
    this.name,
  });

  factory ModelsCreateSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateSupplierModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateSupplierModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateSupplierModelToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsCreateSupplierModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateSupplierModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $ModelsCreateSupplierModelExtension on ModelsCreateSupplierModel {
  ModelsCreateSupplierModel copyWith({String? name}) {
    return ModelsCreateSupplierModel(name: name ?? this.name);
  }

  ModelsCreateSupplierModel copyWithWrapped({Wrapped<String?>? name}) {
    return ModelsCreateSupplierModel(
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateVehicleModel {
  ModelsCreateVehicleModel({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.currentStatus,
    this.deliveryDate,
    this.expertise,
    this.firstCirculation,
    this.info,
    this.mileage,
    this.note,
    this.ownerId,
    this.procedureVe,
    this.registration,
    this.serialNumber,
    this.soldAt,
  });

  factory ModelsCreateVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateVehicleModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateVehicleModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateVehicleModelToJson(this);

  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collection_date')
  final String? collectionDate;
  @JsonKey(name: 'commercial_name')
  final String? commercialName;
  @JsonKey(name: 'current_status')
  final String? currentStatus;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final String? firstCirculation;
  @JsonKey(name: 'info')
  final ModelsInfoModel? info;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner_id')
  final String? ownerId;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final String? soldAt;
  static const fromJsonFactory = _$ModelsCreateVehicleModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateVehicleModel &&
            (identical(other.chrono, chrono) ||
                const DeepCollectionEquality().equals(other.chrono, chrono)) &&
            (identical(other.collectionDate, collectionDate) ||
                const DeepCollectionEquality()
                    .equals(other.collectionDate, collectionDate)) &&
            (identical(other.commercialName, commercialName) ||
                const DeepCollectionEquality()
                    .equals(other.commercialName, commercialName)) &&
            (identical(other.currentStatus, currentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.currentStatus, currentStatus)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.expertise, expertise) ||
                const DeepCollectionEquality()
                    .equals(other.expertise, expertise)) &&
            (identical(other.firstCirculation, firstCirculation) ||
                const DeepCollectionEquality()
                    .equals(other.firstCirculation, firstCirculation)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.procedureVe, procedureVe) ||
                const DeepCollectionEquality()
                    .equals(other.procedureVe, procedureVe)) &&
            (identical(other.registration, registration) ||
                const DeepCollectionEquality()
                    .equals(other.registration, registration)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.soldAt, soldAt) ||
                const DeepCollectionEquality().equals(other.soldAt, soldAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(currentStatus) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(expertise) ^
      const DeepCollectionEquality().hash(firstCirculation) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(procedureVe) ^
      const DeepCollectionEquality().hash(registration) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(soldAt) ^
      runtimeType.hashCode;
}

extension $ModelsCreateVehicleModelExtension on ModelsCreateVehicleModel {
  ModelsCreateVehicleModel copyWith(
      {String? chrono,
      String? collectionDate,
      String? commercialName,
      String? currentStatus,
      String? deliveryDate,
      bool? expertise,
      String? firstCirculation,
      ModelsInfoModel? info,
      int? mileage,
      String? note,
      String? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      String? soldAt}) {
    return ModelsCreateVehicleModel(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        currentStatus: currentStatus ?? this.currentStatus,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        expertise: expertise ?? this.expertise,
        firstCirculation: firstCirculation ?? this.firstCirculation,
        info: info ?? this.info,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        ownerId: ownerId ?? this.ownerId,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt);
  }

  ModelsCreateVehicleModel copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<String?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<String?>? currentStatus,
      Wrapped<String?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<String?>? firstCirculation,
      Wrapped<ModelsInfoModel?>? info,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<String?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<String?>? soldAt}) {
    return ModelsCreateVehicleModel(
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        currentStatus:
            (currentStatus != null ? currentStatus.value : this.currentStatus),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        expertise: (expertise != null ? expertise.value : this.expertise),
        firstCirculation: (firstCirculation != null
            ? firstCirculation.value
            : this.firstCirculation),
        info: (info != null ? info.value : this.info),
        mileage: (mileage != null ? mileage.value : this.mileage),
        note: (note != null ? note.value : this.note),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsGarageModel {
  ModelsGarageModel({
    this.createdAt,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory ModelsGarageModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsGarageModelFromJson(json);

  static const toJsonFactory = _$ModelsGarageModelToJson;
  Map<String, dynamic> toJson() => _$ModelsGarageModelToJson(this);

  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory = _$ModelsGarageModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsGarageModel &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsGarageModelExtension on ModelsGarageModel {
  ModelsGarageModel copyWith(
      {String? createdAt, String? id, String? label, String? updatedAt}) {
    return ModelsGarageModel(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsGarageModel copyWithWrapped(
      {Wrapped<String?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? label,
      Wrapped<String?>? updatedAt}) {
    return ModelsGarageModel(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsInfoModel {
  ModelsInfoModel({
    this.label,
  });

  factory ModelsInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsInfoModelFromJson(json);

  static const toJsonFactory = _$ModelsInfoModelToJson;
  Map<String, dynamic> toJson() => _$ModelsInfoModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsInfoModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsInfoModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $ModelsInfoModelExtension on ModelsInfoModel {
  ModelsInfoModel copyWith({String? label}) {
    return ModelsInfoModel(label: label ?? this.label);
  }

  ModelsInfoModel copyWithWrapped({Wrapped<String?>? label}) {
    return ModelsInfoModel(label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListAccountModel {
  ModelsListAccountModel({
    this.data,
    this.total,
  });

  factory ModelsListAccountModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListAccountModelFromJson(json);

  static const toJsonFactory = _$ModelsListAccountModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListAccountModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsAccountModel>[])
  final List<ModelsAccountModel>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListAccountModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListAccountModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListAccountModelExtension on ModelsListAccountModel {
  ModelsListAccountModel copyWith(
      {List<ModelsAccountModel>? data, int? total}) {
    return ModelsListAccountModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListAccountModel copyWithWrapped(
      {Wrapped<List<ModelsAccountModel>?>? data, Wrapped<int?>? total}) {
    return ModelsListAccountModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListGarageModel {
  ModelsListGarageModel({
    this.data,
    this.total,
  });

  factory ModelsListGarageModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListGarageModelFromJson(json);

  static const toJsonFactory = _$ModelsListGarageModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListGarageModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsGarageModel>[])
  final List<ModelsGarageModel>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListGarageModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListGarageModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListGarageModelExtension on ModelsListGarageModel {
  ModelsListGarageModel copyWith({List<ModelsGarageModel>? data, int? total}) {
    return ModelsListGarageModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListGarageModel copyWithWrapped(
      {Wrapped<List<ModelsGarageModel>?>? data, Wrapped<int?>? total}) {
    return ModelsListGarageModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListOwnerModel {
  ModelsListOwnerModel({
    this.data,
    this.total,
  });

  factory ModelsListOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListOwnerModelFromJson(json);

  static const toJsonFactory = _$ModelsListOwnerModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListOwnerModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsOwnerModel>[])
  final List<ModelsOwnerModel>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListOwnerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListOwnerModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListOwnerModelExtension on ModelsListOwnerModel {
  ModelsListOwnerModel copyWith({List<ModelsOwnerModel>? data, int? total}) {
    return ModelsListOwnerModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListOwnerModel copyWithWrapped(
      {Wrapped<List<ModelsOwnerModel>?>? data, Wrapped<int?>? total}) {
    return ModelsListOwnerModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListPermissionModel {
  ModelsListPermissionModel({
    this.data,
    this.total,
  });

  factory ModelsListPermissionModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListPermissionModelFromJson(json);

  static const toJsonFactory = _$ModelsListPermissionModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListPermissionModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsPermissionModel>[])
  final List<ModelsPermissionModel>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListPermissionModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListPermissionModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListPermissionModelExtension on ModelsListPermissionModel {
  ModelsListPermissionModel copyWith(
      {List<ModelsPermissionModel>? data, int? total}) {
    return ModelsListPermissionModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListPermissionModel copyWithWrapped(
      {Wrapped<List<ModelsPermissionModel>?>? data, Wrapped<int?>? total}) {
    return ModelsListPermissionModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListSparePartModel {
  ModelsListSparePartModel({
    this.data,
    this.total,
  });

  factory ModelsListSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListSparePartModelFromJson(json);

  static const toJsonFactory = _$ModelsListSparePartModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListSparePartModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsSparePartModel>[])
  final List<ModelsSparePartModel>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListSparePartModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListSparePartModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListSparePartModelExtension on ModelsListSparePartModel {
  ModelsListSparePartModel copyWith(
      {List<ModelsSparePartModel>? data, int? total}) {
    return ModelsListSparePartModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListSparePartModel copyWithWrapped(
      {Wrapped<List<ModelsSparePartModel>?>? data, Wrapped<int?>? total}) {
    return ModelsListSparePartModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListSupplierModel {
  ModelsListSupplierModel({
    this.data,
    this.total,
  });

  factory ModelsListSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListSupplierModelFromJson(json);

  static const toJsonFactory = _$ModelsListSupplierModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListSupplierModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsSupplierModel>[])
  final List<ModelsSupplierModel>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListSupplierModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListSupplierModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListSupplierModelExtension on ModelsListSupplierModel {
  ModelsListSupplierModel copyWith(
      {List<ModelsSupplierModel>? data, int? total}) {
    return ModelsListSupplierModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListSupplierModel copyWithWrapped(
      {Wrapped<List<ModelsSupplierModel>?>? data, Wrapped<int?>? total}) {
    return ModelsListSupplierModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListVehicleModel {
  ModelsListVehicleModel({
    this.data,
    this.total,
  });

  factory ModelsListVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListVehicleModelFromJson(json);

  static const toJsonFactory = _$ModelsListVehicleModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListVehicleModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsVehicleModel>[])
  final List<ModelsVehicleModel>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListVehicleModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListVehicleModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListVehicleModelExtension on ModelsListVehicleModel {
  ModelsListVehicleModel copyWith(
      {List<ModelsVehicleModel>? data, int? total}) {
    return ModelsListVehicleModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListVehicleModel copyWithWrapped(
      {Wrapped<List<ModelsVehicleModel>?>? data, Wrapped<int?>? total}) {
    return ModelsListVehicleModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsOwnerModel {
  ModelsOwnerModel({
    this.address,
    this.createdAt,
    this.email,
    this.id,
    this.phone,
    this.photo,
    this.postalCode,
    this.updatedAt,
  });

  factory ModelsOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsOwnerModelFromJson(json);

  static const toJsonFactory = _$ModelsOwnerModelToJson;
  Map<String, dynamic> toJson() => _$ModelsOwnerModelToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory = _$ModelsOwnerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsOwnerModel &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsOwnerModelExtension on ModelsOwnerModel {
  ModelsOwnerModel copyWith(
      {String? address,
      String? createdAt,
      String? email,
      String? id,
      String? phone,
      String? photo,
      String? postalCode,
      String? updatedAt}) {
    return ModelsOwnerModel(
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        email: email ?? this.email,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsOwnerModel copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? email,
      Wrapped<String?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<String?>? updatedAt}) {
    return ModelsOwnerModel(
        address: (address != null ? address.value : this.address),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        email: (email != null ? email.value : this.email),
        id: (id != null ? id.value : this.id),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsPermissionModel {
  ModelsPermissionModel({
    this.available,
    this.createdAt,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory ModelsPermissionModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsPermissionModelFromJson(json);

  static const toJsonFactory = _$ModelsPermissionModelToJson;
  Map<String, dynamic> toJson() => _$ModelsPermissionModelToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory = _$ModelsPermissionModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsPermissionModel &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsPermissionModelExtension on ModelsPermissionModel {
  ModelsPermissionModel copyWith(
      {bool? available,
      String? createdAt,
      String? id,
      String? label,
      String? updatedAt}) {
    return ModelsPermissionModel(
        available: available ?? this.available,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsPermissionModel copyWithWrapped(
      {Wrapped<bool?>? available,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? label,
      Wrapped<String?>? updatedAt}) {
    return ModelsPermissionModel(
        available: (available != null ? available.value : this.available),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsSparePartModel {
  ModelsSparePartModel({
    this.barcode,
    this.createdAt,
    this.id,
    this.reference,
    this.updatedAt,
  });

  factory ModelsSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsSparePartModelFromJson(json);

  static const toJsonFactory = _$ModelsSparePartModelToJson;
  Map<String, dynamic> toJson() => _$ModelsSparePartModelToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory = _$ModelsSparePartModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsSparePartModel &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsSparePartModelExtension on ModelsSparePartModel {
  ModelsSparePartModel copyWith(
      {String? barcode,
      String? createdAt,
      String? id,
      String? reference,
      String? updatedAt}) {
    return ModelsSparePartModel(
        barcode: barcode ?? this.barcode,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        reference: reference ?? this.reference,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsSparePartModel copyWithWrapped(
      {Wrapped<String?>? barcode,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? reference,
      Wrapped<String?>? updatedAt}) {
    return ModelsSparePartModel(
        barcode: (barcode != null ? barcode.value : this.barcode),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        reference: (reference != null ? reference.value : this.reference),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsSupplierModel {
  ModelsSupplierModel({
    this.createdAt,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory ModelsSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsSupplierModelFromJson(json);

  static const toJsonFactory = _$ModelsSupplierModelToJson;
  Map<String, dynamic> toJson() => _$ModelsSupplierModelToJson(this);

  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory = _$ModelsSupplierModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsSupplierModel &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsSupplierModelExtension on ModelsSupplierModel {
  ModelsSupplierModel copyWith(
      {String? createdAt, String? id, String? name, String? updatedAt}) {
    return ModelsSupplierModel(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsSupplierModel copyWithWrapped(
      {Wrapped<String?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? updatedAt}) {
    return ModelsSupplierModel(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsTotalCount {
  ModelsTotalCount({
    this.count,
  });

  factory ModelsTotalCount.fromJson(Map<String, dynamic> json) =>
      _$ModelsTotalCountFromJson(json);

  static const toJsonFactory = _$ModelsTotalCountToJson;
  Map<String, dynamic> toJson() => _$ModelsTotalCountToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  static const fromJsonFactory = _$ModelsTotalCountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsTotalCount &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^ runtimeType.hashCode;
}

extension $ModelsTotalCountExtension on ModelsTotalCount {
  ModelsTotalCount copyWith({int? count}) {
    return ModelsTotalCount(count: count ?? this.count);
  }

  ModelsTotalCount copyWithWrapped({Wrapped<int?>? count}) {
    return ModelsTotalCount(count: (count != null ? count.value : this.count));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsVehicleModel {
  ModelsVehicleModel({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.createdAt,
    this.currentStatus,
    this.deliveryDate,
    this.expertise,
    this.firstCirculation,
    this.id,
    this.info,
    this.mileage,
    this.note,
    this.ownerId,
    this.procedureVe,
    this.registration,
    this.serialNumber,
    this.soldAt,
    this.updatedAt,
  });

  factory ModelsVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsVehicleModelFromJson(json);

  static const toJsonFactory = _$ModelsVehicleModelToJson;
  Map<String, dynamic> toJson() => _$ModelsVehicleModelToJson(this);

  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collection_date')
  final String? collectionDate;
  @JsonKey(name: 'commercial_name')
  final String? commercialName;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'current_status')
  final String? currentStatus;
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final String? firstCirculation;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'info')
  final ModelsInfoModel? info;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner_id')
  final String? ownerId;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final String? soldAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory = _$ModelsVehicleModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsVehicleModel &&
            (identical(other.chrono, chrono) ||
                const DeepCollectionEquality().equals(other.chrono, chrono)) &&
            (identical(other.collectionDate, collectionDate) ||
                const DeepCollectionEquality()
                    .equals(other.collectionDate, collectionDate)) &&
            (identical(other.commercialName, commercialName) ||
                const DeepCollectionEquality()
                    .equals(other.commercialName, commercialName)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.currentStatus, currentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.currentStatus, currentStatus)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.expertise, expertise) ||
                const DeepCollectionEquality()
                    .equals(other.expertise, expertise)) &&
            (identical(other.firstCirculation, firstCirculation) ||
                const DeepCollectionEquality()
                    .equals(other.firstCirculation, firstCirculation)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.procedureVe, procedureVe) ||
                const DeepCollectionEquality()
                    .equals(other.procedureVe, procedureVe)) &&
            (identical(other.registration, registration) ||
                const DeepCollectionEquality()
                    .equals(other.registration, registration)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.soldAt, soldAt) ||
                const DeepCollectionEquality().equals(other.soldAt, soldAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(currentStatus) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(expertise) ^
      const DeepCollectionEquality().hash(firstCirculation) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(procedureVe) ^
      const DeepCollectionEquality().hash(registration) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(soldAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsVehicleModelExtension on ModelsVehicleModel {
  ModelsVehicleModel copyWith(
      {String? chrono,
      String? collectionDate,
      String? commercialName,
      String? createdAt,
      String? currentStatus,
      String? deliveryDate,
      bool? expertise,
      String? firstCirculation,
      String? id,
      ModelsInfoModel? info,
      int? mileage,
      String? note,
      String? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      String? soldAt,
      String? updatedAt}) {
    return ModelsVehicleModel(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        createdAt: createdAt ?? this.createdAt,
        currentStatus: currentStatus ?? this.currentStatus,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        expertise: expertise ?? this.expertise,
        firstCirculation: firstCirculation ?? this.firstCirculation,
        id: id ?? this.id,
        info: info ?? this.info,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        ownerId: ownerId ?? this.ownerId,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsVehicleModel copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<String?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<String?>? createdAt,
      Wrapped<String?>? currentStatus,
      Wrapped<String?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<String?>? firstCirculation,
      Wrapped<String?>? id,
      Wrapped<ModelsInfoModel?>? info,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<String?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<String?>? soldAt,
      Wrapped<String?>? updatedAt}) {
    return ModelsVehicleModel(
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        currentStatus:
            (currentStatus != null ? currentStatus.value : this.currentStatus),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        expertise: (expertise != null ? expertise.value : this.expertise),
        firstCirculation: (firstCirculation != null
            ? firstCirculation.value
            : this.firstCirculation),
        id: (id != null ? id.value : this.id),
        info: (info != null ? info.value : this.info),
        mileage: (mileage != null ? mileage.value : this.mileage),
        note: (note != null ? note.value : this.note),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UtilsResponseError {
  UtilsResponseError({
    this.code,
    this.message,
  });

  factory UtilsResponseError.fromJson(Map<String, dynamic> json) =>
      _$UtilsResponseErrorFromJson(json);

  static const toJsonFactory = _$UtilsResponseErrorToJson;
  Map<String, dynamic> toJson() => _$UtilsResponseErrorToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$UtilsResponseErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UtilsResponseError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $UtilsResponseErrorExtension on UtilsResponseError {
  UtilsResponseError copyWith({int? code, String? message}) {
    return UtilsResponseError(
        code: code ?? this.code, message: message ?? this.message);
  }

  UtilsResponseError copyWithWrapped(
      {Wrapped<int?>? code, Wrapped<String?>? message}) {
    return UtilsResponseError(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
