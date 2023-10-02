// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
export 'swagger.models.swagger.dart';

part 'swagger.swagger.chopper.dart';

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
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountPost(
      {required Object? account}) {
    generatedMapping.putIfAbsent(ModelsCreateAccountModel,
        () => ModelsCreateAccountModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountPost(account: account);
  }

  ///Create a new account
  ///@param account Register account
  @Post(path: '/api/account')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountPost(
      {@Body() required Object? account});

  ///Get account by ID
  ///@param id Account ID
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountIdGet(id: id);
  }

  ///Get account by ID
  ///@param id Account ID
  @Get(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountIdGet(
      {@Path('id') required String? id});

  ///Update a account
  ///@param id Account ID
  ///@param account Register account
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountIdPut({
    required String? id,
    required Object? account,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateAccountModel,
        () => ModelsUpdateAccountModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountIdPut(id: id, account: account);
  }

  ///Update a account
  ///@param id Account ID
  ///@param account Register account
  @Put(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountIdPut({
    @Path('id') required String? id,
    @Body() required Object? account,
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
  Future<chopper.Response<List<ModelsAccountModelResponse>>>
      apiAccountImportPost({required List<ModelsCreateAccountModel>? account}) {
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountImportPost(account: account);
  }

  ///Create many account
  ///@param account Register account
  @Post(path: '/api/account_import')
  Future<chopper.Response<List<ModelsAccountModelResponse>>>
      _apiAccountImportPost(
          {@Body() required List<ModelsCreateAccountModel>? account});

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

  ///Create a new employee
  ///@param employee Register employee
  Future<chopper.Response<ModelsEmployeeModelResponse>> apiEmployeePost(
      {required Object? employee}) {
    generatedMapping.putIfAbsent(ModelsCreateEmployeeModel,
        () => ModelsCreateEmployeeModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeePost(employee: employee);
  }

  ///Create a new employee
  ///@param employee Register employee
  @Post(path: '/api/employee')
  Future<chopper.Response<ModelsEmployeeModelResponse>> _apiEmployeePost(
      {@Body() required Object? employee});

  ///Get employee by ID
  ///@param id Employee ID
  Future<chopper.Response<ModelsEmployeeModelResponse>> apiEmployeeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeeIdGet(id: id);
  }

  ///Get employee by ID
  ///@param id Employee ID
  @Get(path: '/api/employee/{id}')
  Future<chopper.Response<ModelsEmployeeModelResponse>> _apiEmployeeIdGet(
      {@Path('id') required String? id});

  ///Update a employee
  ///@param id Employee ID
  ///@param employee Register employee
  Future<chopper.Response<ModelsEmployeeModelResponse>> apiEmployeeIdPut({
    required String? id,
    required Object? employee,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateEmployeeModel,
        () => ModelsUpdateEmployeeModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeeIdPut(id: id, employee: employee);
  }

  ///Update a employee
  ///@param id Employee ID
  ///@param employee Register employee
  @Put(path: '/api/employee/{id}')
  Future<chopper.Response<ModelsEmployeeModelResponse>> _apiEmployeeIdPut({
    @Path('id') required String? id,
    @Body() required Object? employee,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiEmployeeTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiEmployeeTotalGet();
  }

  ///Total records
  @Get(path: '/api/employee/total')
  Future<chopper.Response<ModelsTotalCount>> _apiEmployeeTotalGet();

  ///Create many employee
  ///@param employee Register employee
  Future<chopper.Response<List<ModelsEmployeeModelResponse>>>
      apiEmployeeImportPost(
          {required List<ModelsCreateEmployeeModel>? employee}) {
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeeImportPost(employee: employee);
  }

  ///Create many employee
  ///@param employee Register employee
  @Post(path: '/api/employee_import')
  Future<chopper.Response<List<ModelsEmployeeModelResponse>>>
      _apiEmployeeImportPost(
          {@Body() required List<ModelsCreateEmployeeModel>? employee});

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListEmployeeModel>> apiEmployeeListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListEmployeeModel, () => ModelsListEmployeeModel.fromJsonFactory);

    return _apiEmployeeListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/employee_list')
  Future<chopper.Response<ModelsListEmployeeModel>> _apiEmployeeListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new garage
  ///@param garage Register garage
  Future<chopper.Response<ModelsGarageModelResponse>> apiGaragePost(
      {required Object? garage}) {
    generatedMapping.putIfAbsent(
        ModelsCreateGarageModel, () => ModelsCreateGarageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGaragePost(garage: garage);
  }

  ///Create a new garage
  ///@param garage Register garage
  @Post(path: '/api/garage')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGaragePost(
      {@Body() required Object? garage});

  ///Get garage by ID
  ///@param id Garage ID
  Future<chopper.Response<ModelsGarageModelResponse>> apiGarageIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageIdGet(id: id);
  }

  ///Get garage by ID
  ///@param id Garage ID
  @Get(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGarageIdGet(
      {@Path('id') required String? id});

  ///Update a garage
  ///@param id Garage ID
  ///@param garage Register garage
  Future<chopper.Response<ModelsGarageModelResponse>> apiGarageIdPut({
    required String? id,
    required Object? garage,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateGarageModel, () => ModelsUpdateGarageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageIdPut(id: id, garage: garage);
  }

  ///Update a garage
  ///@param id Garage ID
  ///@param garage Register garage
  @Put(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGarageIdPut({
    @Path('id') required String? id,
    @Body() required Object? garage,
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
  Future<chopper.Response<List<ModelsGarageModelResponse>>> apiGarageImportPost(
      {required List<ModelsCreateGarageModel>? garage}) {
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageImportPost(garage: garage);
  }

  ///Create many garage
  ///@param garage Register garage
  @Post(path: '/api/garage_import')
  Future<chopper.Response<List<ModelsGarageModelResponse>>>
      _apiGarageImportPost(
          {@Body() required List<ModelsCreateGarageModel>? garage});

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
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerPost(
      {required Object? owner}) {
    generatedMapping.putIfAbsent(
        ModelsCreateOwnerModel, () => ModelsCreateOwnerModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerPost(owner: owner);
  }

  ///Create a new owner
  ///@param owner Register owner
  @Post(path: '/api/owner')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerPost(
      {@Body() required Object? owner});

  ///Get owner by ID
  ///@param id Owner ID
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerIdGet(id: id);
  }

  ///Get owner by ID
  ///@param id Owner ID
  @Get(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerIdGet(
      {@Path('id') required String? id});

  ///Update a owner
  ///@param id Owner ID
  ///@param owner Register owner
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerIdPut({
    required String? id,
    required Object? owner,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateOwnerModel, () => ModelsUpdateOwnerModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerIdPut(id: id, owner: owner);
  }

  ///Update a owner
  ///@param id Owner ID
  ///@param owner Register owner
  @Put(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerIdPut({
    @Path('id') required String? id,
    @Body() required Object? owner,
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
  Future<chopper.Response<List<ModelsOwnerModelResponse>>> apiOwnerImportPost(
      {required List<ModelsCreateOwnerModel>? owner}) {
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerImportPost(owner: owner);
  }

  ///Create many owner
  ///@param owner Register owner
  @Post(path: '/api/owner_import')
  Future<chopper.Response<List<ModelsOwnerModelResponse>>> _apiOwnerImportPost(
      {@Body() required List<ModelsCreateOwnerModel>? owner});

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
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionPost(
      {required Object? permission}) {
    generatedMapping.putIfAbsent(ModelsCreatePermissionModel,
        () => ModelsCreatePermissionModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionPost(permission: permission);
  }

  ///Create a new permission
  ///@param permission Register permission
  @Post(path: '/api/permission')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionPost(
      {@Body() required Object? permission});

  ///Get permission by ID
  ///@param id Permission ID
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionIdGet(id: id);
  }

  ///Get permission by ID
  ///@param id Permission ID
  @Get(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionIdGet(
      {@Path('id') required String? id});

  ///Update a permission
  ///@param id Permission ID
  ///@param permission Register permission
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionIdPut({
    required String? id,
    required Object? permission,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdatePermissionModel,
        () => ModelsUpdatePermissionModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionIdPut(id: id, permission: permission);
  }

  ///Update a permission
  ///@param id Permission ID
  ///@param permission Register permission
  @Put(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionIdPut({
    @Path('id') required String? id,
    @Body() required Object? permission,
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
  Future<chopper.Response<List<ModelsPermissionModelResponse>>>
      apiPermissionImportPost(
          {required List<ModelsCreatePermissionModel>? permission}) {
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionImportPost(permission: permission);
  }

  ///Create many permission
  ///@param permission Register permission
  @Post(path: '/api/permission_import')
  Future<chopper.Response<List<ModelsPermissionModelResponse>>>
      _apiPermissionImportPost(
          {@Body() required List<ModelsCreatePermissionModel>? permission});

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
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartPost(
      {required Object? sparePart}) {
    generatedMapping.putIfAbsent(ModelsCreateSparePartModel,
        () => ModelsCreateSparePartModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartPost(sparePart: sparePart);
  }

  ///Create a new spare_part
  ///@param spare_part Register spare_part
  @Post(path: '/api/spare_part')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartPost(
      {@Body() required Object? sparePart});

  ///Get spare_part by ID
  ///@param id SparePart ID
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartIdGet(id: id);
  }

  ///Get spare_part by ID
  ///@param id SparePart ID
  @Get(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartIdGet(
      {@Path('id') required String? id});

  ///Update a spare_part
  ///@param id SparePart ID
  ///@param spare_part Register spare_part
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartIdPut({
    required String? id,
    required Object? sparePart,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateSparePartModel,
        () => ModelsUpdateSparePartModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartIdPut(id: id, sparePart: sparePart);
  }

  ///Update a spare_part
  ///@param id SparePart ID
  ///@param spare_part Register spare_part
  @Put(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartIdPut({
    @Path('id') required String? id,
    @Body() required Object? sparePart,
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
  Future<chopper.Response<List<ModelsSparePartModelResponse>>>
      apiSparePartImportPost(
          {required List<ModelsCreateSparePartModel>? sparePart}) {
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartImportPost(sparePart: sparePart);
  }

  ///Create many spare_part
  ///@param spare_part Register spare_part
  @Post(path: '/api/spare_part_import')
  Future<chopper.Response<List<ModelsSparePartModelResponse>>>
      _apiSparePartImportPost(
          {@Body() required List<ModelsCreateSparePartModel>? sparePart});

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
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierPost(
      {required Object? supplier}) {
    generatedMapping.putIfAbsent(ModelsCreateSupplierModel,
        () => ModelsCreateSupplierModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierPost(supplier: supplier);
  }

  ///Create a new supplier
  ///@param supplier Register supplier
  @Post(path: '/api/supplier')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierPost(
      {@Body() required Object? supplier});

  ///Get supplier by ID
  ///@param id Supplier ID
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierIdGet(id: id);
  }

  ///Get supplier by ID
  ///@param id Supplier ID
  @Get(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierIdGet(
      {@Path('id') required String? id});

  ///Update a supplier
  ///@param id Supplier ID
  ///@param supplier Register supplier
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierIdPut({
    required String? id,
    required Object? supplier,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateSupplierModel,
        () => ModelsUpdateSupplierModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierIdPut(id: id, supplier: supplier);
  }

  ///Update a supplier
  ///@param id Supplier ID
  ///@param supplier Register supplier
  @Put(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierIdPut({
    @Path('id') required String? id,
    @Body() required Object? supplier,
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
  Future<chopper.Response<List<ModelsSupplierModelResponse>>>
      apiSupplierImportPost(
          {required List<ModelsCreateSupplierModel>? supplier}) {
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierImportPost(supplier: supplier);
  }

  ///Create many supplier
  ///@param supplier Register supplier
  @Post(path: '/api/supplier_import')
  Future<chopper.Response<List<ModelsSupplierModelResponse>>>
      _apiSupplierImportPost(
          {@Body() required List<ModelsCreateSupplierModel>? supplier});

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

  ///Create a new task
  ///@param task Register task
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskPost(
      {required Object? task}) {
    generatedMapping.putIfAbsent(
        ModelsCreateTaskModel, () => ModelsCreateTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskPost(task: task);
  }

  ///Create a new task
  ///@param task Register task
  @Post(path: '/api/task')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskPost(
      {@Body() required Object? task});

  ///Get task by ID
  ///@param id Task ID
  ///@param task with task data
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskIdGet({
    required String? id,
    bool? task,
  }) {
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskIdGet(id: id, task: task);
  }

  ///Get task by ID
  ///@param id Task ID
  ///@param task with task data
  @Get(path: '/api/task/{id}')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskIdGet({
    @Path('id') required String? id,
    @Query('task') bool? task,
  });

  ///Update a task
  ///@param id Task ID
  ///@param task Register task
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskIdPut({
    required String? id,
    required Object? task,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateTaskModel, () => ModelsUpdateTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskIdPut(id: id, task: task);
  }

  ///Update a task
  ///@param id Task ID
  ///@param task Register task
  @Put(path: '/api/task/{id}')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskIdPut({
    @Path('id') required String? id,
    @Body() required Object? task,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiTaskTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/task/total')
  Future<chopper.Response<ModelsTotalCount>> _apiTaskTotalGet();

  ///Create many task
  ///@param task Register task
  Future<chopper.Response<List<ModelsTaskModelResponse>>> apiTaskImportPost(
      {required List<ModelsCreateTaskModel>? task}) {
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskImportPost(task: task);
  }

  ///Create many task
  ///@param task Register task
  @Post(path: '/api/task_import')
  Future<chopper.Response<List<ModelsTaskModelResponse>>> _apiTaskImportPost(
      {@Body() required List<ModelsCreateTaskModel>? task});

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param task with task data
  Future<chopper.Response<ModelsListTaskModel>> apiTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? task,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListTaskModel, () => ModelsListTaskModel.fromJsonFactory);

    return _apiTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        task: task);
  }

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param task with task data
  @Get(path: '/api/task_list')
  Future<chopper.Response<ModelsListTaskModel>> _apiTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('task') bool? task,
  });

  ///Create a new vehicle
  ///@param vehicle Register vehicle
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehiclePost(
      {required Object? vehicle}) {
    generatedMapping.putIfAbsent(ModelsCreateVehicleModel,
        () => ModelsCreateVehicleModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehiclePost(vehicle: vehicle);
  }

  ///Create a new vehicle
  ///@param vehicle Register vehicle
  @Post(path: '/api/vehicle')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehiclePost(
      {@Body() required Object? vehicle});

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param owner with owner data
  ///@param vehicle_task with vehicle task data
  ///@param employee with employee data
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehicleIdGet({
    required String? id,
    bool? owner,
    bool? vehicleTask,
    bool? employee,
  }) {
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleIdGet(
        id: id, owner: owner, vehicleTask: vehicleTask, employee: employee);
  }

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param owner with owner data
  ///@param vehicle_task with vehicle task data
  ///@param employee with employee data
  @Get(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehicleIdGet({
    @Path('id') required String? id,
    @Query('owner') bool? owner,
    @Query('vehicle_task') bool? vehicleTask,
    @Query('employee') bool? employee,
  });

  ///Update a vehicle
  ///@param id Vehicle ID
  ///@param vehicle Register vehicle
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehicleIdPut({
    required String? id,
    required Object? vehicle,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateVehicleModel,
        () => ModelsUpdateVehicleModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleIdPut(id: id, vehicle: vehicle);
  }

  ///Update a vehicle
  ///@param id Vehicle ID
  ///@param vehicle Register vehicle
  @Put(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehicleIdPut({
    @Path('id') required String? id,
    @Body() required Object? vehicle,
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
  Future<chopper.Response<List<ModelsVehicleModelResponse>>>
      apiVehicleImportPost({required List<ModelsCreateVehicleModel>? vehicle}) {
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleImportPost(vehicle: vehicle);
  }

  ///Create many vehicle
  ///@param vehicle Register vehicle
  @Post(path: '/api/vehicle_import')
  Future<chopper.Response<List<ModelsVehicleModelResponse>>>
      _apiVehicleImportPost(
          {@Body() required List<ModelsCreateVehicleModel>? vehicle});

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param owner with owner data
  ///@param vehicle_task with vehicle task data
  ///@param employee with employee data
  Future<chopper.Response<ModelsListVehicleModel>> apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? owner,
    bool? vehicleTask,
    bool? employee,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListVehicleModel, () => ModelsListVehicleModel.fromJsonFactory);

    return _apiVehicleListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        owner: owner,
        vehicleTask: vehicleTask,
        employee: employee);
  }

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param owner with owner data
  ///@param vehicle_task with vehicle task data
  ///@param employee with employee data
  @Get(path: '/api/vehicle_list')
  Future<chopper.Response<ModelsListVehicleModel>> _apiVehicleListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('owner') bool? owner,
    @Query('vehicle_task') bool? vehicleTask,
    @Query('employee') bool? employee,
  });

  ///Create a new vehicle_task
  ///@param vehicle_task Register vehicle_task
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> apiVehicleTaskPost(
      {required Object? vehicleTask}) {
    generatedMapping.putIfAbsent(ModelsCreateVehicleTaskModel,
        () => ModelsCreateVehicleTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskPost(vehicleTask: vehicleTask);
  }

  ///Create a new vehicle_task
  ///@param vehicle_task Register vehicle_task
  @Post(path: '/api/vehicle_task')
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskPost(
      {@Body() required Object? vehicleTask});

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  ///@param employee with employee data
  ///@param task with task data
  ///@param vehicle with vehicle data
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> apiVehicleTaskIdGet({
    required String? id,
    bool? employee,
    bool? task,
    bool? vehicle,
  }) {
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskIdGet(
        id: id, employee: employee, task: task, vehicle: vehicle);
  }

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  ///@param employee with employee data
  ///@param task with task data
  ///@param vehicle with vehicle data
  @Get(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<ModelsVehicleTaskModelResponse>>
      _apiVehicleTaskIdGet({
    @Path('id') required String? id,
    @Query('employee') bool? employee,
    @Query('task') bool? task,
    @Query('vehicle') bool? vehicle,
  });

  ///Update a vehicle_task
  ///@param id VehicleTask ID
  ///@param vehicle_task Register vehicle_task
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> apiVehicleTaskIdPut({
    required String? id,
    required Object? vehicleTask,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateVehicleTaskModel,
        () => ModelsUpdateVehicleTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskIdPut(id: id, vehicleTask: vehicleTask);
  }

  ///Update a vehicle_task
  ///@param id VehicleTask ID
  ///@param vehicle_task Register vehicle_task
  @Put(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<ModelsVehicleTaskModelResponse>>
      _apiVehicleTaskIdPut({
    @Path('id') required String? id,
    @Body() required Object? vehicleTask,
  });

  ///Total records
  Future<chopper.Response<ModelsTotalCount>> apiVehicleTaskTotalGet() {
    generatedMapping.putIfAbsent(
        ModelsTotalCount, () => ModelsTotalCount.fromJsonFactory);

    return _apiVehicleTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/vehicle_task/total')
  Future<chopper.Response<ModelsTotalCount>> _apiVehicleTaskTotalGet();

  ///Create many vehicle_task
  ///@param vehicle_task Register vehicle_task
  Future<chopper.Response<List<ModelsVehicleTaskModelResponse>>>
      apiVehicleTaskImportPost(
          {required List<ModelsCreateVehicleTaskModel>? vehicleTask}) {
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskImportPost(vehicleTask: vehicleTask);
  }

  ///Create many vehicle_task
  ///@param vehicle_task Register vehicle_task
  @Post(path: '/api/vehicle_task_import')
  Future<chopper.Response<List<ModelsVehicleTaskModelResponse>>>
      _apiVehicleTaskImportPost(
          {@Body() required List<ModelsCreateVehicleTaskModel>? vehicleTask});

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param employee with employee data
  ///@param task with task data
  ///@param vehicle with vehicle data
  Future<chopper.Response<ModelsListVehicleTaskModel>> apiVehicleTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? employee,
    bool? task,
    bool? vehicle,
  }) {
    generatedMapping.putIfAbsent(ModelsListVehicleTaskModel,
        () => ModelsListVehicleTaskModel.fromJsonFactory);

    return _apiVehicleTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        employee: employee,
        task: task,
        vehicle: vehicle);
  }

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param employee with employee data
  ///@param task with task data
  ///@param vehicle with vehicle data
  @Get(path: '/api/vehicle_task_list')
  Future<chopper.Response<ModelsListVehicleTaskModel>> _apiVehicleTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('employee') bool? employee,
    @Query('task') bool? task,
    @Query('vehicle') bool? vehicle,
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
