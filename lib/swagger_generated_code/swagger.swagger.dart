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
  ///@param account_model Register account
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountPost(
      {required Object? accountModel}) {
    generatedMapping.putIfAbsent(ModelsCreateAccountModel,
        () => ModelsCreateAccountModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountPost(accountModel: accountModel);
  }

  ///Create a new account
  ///@param account_model Register account
  @Post(path: '/api/account')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountPost(
      {@Body() required Object? accountModel});

  ///Get account by ID
  ///@param id Account ID
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountIdGet(id: id);
  }

  ///Get account by ID
  ///@param id Account ID
  @Get(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountIdGet(
      {@Path('id') required int? id});

  ///Update a account
  ///@param id AccountModel ID
  ///@param account_model Register account
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountIdPatch({
    required int? id,
    required Object? accountModel,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateAccountModel,
        () => ModelsUpdateAccountModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountIdPatch(id: id, accountModel: accountModel);
  }

  ///Update a account
  ///@param id AccountModel ID
  ///@param account_model Register account
  @Patch(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountIdPatch({
    @Path('id') required int? id,
    @Body() required Object? accountModel,
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
  ///@param account_model Register account
  Future<chopper.Response<List<ModelsAccountModelResponse>>>
      apiAccountImportPost(
          {required List<ModelsCreateAccountModel>? accountModel}) {
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountImportPost(accountModel: accountModel);
  }

  ///Create many account
  ///@param account_model Register account
  @Post(path: '/api/account_import')
  Future<chopper.Response<List<ModelsAccountModelResponse>>>
      _apiAccountImportPost(
          {@Body() required List<ModelsCreateAccountModel>? accountModel});

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
  ///@param employee_model Register employee
  Future<chopper.Response<ModelsEmployeeModelResponse>> apiEmployeePost(
      {required Object? employeeModel}) {
    generatedMapping.putIfAbsent(ModelsCreateEmployeeModel,
        () => ModelsCreateEmployeeModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeePost(employeeModel: employeeModel);
  }

  ///Create a new employee
  ///@param employee_model Register employee
  @Post(path: '/api/employee')
  Future<chopper.Response<ModelsEmployeeModelResponse>> _apiEmployeePost(
      {@Body() required Object? employeeModel});

  ///Get employee by ID
  ///@param id Employee ID
  ///@param with_created_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_tasks with vehicle task data
  Future<chopper.Response<ModelsEmployeeModelResponse>> apiEmployeeIdGet({
    required int? id,
    bool? withCreatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedTasks,
  }) {
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeeIdGet(
        id: id,
        withCreatedVehicles: withCreatedVehicles,
        withDeletedVehicles: withDeletedVehicles,
        withCreatedTasks: withCreatedTasks);
  }

  ///Get employee by ID
  ///@param id Employee ID
  ///@param with_created_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_tasks with vehicle task data
  @Get(path: '/api/employee/{id}')
  Future<chopper.Response<ModelsEmployeeModelResponse>> _apiEmployeeIdGet({
    @Path('id') required int? id,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_created_tasks') bool? withCreatedTasks,
  });

  ///Update a employee
  ///@param id EmployeeModel ID
  ///@param employee_model Register employee
  Future<chopper.Response<ModelsEmployeeModelResponse>> apiEmployeeIdPatch({
    required int? id,
    required Object? employeeModel,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateEmployeeModel,
        () => ModelsUpdateEmployeeModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeeIdPatch(id: id, employeeModel: employeeModel);
  }

  ///Update a employee
  ///@param id EmployeeModel ID
  ///@param employee_model Register employee
  @Patch(path: '/api/employee/{id}')
  Future<chopper.Response<ModelsEmployeeModelResponse>> _apiEmployeeIdPatch({
    @Path('id') required int? id,
    @Body() required Object? employeeModel,
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
  ///@param employee_model Register employee
  Future<chopper.Response<List<ModelsEmployeeModelResponse>>>
      apiEmployeeImportPost(
          {required List<ModelsCreateEmployeeModel>? employeeModel}) {
    generatedMapping.putIfAbsent(ModelsEmployeeModelResponse,
        () => ModelsEmployeeModelResponse.fromJsonFactory);

    return _apiEmployeeImportPost(employeeModel: employeeModel);
  }

  ///Create many employee
  ///@param employee_model Register employee
  @Post(path: '/api/employee_import')
  Future<chopper.Response<List<ModelsEmployeeModelResponse>>>
      _apiEmployeeImportPost(
          {@Body() required List<ModelsCreateEmployeeModel>? employeeModel});

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_created_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_tasks with vehicle task data
  Future<chopper.Response<ModelsListEmployeeModel>> apiEmployeeListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withCreatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedTasks,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListEmployeeModel, () => ModelsListEmployeeModel.fromJsonFactory);

    return _apiEmployeeListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withCreatedVehicles: withCreatedVehicles,
        withDeletedVehicles: withDeletedVehicles,
        withCreatedTasks: withCreatedTasks);
  }

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_created_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_tasks with vehicle task data
  @Get(path: '/api/employee_list')
  Future<chopper.Response<ModelsListEmployeeModel>> _apiEmployeeListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_created_tasks') bool? withCreatedTasks,
  });

  ///Create a new garage
  ///@param garage_model Register garage
  Future<chopper.Response<ModelsGarageModelResponse>> apiGaragePost(
      {required Object? garageModel}) {
    generatedMapping.putIfAbsent(
        ModelsCreateGarageModel, () => ModelsCreateGarageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGaragePost(garageModel: garageModel);
  }

  ///Create a new garage
  ///@param garage_model Register garage
  @Post(path: '/api/garage')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGaragePost(
      {@Body() required Object? garageModel});

  ///Get garage by ID
  ///@param id Garage ID
  Future<chopper.Response<ModelsGarageModelResponse>> apiGarageIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageIdGet(id: id);
  }

  ///Get garage by ID
  ///@param id Garage ID
  @Get(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGarageIdGet(
      {@Path('id') required int? id});

  ///Update a garage
  ///@param id GarageModel ID
  ///@param garage_model Register garage
  Future<chopper.Response<ModelsGarageModelResponse>> apiGarageIdPatch({
    required int? id,
    required Object? garageModel,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateGarageModel, () => ModelsUpdateGarageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageIdPatch(id: id, garageModel: garageModel);
  }

  ///Update a garage
  ///@param id GarageModel ID
  ///@param garage_model Register garage
  @Patch(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGarageIdPatch({
    @Path('id') required int? id,
    @Body() required Object? garageModel,
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
  ///@param garage_model Register garage
  Future<chopper.Response<List<ModelsGarageModelResponse>>> apiGarageImportPost(
      {required List<ModelsCreateGarageModel>? garageModel}) {
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageImportPost(garageModel: garageModel);
  }

  ///Create many garage
  ///@param garage_model Register garage
  @Post(path: '/api/garage_import')
  Future<chopper.Response<List<ModelsGarageModelResponse>>>
      _apiGarageImportPost(
          {@Body() required List<ModelsCreateGarageModel>? garageModel});

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
  ///@param owner_model Register owner
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerPost(
      {required Object? ownerModel}) {
    generatedMapping.putIfAbsent(
        ModelsCreateOwnerModel, () => ModelsCreateOwnerModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerPost(ownerModel: ownerModel);
  }

  ///Create a new owner
  ///@param owner_model Register owner
  @Post(path: '/api/owner')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerPost(
      {@Body() required Object? ownerModel});

  ///Get owner by ID
  ///@param id Owner ID
  ///@param with_vehicles with vehicle data
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerIdGet({
    required int? id,
    bool? withVehicles,
  }) {
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerIdGet(id: id, withVehicles: withVehicles);
  }

  ///Get owner by ID
  ///@param id Owner ID
  ///@param with_vehicles with vehicle data
  @Get(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerIdGet({
    @Path('id') required int? id,
    @Query('with_vehicles') bool? withVehicles,
  });

  ///Update a owner
  ///@param id OwnerModel ID
  ///@param owner_model Register owner
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerIdPatch({
    required int? id,
    required Object? ownerModel,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateOwnerModel, () => ModelsUpdateOwnerModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerIdPatch(id: id, ownerModel: ownerModel);
  }

  ///Update a owner
  ///@param id OwnerModel ID
  ///@param owner_model Register owner
  @Patch(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerIdPatch({
    @Path('id') required int? id,
    @Body() required Object? ownerModel,
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
  ///@param owner_model Register owner
  Future<chopper.Response<List<ModelsOwnerModelResponse>>> apiOwnerImportPost(
      {required List<ModelsCreateOwnerModel>? ownerModel}) {
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerImportPost(ownerModel: ownerModel);
  }

  ///Create many owner
  ///@param owner_model Register owner
  @Post(path: '/api/owner_import')
  Future<chopper.Response<List<ModelsOwnerModelResponse>>> _apiOwnerImportPost(
      {@Body() required List<ModelsCreateOwnerModel>? ownerModel});

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_vehicles with vehicle data
  Future<chopper.Response<ModelsListOwnerModel>> apiOwnerListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withVehicles,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListOwnerModel, () => ModelsListOwnerModel.fromJsonFactory);

    return _apiOwnerListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withVehicles: withVehicles);
  }

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_vehicles with vehicle data
  @Get(path: '/api/owner_list')
  Future<chopper.Response<ModelsListOwnerModel>> _apiOwnerListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_vehicles') bool? withVehicles,
  });

  ///Create a new permission
  ///@param permission_model Register permission
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionPost(
      {required Object? permissionModel}) {
    generatedMapping.putIfAbsent(ModelsCreatePermissionModel,
        () => ModelsCreatePermissionModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionPost(permissionModel: permissionModel);
  }

  ///Create a new permission
  ///@param permission_model Register permission
  @Post(path: '/api/permission')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionPost(
      {@Body() required Object? permissionModel});

  ///Get permission by ID
  ///@param id Permission ID
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionIdGet(id: id);
  }

  ///Get permission by ID
  ///@param id Permission ID
  @Get(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionIdGet(
      {@Path('id') required int? id});

  ///Update a permission
  ///@param id PermissionModel ID
  ///@param permission_model Register permission
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionIdPatch({
    required int? id,
    required Object? permissionModel,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdatePermissionModel,
        () => ModelsUpdatePermissionModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionIdPatch(id: id, permissionModel: permissionModel);
  }

  ///Update a permission
  ///@param id PermissionModel ID
  ///@param permission_model Register permission
  @Patch(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModelResponse>>
      _apiPermissionIdPatch({
    @Path('id') required int? id,
    @Body() required Object? permissionModel,
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
  ///@param permission_model Register permission
  Future<chopper.Response<List<ModelsPermissionModelResponse>>>
      apiPermissionImportPost(
          {required List<ModelsCreatePermissionModel>? permissionModel}) {
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionImportPost(permissionModel: permissionModel);
  }

  ///Create many permission
  ///@param permission_model Register permission
  @Post(path: '/api/permission_import')
  Future<chopper.Response<List<ModelsPermissionModelResponse>>>
      _apiPermissionImportPost(
          {@Body()
          required List<ModelsCreatePermissionModel>? permissionModel});

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
  ///@param spare_part_model Register spare_part
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartPost(
      {required Object? sparePartModel}) {
    generatedMapping.putIfAbsent(ModelsCreateSparePartModel,
        () => ModelsCreateSparePartModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartPost(sparePartModel: sparePartModel);
  }

  ///Create a new spare_part
  ///@param spare_part_model Register spare_part
  @Post(path: '/api/spare_part')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartPost(
      {@Body() required Object? sparePartModel});

  ///Get spare_part by ID
  ///@param id SparePart ID
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartIdGet(id: id);
  }

  ///Get spare_part by ID
  ///@param id SparePart ID
  @Get(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartIdGet(
      {@Path('id') required int? id});

  ///Update a spare_part
  ///@param id SparePartModel ID
  ///@param spare_part_model Register spare_part
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartIdPatch({
    required int? id,
    required Object? sparePartModel,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateSparePartModel,
        () => ModelsUpdateSparePartModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartIdPatch(id: id, sparePartModel: sparePartModel);
  }

  ///Update a spare_part
  ///@param id SparePartModel ID
  ///@param spare_part_model Register spare_part
  @Patch(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartIdPatch({
    @Path('id') required int? id,
    @Body() required Object? sparePartModel,
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
  ///@param spare_part_model Register spare_part
  Future<chopper.Response<List<ModelsSparePartModelResponse>>>
      apiSparePartImportPost(
          {required List<ModelsCreateSparePartModel>? sparePartModel}) {
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartImportPost(sparePartModel: sparePartModel);
  }

  ///Create many spare_part
  ///@param spare_part_model Register spare_part
  @Post(path: '/api/spare_part_import')
  Future<chopper.Response<List<ModelsSparePartModelResponse>>>
      _apiSparePartImportPost(
          {@Body() required List<ModelsCreateSparePartModel>? sparePartModel});

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
  ///@param supplier_model Register supplier
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierPost(
      {required Object? supplierModel}) {
    generatedMapping.putIfAbsent(ModelsCreateSupplierModel,
        () => ModelsCreateSupplierModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierPost(supplierModel: supplierModel);
  }

  ///Create a new supplier
  ///@param supplier_model Register supplier
  @Post(path: '/api/supplier')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierPost(
      {@Body() required Object? supplierModel});

  ///Get supplier by ID
  ///@param id Supplier ID
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierIdGet(id: id);
  }

  ///Get supplier by ID
  ///@param id Supplier ID
  @Get(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierIdGet(
      {@Path('id') required int? id});

  ///Update a supplier
  ///@param id SupplierModel ID
  ///@param supplier_model Register supplier
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierIdPatch({
    required int? id,
    required Object? supplierModel,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateSupplierModel,
        () => ModelsUpdateSupplierModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierIdPatch(id: id, supplierModel: supplierModel);
  }

  ///Update a supplier
  ///@param id SupplierModel ID
  ///@param supplier_model Register supplier
  @Patch(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierIdPatch({
    @Path('id') required int? id,
    @Body() required Object? supplierModel,
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
  ///@param supplier_model Register supplier
  Future<chopper.Response<List<ModelsSupplierModelResponse>>>
      apiSupplierImportPost(
          {required List<ModelsCreateSupplierModel>? supplierModel}) {
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierImportPost(supplierModel: supplierModel);
  }

  ///Create many supplier
  ///@param supplier_model Register supplier
  @Post(path: '/api/supplier_import')
  Future<chopper.Response<List<ModelsSupplierModelResponse>>>
      _apiSupplierImportPost(
          {@Body() required List<ModelsCreateSupplierModel>? supplierModel});

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
  ///@param task_model Register task
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskPost(
      {required Object? taskModel}) {
    generatedMapping.putIfAbsent(
        ModelsCreateTaskModel, () => ModelsCreateTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskPost(taskModel: taskModel);
  }

  ///Create a new task
  ///@param task_model Register task
  @Post(path: '/api/task')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskPost(
      {@Body() required Object? taskModel});

  ///Get task by ID
  ///@param id Task ID
  ///@param with_sub_tasks with task data
  ///@param with_vehicle_tasks with Vehicle Task data
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskIdGet({
    required int? id,
    bool? withSubTasks,
    bool? withVehicleTasks,
  }) {
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskIdGet(
        id: id, withSubTasks: withSubTasks, withVehicleTasks: withVehicleTasks);
  }

  ///Get task by ID
  ///@param id Task ID
  ///@param with_sub_tasks with task data
  ///@param with_vehicle_tasks with Vehicle Task data
  @Get(path: '/api/task/{id}')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskIdGet({
    @Path('id') required int? id,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
  });

  ///Update a task
  ///@param id TaskModel ID
  ///@param task_model Register task
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskIdPatch({
    required int? id,
    required Object? taskModel,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateTaskModel, () => ModelsUpdateTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskIdPatch(id: id, taskModel: taskModel);
  }

  ///Update a task
  ///@param id TaskModel ID
  ///@param task_model Register task
  @Patch(path: '/api/task/{id}')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskIdPatch({
    @Path('id') required int? id,
    @Body() required Object? taskModel,
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
  ///@param task_model Register task
  Future<chopper.Response<List<ModelsTaskModelResponse>>> apiTaskImportPost(
      {required List<ModelsCreateTaskModel>? taskModel}) {
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskImportPost(taskModel: taskModel);
  }

  ///Create many task
  ///@param task_model Register task
  @Post(path: '/api/task_import')
  Future<chopper.Response<List<ModelsTaskModelResponse>>> _apiTaskImportPost(
      {@Body() required List<ModelsCreateTaskModel>? taskModel});

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_sub_tasks with task data
  ///@param with_vehicle_tasks with Vehicle Task data
  Future<chopper.Response<ModelsListTaskModel>> apiTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withSubTasks,
    bool? withVehicleTasks,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListTaskModel, () => ModelsListTaskModel.fromJsonFactory);

    return _apiTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withSubTasks: withSubTasks,
        withVehicleTasks: withVehicleTasks);
  }

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_sub_tasks with task data
  ///@param with_vehicle_tasks with Vehicle Task data
  @Get(path: '/api/task_list')
  Future<chopper.Response<ModelsListTaskModel>> _apiTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
  });

  ///Create a new vehicle
  ///@param vehicle_model Register vehicle
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehiclePost(
      {required Object? vehicleModel}) {
    generatedMapping.putIfAbsent(ModelsCreateVehicleModel,
        () => ModelsCreateVehicleModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehiclePost(vehicleModel: vehicleModel);
  }

  ///Create a new vehicle
  ///@param vehicle_model Register vehicle
  @Post(path: '/api/vehicle')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehiclePost(
      {@Body() required Object? vehicleModel});

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param with_tasks with Vehicle Task data
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehicleIdGet({
    required int? id,
    bool? withTasks,
  }) {
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleIdGet(id: id, withTasks: withTasks);
  }

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param with_tasks with Vehicle Task data
  @Get(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehicleIdGet({
    @Path('id') required int? id,
    @Query('with_tasks') bool? withTasks,
  });

  ///Update a vehicle
  ///@param id VehicleModel ID
  ///@param vehicle_model Register vehicle
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehicleIdPatch({
    required int? id,
    required Object? vehicleModel,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateVehicleModel,
        () => ModelsUpdateVehicleModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleIdPatch(id: id, vehicleModel: vehicleModel);
  }

  ///Update a vehicle
  ///@param id VehicleModel ID
  ///@param vehicle_model Register vehicle
  @Patch(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehicleIdPatch({
    @Path('id') required int? id,
    @Body() required Object? vehicleModel,
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
  ///@param vehicle_model Register vehicle
  Future<chopper.Response<List<ModelsVehicleModelResponse>>>
      apiVehicleImportPost(
          {required List<ModelsCreateVehicleModel>? vehicleModel}) {
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleImportPost(vehicleModel: vehicleModel);
  }

  ///Create many vehicle
  ///@param vehicle_model Register vehicle
  @Post(path: '/api/vehicle_import')
  Future<chopper.Response<List<ModelsVehicleModelResponse>>>
      _apiVehicleImportPost(
          {@Body() required List<ModelsCreateVehicleModel>? vehicleModel});

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_tasks with Vehicle Task data
  Future<chopper.Response<ModelsListVehicleModel>> apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withTasks,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListVehicleModel, () => ModelsListVehicleModel.fromJsonFactory);

    return _apiVehicleListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withTasks: withTasks);
  }

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_tasks with Vehicle Task data
  @Get(path: '/api/vehicle_list')
  Future<chopper.Response<ModelsListVehicleModel>> _apiVehicleListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_tasks') bool? withTasks,
  });

  ///Create a new vehicle_task
  ///@param vehicle_task_model Register vehicle_task
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> apiVehicleTaskPost(
      {required Object? vehicleTaskModel}) {
    generatedMapping.putIfAbsent(ModelsCreateVehicleTaskModel,
        () => ModelsCreateVehicleTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskPost(vehicleTaskModel: vehicleTaskModel);
  }

  ///Create a new vehicle_task
  ///@param vehicle_task_model Register vehicle_task
  @Post(path: '/api/vehicle_task')
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskPost(
      {@Body() required Object? vehicleTaskModel});

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> apiVehicleTaskIdGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskIdGet(id: id);
  }

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  @Get(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskIdGet(
      {@Path('id') required int? id});

  ///Update a vehicle_task
  ///@param id VehicleTaskModel ID
  ///@param vehicle_task_model Register vehicle_task
  Future<chopper.Response<ModelsVehicleTaskModelResponse>>
      apiVehicleTaskIdPatch({
    required int? id,
    required Object? vehicleTaskModel,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateVehicleTaskModel,
        () => ModelsUpdateVehicleTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskIdPatch(id: id, vehicleTaskModel: vehicleTaskModel);
  }

  ///Update a vehicle_task
  ///@param id VehicleTaskModel ID
  ///@param vehicle_task_model Register vehicle_task
  @Patch(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<ModelsVehicleTaskModelResponse>>
      _apiVehicleTaskIdPatch({
    @Path('id') required int? id,
    @Body() required Object? vehicleTaskModel,
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
  ///@param vehicle_task_model Register vehicle_task
  Future<chopper.Response<List<ModelsVehicleTaskModelResponse>>>
      apiVehicleTaskImportPost(
          {required List<ModelsCreateVehicleTaskModel>? vehicleTaskModel}) {
    generatedMapping.putIfAbsent(ModelsVehicleTaskModelResponse,
        () => ModelsVehicleTaskModelResponse.fromJsonFactory);

    return _apiVehicleTaskImportPost(vehicleTaskModel: vehicleTaskModel);
  }

  ///Create many vehicle_task
  ///@param vehicle_task_model Register vehicle_task
  @Post(path: '/api/vehicle_task_import')
  Future<chopper.Response<List<ModelsVehicleTaskModelResponse>>>
      _apiVehicleTaskImportPost(
          {@Body()
          required List<ModelsCreateVehicleTaskModel>? vehicleTaskModel});

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListVehicleTaskModel>> apiVehicleTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(ModelsListVehicleTaskModel,
        () => ModelsListVehicleTaskModel.fromJsonFactory);

    return _apiVehicleTaskListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/vehicle_task_list')
  Future<chopper.Response<ModelsListVehicleTaskModel>> _apiVehicleTaskListGet({
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
