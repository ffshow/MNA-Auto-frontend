// ignore_for_file: type=lint


import 'swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
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
  Future<chopper.Response<AccountResponse>> apiAccountPost(
      {required Object? accountModel}) {
    generatedMapping.putIfAbsent(
        CreateAccount, () => CreateAccount.fromJsonFactory);
    generatedMapping.putIfAbsent(
        AccountResponse, () => AccountResponse.fromJsonFactory);

    return _apiAccountPost(accountModel: accountModel);
  }

  ///Create a new account
  ///@param account_model Register account
  @Post(path: '/api/account')
  Future<chopper.Response<AccountResponse>> _apiAccountPost(
      {@Body() required Object? accountModel});

  ///Get account by ID
  ///@param id Account ID
  ///@param with_history with history data
  Future<chopper.Response<AccountResponse>> apiAccountIdGet({
    required int? id,
    bool? withHistory,
  }) {
    generatedMapping.putIfAbsent(
        AccountResponse, () => AccountResponse.fromJsonFactory);

    return _apiAccountIdGet(id: id, withHistory: withHistory);
  }

  ///Get account by ID
  ///@param id Account ID
  ///@param with_history with history data
  @Get(path: '/api/account/{id}')
  Future<chopper.Response<AccountResponse>> _apiAccountIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
  });

  ///Update a account
  ///@param id AccountModel ID
  ///@param account_model Register account
  Future<chopper.Response<AccountResponse>> apiAccountIdPatch({
    required int? id,
    required Object? accountModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateAccount, () => UpdateAccount.fromJsonFactory);
    generatedMapping.putIfAbsent(
        AccountResponse, () => AccountResponse.fromJsonFactory);

    return _apiAccountIdPatch(id: id, accountModel: accountModel);
  }

  ///Update a account
  ///@param id AccountModel ID
  ///@param account_model Register account
  @Patch(path: '/api/account/{id}')
  Future<chopper.Response<AccountResponse>> _apiAccountIdPatch({
    @Path('id') required int? id,
    @Body() required Object? accountModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiAccountTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiAccountTotalGet();
  }

  ///Total records
  @Get(path: '/api/account/total')
  Future<chopper.Response<TotalCount>> _apiAccountTotalGet();

  ///Create many account
  ///@param account_model Register account
  Future<chopper.Response<List<AccountResponse>>> apiAccountImportPost(
      {required List<CreateAccount>? accountModel}) {
    generatedMapping.putIfAbsent(
        AccountResponse, () => AccountResponse.fromJsonFactory);

    return _apiAccountImportPost(accountModel: accountModel);
  }

  ///Create many account
  ///@param account_model Register account
  @Post(path: '/api/account_import')
  Future<chopper.Response<List<AccountResponse>>> _apiAccountImportPost(
      {@Body() required List<CreateAccount>? accountModel});

  ///List account
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ListAccount>> apiAccountListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ListAccount, () => ListAccount.fromJsonFactory);

    return _apiAccountListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List account
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/account_list')
  Future<chopper.Response<ListAccount>> _apiAccountListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new employee
  ///@param employee_model Register employee
  Future<chopper.Response<EmployeeResponse>> apiEmployeePost(
      {required Object? employeeModel}) {
    generatedMapping.putIfAbsent(
        CreateEmployee, () => CreateEmployee.fromJsonFactory);
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _apiEmployeePost(employeeModel: employeeModel);
  }

  ///Create a new employee
  ///@param employee_model Register employee
  @Post(path: '/api/employee')
  Future<chopper.Response<EmployeeResponse>> _apiEmployeePost(
      {@Body() required Object? employeeModel});

  ///Get employee by ID
  ///@param id Employee ID
  ///@param with_history with history data
  ///@param with_created_vehicles with vehicle data
  ///@param with_updated_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_vehicle_tasks with vehicle task data
  ///@param with_created_garages with garage data
  ///@param with_created_tasks with task data
  ///@param with_updated_tasts with task data
  Future<chopper.Response<EmployeeResponse>> apiEmployeeIdGet({
    required int? id,
    bool? withHistory,
    bool? withCreatedVehicles,
    bool? withUpdatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedVehicleTasks,
    bool? withCreatedGarages,
    bool? withCreatedTasks,
    bool? withUpdatedTasts,
  }) {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _apiEmployeeIdGet(
        id: id,
        withHistory: withHistory,
        withCreatedVehicles: withCreatedVehicles,
        withUpdatedVehicles: withUpdatedVehicles,
        withDeletedVehicles: withDeletedVehicles,
        withCreatedVehicleTasks: withCreatedVehicleTasks,
        withCreatedGarages: withCreatedGarages,
        withCreatedTasks: withCreatedTasks,
        withUpdatedTasts: withUpdatedTasts);
  }

  ///Get employee by ID
  ///@param id Employee ID
  ///@param with_history with history data
  ///@param with_created_vehicles with vehicle data
  ///@param with_updated_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_vehicle_tasks with vehicle task data
  ///@param with_created_garages with garage data
  ///@param with_created_tasks with task data
  ///@param with_updated_tasts with task data
  @Get(path: '/api/employee/{id}')
  Future<chopper.Response<EmployeeResponse>> _apiEmployeeIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_updated_vehicles') bool? withUpdatedVehicles,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_created_vehicle_tasks') bool? withCreatedVehicleTasks,
    @Query('with_created_garages') bool? withCreatedGarages,
    @Query('with_created_tasks') bool? withCreatedTasks,
    @Query('with_updated_tasts') bool? withUpdatedTasts,
  });

  ///Update a employee
  ///@param id EmployeeModel ID
  ///@param employee_model Register employee
  Future<chopper.Response<EmployeeResponse>> apiEmployeeIdPatch({
    required int? id,
    required Object? employeeModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateEmployee, () => UpdateEmployee.fromJsonFactory);
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _apiEmployeeIdPatch(id: id, employeeModel: employeeModel);
  }

  ///Update a employee
  ///@param id EmployeeModel ID
  ///@param employee_model Register employee
  @Patch(path: '/api/employee/{id}')
  Future<chopper.Response<EmployeeResponse>> _apiEmployeeIdPatch({
    @Path('id') required int? id,
    @Body() required Object? employeeModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiEmployeeTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiEmployeeTotalGet();
  }

  ///Total records
  @Get(path: '/api/employee/total')
  Future<chopper.Response<TotalCount>> _apiEmployeeTotalGet();

  ///Create many employee
  ///@param employee_model Register employee
  Future<chopper.Response<List<EmployeeResponse>>> apiEmployeeImportPost(
      {required List<CreateEmployee>? employeeModel}) {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _apiEmployeeImportPost(employeeModel: employeeModel);
  }

  ///Create many employee
  ///@param employee_model Register employee
  @Post(path: '/api/employee_import')
  Future<chopper.Response<List<EmployeeResponse>>> _apiEmployeeImportPost(
      {@Body() required List<CreateEmployee>? employeeModel});

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_created_vehicles with vehicle data
  ///@param with_updated_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_vehicle_tasks with vehicle task data
  ///@param with_created_garages with garage data
  ///@param with_created_tasks with task data
  ///@param with_updated_tasts with task data
  Future<chopper.Response<ListEmployee>> apiEmployeeListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withCreatedVehicles,
    bool? withUpdatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedVehicleTasks,
    bool? withCreatedGarages,
    bool? withCreatedTasks,
    bool? withUpdatedTasts,
  }) {
    generatedMapping.putIfAbsent(
        ListEmployee, () => ListEmployee.fromJsonFactory);

    return _apiEmployeeListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withCreatedVehicles: withCreatedVehicles,
        withUpdatedVehicles: withUpdatedVehicles,
        withDeletedVehicles: withDeletedVehicles,
        withCreatedVehicleTasks: withCreatedVehicleTasks,
        withCreatedGarages: withCreatedGarages,
        withCreatedTasks: withCreatedTasks,
        withUpdatedTasts: withUpdatedTasts);
  }

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_created_vehicles with vehicle data
  ///@param with_updated_vehicles with vehicle data
  ///@param with_deleted_vehicles with vehicle data
  ///@param with_created_vehicle_tasks with vehicle task data
  ///@param with_created_garages with garage data
  ///@param with_created_tasks with task data
  ///@param with_updated_tasts with task data
  @Get(path: '/api/employee_list')
  Future<chopper.Response<ListEmployee>> _apiEmployeeListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_updated_vehicles') bool? withUpdatedVehicles,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_created_vehicle_tasks') bool? withCreatedVehicleTasks,
    @Query('with_created_garages') bool? withCreatedGarages,
    @Query('with_created_tasks') bool? withCreatedTasks,
    @Query('with_updated_tasts') bool? withUpdatedTasts,
  });

  ///Create a new garage
  ///@param garage_model Register garage
  Future<chopper.Response<GarageResponse>> apiGaragePost(
      {required Object? garageModel}) {
    generatedMapping.putIfAbsent(
        CreateGarage, () => CreateGarage.fromJsonFactory);
    generatedMapping.putIfAbsent(
        GarageResponse, () => GarageResponse.fromJsonFactory);

    return _apiGaragePost(garageModel: garageModel);
  }

  ///Create a new garage
  ///@param garage_model Register garage
  @Post(path: '/api/garage')
  Future<chopper.Response<GarageResponse>> _apiGaragePost(
      {@Body() required Object? garageModel});

  ///Get garage by ID
  ///@param id Garage ID
  ///@param with_history with history data
  ///@param with_created_by with EmployeeModel data
  Future<chopper.Response<GarageResponse>> apiGarageIdGet({
    required int? id,
    bool? withHistory,
    bool? withCreatedBy,
  }) {
    generatedMapping.putIfAbsent(
        GarageResponse, () => GarageResponse.fromJsonFactory);

    return _apiGarageIdGet(
        id: id, withHistory: withHistory, withCreatedBy: withCreatedBy);
  }

  ///Get garage by ID
  ///@param id Garage ID
  ///@param with_history with history data
  ///@param with_created_by with EmployeeModel data
  @Get(path: '/api/garage/{id}')
  Future<chopper.Response<GarageResponse>> _apiGarageIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_created_by') bool? withCreatedBy,
  });

  ///Update a garage
  ///@param id GarageModel ID
  ///@param garage_model Register garage
  Future<chopper.Response<GarageResponse>> apiGarageIdPatch({
    required int? id,
    required Object? garageModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateGarage, () => UpdateGarage.fromJsonFactory);
    generatedMapping.putIfAbsent(
        GarageResponse, () => GarageResponse.fromJsonFactory);

    return _apiGarageIdPatch(id: id, garageModel: garageModel);
  }

  ///Update a garage
  ///@param id GarageModel ID
  ///@param garage_model Register garage
  @Patch(path: '/api/garage/{id}')
  Future<chopper.Response<GarageResponse>> _apiGarageIdPatch({
    @Path('id') required int? id,
    @Body() required Object? garageModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiGarageTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiGarageTotalGet();
  }

  ///Total records
  @Get(path: '/api/garage/total')
  Future<chopper.Response<TotalCount>> _apiGarageTotalGet();

  ///Create many garage
  ///@param garage_model Register garage
  Future<chopper.Response<List<GarageResponse>>> apiGarageImportPost(
      {required List<CreateGarage>? garageModel}) {
    generatedMapping.putIfAbsent(
        GarageResponse, () => GarageResponse.fromJsonFactory);

    return _apiGarageImportPost(garageModel: garageModel);
  }

  ///Create many garage
  ///@param garage_model Register garage
  @Post(path: '/api/garage_import')
  Future<chopper.Response<List<GarageResponse>>> _apiGarageImportPost(
      {@Body() required List<CreateGarage>? garageModel});

  ///List garage
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ListGarage>> apiGarageListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(ListGarage, () => ListGarage.fromJsonFactory);

    return _apiGarageListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List garage
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/garage_list')
  Future<chopper.Response<ListGarage>> _apiGarageListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new owner
  ///@param owner_model Register owner
  Future<chopper.Response<OwnerResponse>> apiOwnerPost(
      {required Object? ownerModel}) {
    generatedMapping.putIfAbsent(
        CreateOwner, () => CreateOwner.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OwnerResponse, () => OwnerResponse.fromJsonFactory);

    return _apiOwnerPost(ownerModel: ownerModel);
  }

  ///Create a new owner
  ///@param owner_model Register owner
  @Post(path: '/api/owner')
  Future<chopper.Response<OwnerResponse>> _apiOwnerPost(
      {@Body() required Object? ownerModel});

  ///Get owner by ID
  ///@param id Owner ID
  ///@param with_history with history data
  ///@param with_vehicles with vehicle data
  Future<chopper.Response<OwnerResponse>> apiOwnerIdGet({
    required int? id,
    bool? withHistory,
    bool? withVehicles,
  }) {
    generatedMapping.putIfAbsent(
        OwnerResponse, () => OwnerResponse.fromJsonFactory);

    return _apiOwnerIdGet(
        id: id, withHistory: withHistory, withVehicles: withVehicles);
  }

  ///Get owner by ID
  ///@param id Owner ID
  ///@param with_history with history data
  ///@param with_vehicles with vehicle data
  @Get(path: '/api/owner/{id}')
  Future<chopper.Response<OwnerResponse>> _apiOwnerIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicles') bool? withVehicles,
  });

  ///Update a owner
  ///@param id OwnerModel ID
  ///@param owner_model Register owner
  Future<chopper.Response<OwnerResponse>> apiOwnerIdPatch({
    required int? id,
    required Object? ownerModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateOwner, () => UpdateOwner.fromJsonFactory);
    generatedMapping.putIfAbsent(
        OwnerResponse, () => OwnerResponse.fromJsonFactory);

    return _apiOwnerIdPatch(id: id, ownerModel: ownerModel);
  }

  ///Update a owner
  ///@param id OwnerModel ID
  ///@param owner_model Register owner
  @Patch(path: '/api/owner/{id}')
  Future<chopper.Response<OwnerResponse>> _apiOwnerIdPatch({
    @Path('id') required int? id,
    @Body() required Object? ownerModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiOwnerTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiOwnerTotalGet();
  }

  ///Total records
  @Get(path: '/api/owner/total')
  Future<chopper.Response<TotalCount>> _apiOwnerTotalGet();

  ///Create many owner
  ///@param owner_model Register owner
  Future<chopper.Response<List<OwnerResponse>>> apiOwnerImportPost(
      {required List<CreateOwner>? ownerModel}) {
    generatedMapping.putIfAbsent(
        OwnerResponse, () => OwnerResponse.fromJsonFactory);

    return _apiOwnerImportPost(ownerModel: ownerModel);
  }

  ///Create many owner
  ///@param owner_model Register owner
  @Post(path: '/api/owner_import')
  Future<chopper.Response<List<OwnerResponse>>> _apiOwnerImportPost(
      {@Body() required List<CreateOwner>? ownerModel});

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_vehicles with vehicle data
  Future<chopper.Response<ListOwner>> apiOwnerListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withVehicles,
  }) {
    generatedMapping.putIfAbsent(ListOwner, () => ListOwner.fromJsonFactory);

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
  Future<chopper.Response<ListOwner>> _apiOwnerListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_vehicles') bool? withVehicles,
  });

  ///Create a new permission
  ///@param permission_model Register permission
  Future<chopper.Response<PermissionResponse>> apiPermissionPost(
      {required Object? permissionModel}) {
    generatedMapping.putIfAbsent(
        CreatePermission, () => CreatePermission.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PermissionResponse, () => PermissionResponse.fromJsonFactory);

    return _apiPermissionPost(permissionModel: permissionModel);
  }

  ///Create a new permission
  ///@param permission_model Register permission
  @Post(path: '/api/permission')
  Future<chopper.Response<PermissionResponse>> _apiPermissionPost(
      {@Body() required Object? permissionModel});

  ///Get permission by ID
  ///@param id Permission ID
  ///@param with_history with history data
  Future<chopper.Response<PermissionResponse>> apiPermissionIdGet({
    required int? id,
    bool? withHistory,
  }) {
    generatedMapping.putIfAbsent(
        PermissionResponse, () => PermissionResponse.fromJsonFactory);

    return _apiPermissionIdGet(id: id, withHistory: withHistory);
  }

  ///Get permission by ID
  ///@param id Permission ID
  ///@param with_history with history data
  @Get(path: '/api/permission/{id}')
  Future<chopper.Response<PermissionResponse>> _apiPermissionIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
  });

  ///Update a permission
  ///@param id PermissionModel ID
  ///@param permission_model Register permission
  Future<chopper.Response<PermissionResponse>> apiPermissionIdPatch({
    required int? id,
    required Object? permissionModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdatePermission, () => UpdatePermission.fromJsonFactory);
    generatedMapping.putIfAbsent(
        PermissionResponse, () => PermissionResponse.fromJsonFactory);

    return _apiPermissionIdPatch(id: id, permissionModel: permissionModel);
  }

  ///Update a permission
  ///@param id PermissionModel ID
  ///@param permission_model Register permission
  @Patch(path: '/api/permission/{id}')
  Future<chopper.Response<PermissionResponse>> _apiPermissionIdPatch({
    @Path('id') required int? id,
    @Body() required Object? permissionModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiPermissionTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiPermissionTotalGet();
  }

  ///Total records
  @Get(path: '/api/permission/total')
  Future<chopper.Response<TotalCount>> _apiPermissionTotalGet();

  ///Create many permission
  ///@param permission_model Register permission
  Future<chopper.Response<List<PermissionResponse>>> apiPermissionImportPost(
      {required List<CreatePermission>? permissionModel}) {
    generatedMapping.putIfAbsent(
        PermissionResponse, () => PermissionResponse.fromJsonFactory);

    return _apiPermissionImportPost(permissionModel: permissionModel);
  }

  ///Create many permission
  ///@param permission_model Register permission
  @Post(path: '/api/permission_import')
  Future<chopper.Response<List<PermissionResponse>>> _apiPermissionImportPost(
      {@Body() required List<CreatePermission>? permissionModel});

  ///List permission
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ListPermission>> apiPermissionListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ListPermission, () => ListPermission.fromJsonFactory);

    return _apiPermissionListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List permission
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/permission_list')
  Future<chopper.Response<ListPermission>> _apiPermissionListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new spare_part
  ///@param spare_part_model Register spare_part
  Future<chopper.Response<SparePartResponse>> apiSparePartPost(
      {required Object? sparePartModel}) {
    generatedMapping.putIfAbsent(
        CreateSparePart, () => CreateSparePart.fromJsonFactory);
    generatedMapping.putIfAbsent(
        SparePartResponse, () => SparePartResponse.fromJsonFactory);

    return _apiSparePartPost(sparePartModel: sparePartModel);
  }

  ///Create a new spare_part
  ///@param spare_part_model Register spare_part
  @Post(path: '/api/spare_part')
  Future<chopper.Response<SparePartResponse>> _apiSparePartPost(
      {@Body() required Object? sparePartModel});

  ///Get spare_part by ID
  ///@param id SparePart ID
  ///@param with_history with history data
  Future<chopper.Response<SparePartResponse>> apiSparePartIdGet({
    required int? id,
    bool? withHistory,
  }) {
    generatedMapping.putIfAbsent(
        SparePartResponse, () => SparePartResponse.fromJsonFactory);

    return _apiSparePartIdGet(id: id, withHistory: withHistory);
  }

  ///Get spare_part by ID
  ///@param id SparePart ID
  ///@param with_history with history data
  @Get(path: '/api/spare_part/{id}')
  Future<chopper.Response<SparePartResponse>> _apiSparePartIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
  });

  ///Update a spare_part
  ///@param id SparePartModel ID
  ///@param spare_part_model Register spare_part
  Future<chopper.Response<SparePartResponse>> apiSparePartIdPatch({
    required int? id,
    required Object? sparePartModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateSparePart, () => UpdateSparePart.fromJsonFactory);
    generatedMapping.putIfAbsent(
        SparePartResponse, () => SparePartResponse.fromJsonFactory);

    return _apiSparePartIdPatch(id: id, sparePartModel: sparePartModel);
  }

  ///Update a spare_part
  ///@param id SparePartModel ID
  ///@param spare_part_model Register spare_part
  @Patch(path: '/api/spare_part/{id}')
  Future<chopper.Response<SparePartResponse>> _apiSparePartIdPatch({
    @Path('id') required int? id,
    @Body() required Object? sparePartModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiSparePartTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiSparePartTotalGet();
  }

  ///Total records
  @Get(path: '/api/spare_part/total')
  Future<chopper.Response<TotalCount>> _apiSparePartTotalGet();

  ///Create many spare_part
  ///@param spare_part_model Register spare_part
  Future<chopper.Response<List<SparePartResponse>>> apiSparePartImportPost(
      {required List<CreateSparePart>? sparePartModel}) {
    generatedMapping.putIfAbsent(
        SparePartResponse, () => SparePartResponse.fromJsonFactory);

    return _apiSparePartImportPost(sparePartModel: sparePartModel);
  }

  ///Create many spare_part
  ///@param spare_part_model Register spare_part
  @Post(path: '/api/spare_part_import')
  Future<chopper.Response<List<SparePartResponse>>> _apiSparePartImportPost(
      {@Body() required List<CreateSparePart>? sparePartModel});

  ///List spare_part
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ListSparePart>> apiSparePartListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ListSparePart, () => ListSparePart.fromJsonFactory);

    return _apiSparePartListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List spare_part
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/spare_part_list')
  Future<chopper.Response<ListSparePart>> _apiSparePartListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new supplier
  ///@param supplier_model Register supplier
  Future<chopper.Response<SupplierResponse>> apiSupplierPost(
      {required Object? supplierModel}) {
    generatedMapping.putIfAbsent(
        CreateSupplier, () => CreateSupplier.fromJsonFactory);
    generatedMapping.putIfAbsent(
        SupplierResponse, () => SupplierResponse.fromJsonFactory);

    return _apiSupplierPost(supplierModel: supplierModel);
  }

  ///Create a new supplier
  ///@param supplier_model Register supplier
  @Post(path: '/api/supplier')
  Future<chopper.Response<SupplierResponse>> _apiSupplierPost(
      {@Body() required Object? supplierModel});

  ///Get supplier by ID
  ///@param id Supplier ID
  ///@param with_history with history data
  Future<chopper.Response<SupplierResponse>> apiSupplierIdGet({
    required int? id,
    bool? withHistory,
  }) {
    generatedMapping.putIfAbsent(
        SupplierResponse, () => SupplierResponse.fromJsonFactory);

    return _apiSupplierIdGet(id: id, withHistory: withHistory);
  }

  ///Get supplier by ID
  ///@param id Supplier ID
  ///@param with_history with history data
  @Get(path: '/api/supplier/{id}')
  Future<chopper.Response<SupplierResponse>> _apiSupplierIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
  });

  ///Update a supplier
  ///@param id SupplierModel ID
  ///@param supplier_model Register supplier
  Future<chopper.Response<SupplierResponse>> apiSupplierIdPatch({
    required int? id,
    required Object? supplierModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateSupplier, () => UpdateSupplier.fromJsonFactory);
    generatedMapping.putIfAbsent(
        SupplierResponse, () => SupplierResponse.fromJsonFactory);

    return _apiSupplierIdPatch(id: id, supplierModel: supplierModel);
  }

  ///Update a supplier
  ///@param id SupplierModel ID
  ///@param supplier_model Register supplier
  @Patch(path: '/api/supplier/{id}')
  Future<chopper.Response<SupplierResponse>> _apiSupplierIdPatch({
    @Path('id') required int? id,
    @Body() required Object? supplierModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiSupplierTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiSupplierTotalGet();
  }

  ///Total records
  @Get(path: '/api/supplier/total')
  Future<chopper.Response<TotalCount>> _apiSupplierTotalGet();

  ///Create many supplier
  ///@param supplier_model Register supplier
  Future<chopper.Response<List<SupplierResponse>>> apiSupplierImportPost(
      {required List<CreateSupplier>? supplierModel}) {
    generatedMapping.putIfAbsent(
        SupplierResponse, () => SupplierResponse.fromJsonFactory);

    return _apiSupplierImportPost(supplierModel: supplierModel);
  }

  ///Create many supplier
  ///@param supplier_model Register supplier
  @Post(path: '/api/supplier_import')
  Future<chopper.Response<List<SupplierResponse>>> _apiSupplierImportPost(
      {@Body() required List<CreateSupplier>? supplierModel});

  ///List supplier
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ListSupplier>> apiSupplierListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ListSupplier, () => ListSupplier.fromJsonFactory);

    return _apiSupplierListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List supplier
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/supplier_list')
  Future<chopper.Response<ListSupplier>> _apiSupplierListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new task
  ///@param task_model Register task
  Future<chopper.Response<TaskResponse>> apiTaskPost(
      {required Object? taskModel}) {
    generatedMapping.putIfAbsent(CreateTask, () => CreateTask.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TaskResponse, () => TaskResponse.fromJsonFactory);

    return _apiTaskPost(taskModel: taskModel);
  }

  ///Create a new task
  ///@param task_model Register task
  @Post(path: '/api/task')
  Future<chopper.Response<TaskResponse>> _apiTaskPost(
      {@Body() required Object? taskModel});

  ///Get task by ID
  ///@param id Task ID
  ///@param with_history with history data
  ///@param with_sub_tasks with task data
  ///@param with_vehicle_tasks with Vehicle Task data
  ///@param with_created_by with EmployeeModel data
  ///@param with_updated_by with EmployeeModel data
  ///@param with_parent_task with TaskModel data
  Future<chopper.Response<TaskResponse>> apiTaskIdGet({
    required int? id,
    bool? withHistory,
    bool? withSubTasks,
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withParentTask,
  }) {
    generatedMapping.putIfAbsent(
        TaskResponse, () => TaskResponse.fromJsonFactory);

    return _apiTaskIdGet(
        id: id,
        withHistory: withHistory,
        withSubTasks: withSubTasks,
        withVehicleTasks: withVehicleTasks,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withParentTask: withParentTask);
  }

  ///Get task by ID
  ///@param id Task ID
  ///@param with_history with history data
  ///@param with_sub_tasks with task data
  ///@param with_vehicle_tasks with Vehicle Task data
  ///@param with_created_by with EmployeeModel data
  ///@param with_updated_by with EmployeeModel data
  ///@param with_parent_task with TaskModel data
  @Get(path: '/api/task/{id}')
  Future<chopper.Response<TaskResponse>> _apiTaskIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_parent_task') bool? withParentTask,
  });

  ///Update a task
  ///@param id TaskModel ID
  ///@param task_model Register task
  Future<chopper.Response<TaskResponse>> apiTaskIdPatch({
    required int? id,
    required Object? taskModel,
  }) {
    generatedMapping.putIfAbsent(UpdateTask, () => UpdateTask.fromJsonFactory);
    generatedMapping.putIfAbsent(
        TaskResponse, () => TaskResponse.fromJsonFactory);

    return _apiTaskIdPatch(id: id, taskModel: taskModel);
  }

  ///Update a task
  ///@param id TaskModel ID
  ///@param task_model Register task
  @Patch(path: '/api/task/{id}')
  Future<chopper.Response<TaskResponse>> _apiTaskIdPatch({
    @Path('id') required int? id,
    @Body() required Object? taskModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiTaskTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/task/total')
  Future<chopper.Response<TotalCount>> _apiTaskTotalGet();

  ///Create many task
  ///@param task_model Register task
  Future<chopper.Response<List<TaskResponse>>> apiTaskImportPost(
      {required List<CreateTask>? taskModel}) {
    generatedMapping.putIfAbsent(
        TaskResponse, () => TaskResponse.fromJsonFactory);

    return _apiTaskImportPost(taskModel: taskModel);
  }

  ///Create many task
  ///@param task_model Register task
  @Post(path: '/api/task_import')
  Future<chopper.Response<List<TaskResponse>>> _apiTaskImportPost(
      {@Body() required List<CreateTask>? taskModel});

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_sub_tasks with task data
  ///@param with_vehicle_tasks with Vehicle Task data
  Future<chopper.Response<ListTask>> apiTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withSubTasks,
    bool? withVehicleTasks,
  }) {
    generatedMapping.putIfAbsent(ListTask, () => ListTask.fromJsonFactory);

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
  Future<chopper.Response<ListTask>> _apiTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
  });

  ///Create a new vehicle
  ///@param vehicle_model Register vehicle
  Future<chopper.Response<VehicleResponse>> apiVehiclePost(
      {required Object? vehicleModel}) {
    generatedMapping.putIfAbsent(
        CreateVehicle, () => CreateVehicle.fromJsonFactory);
    generatedMapping.putIfAbsent(
        VehicleResponse, () => VehicleResponse.fromJsonFactory);

    return _apiVehiclePost(vehicleModel: vehicleModel);
  }

  ///Create a new vehicle
  ///@param vehicle_model Register vehicle
  @Post(path: '/api/vehicle')
  Future<chopper.Response<VehicleResponse>> _apiVehiclePost(
      {@Body() required Object? vehicleModel});

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param with_history with history data
  ///@param with_tasks with Vehicle Task data
  ///@param with_owner with OwnerModel data
  ///@param with_created_by with EmployeeModel data
  ///@param with_updated_by with EmployeeModel data
  ///@param with_deleted_by with EmployeeModel data
  Future<chopper.Response<VehicleResponse>> apiVehicleIdGet({
    required int? id,
    bool? withHistory,
    bool? withTasks,
    bool? withOwner,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        VehicleResponse, () => VehicleResponse.fromJsonFactory);

    return _apiVehicleIdGet(
        id: id,
        withHistory: withHistory,
        withTasks: withTasks,
        withOwner: withOwner,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy);
  }

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param with_history with history data
  ///@param with_tasks with Vehicle Task data
  ///@param with_owner with OwnerModel data
  ///@param with_created_by with EmployeeModel data
  ///@param with_updated_by with EmployeeModel data
  ///@param with_deleted_by with EmployeeModel data
  @Get(path: '/api/vehicle/{id}')
  Future<chopper.Response<VehicleResponse>> _apiVehicleIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_tasks') bool? withTasks,
    @Query('with_owner') bool? withOwner,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
  });

  ///Update a vehicle
  ///@param id VehicleModel ID
  ///@param vehicle_model Register vehicle
  Future<chopper.Response<VehicleResponse>> apiVehicleIdPatch({
    required int? id,
    required Object? vehicleModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateVehicle, () => UpdateVehicle.fromJsonFactory);
    generatedMapping.putIfAbsent(
        VehicleResponse, () => VehicleResponse.fromJsonFactory);

    return _apiVehicleIdPatch(id: id, vehicleModel: vehicleModel);
  }

  ///Update a vehicle
  ///@param id VehicleModel ID
  ///@param vehicle_model Register vehicle
  @Patch(path: '/api/vehicle/{id}')
  Future<chopper.Response<VehicleResponse>> _apiVehicleIdPatch({
    @Path('id') required int? id,
    @Body() required Object? vehicleModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiVehicleTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiVehicleTotalGet();
  }

  ///Total records
  @Get(path: '/api/vehicle/total')
  Future<chopper.Response<TotalCount>> _apiVehicleTotalGet();

  ///Create many vehicle
  ///@param vehicle_model Register vehicle
  Future<chopper.Response<List<VehicleResponse>>> apiVehicleImportPost(
      {required List<CreateVehicle>? vehicleModel}) {
    generatedMapping.putIfAbsent(
        VehicleResponse, () => VehicleResponse.fromJsonFactory);

    return _apiVehicleImportPost(vehicleModel: vehicleModel);
  }

  ///Create many vehicle
  ///@param vehicle_model Register vehicle
  @Post(path: '/api/vehicle_import')
  Future<chopper.Response<List<VehicleResponse>>> _apiVehicleImportPost(
      {@Body() required List<CreateVehicle>? vehicleModel});

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_tasks with Vehicle Task data
  Future<chopper.Response<ListVehicle>> apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withTasks,
  }) {
    generatedMapping.putIfAbsent(
        ListVehicle, () => ListVehicle.fromJsonFactory);

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
  Future<chopper.Response<ListVehicle>> _apiVehicleListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_tasks') bool? withTasks,
  });

  ///Create a new vehicle_task
  ///@param vehicle_task_model Register vehicle_task
  Future<chopper.Response<VehicleTaskResponse>> apiVehicleTaskPost(
      {required Object? vehicleTaskModel}) {
    generatedMapping.putIfAbsent(
        CreateVehicleTask, () => CreateVehicleTask.fromJsonFactory);
    generatedMapping.putIfAbsent(
        VehicleTaskResponse, () => VehicleTaskResponse.fromJsonFactory);

    return _apiVehicleTaskPost(vehicleTaskModel: vehicleTaskModel);
  }

  ///Create a new vehicle_task
  ///@param vehicle_task_model Register vehicle_task
  @Post(path: '/api/vehicle_task')
  Future<chopper.Response<VehicleTaskResponse>> _apiVehicleTaskPost(
      {@Body() required Object? vehicleTaskModel});

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  ///@param with_history with history data
  ///@param with_vehicles with VehicleModel data
  ///@param with_created_by with EmployeeModel data
  ///@param with_tasks with TaskModel data
  Future<chopper.Response<VehicleTaskResponse>> apiVehicleTaskIdGet({
    required int? id,
    bool? withHistory,
    bool? withVehicles,
    bool? withCreatedBy,
    bool? withTasks,
  }) {
    generatedMapping.putIfAbsent(
        VehicleTaskResponse, () => VehicleTaskResponse.fromJsonFactory);

    return _apiVehicleTaskIdGet(
        id: id,
        withHistory: withHistory,
        withVehicles: withVehicles,
        withCreatedBy: withCreatedBy,
        withTasks: withTasks);
  }

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  ///@param with_history with history data
  ///@param with_vehicles with VehicleModel data
  ///@param with_created_by with EmployeeModel data
  ///@param with_tasks with TaskModel data
  @Get(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<VehicleTaskResponse>> _apiVehicleTaskIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicles') bool? withVehicles,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_tasks') bool? withTasks,
  });

  ///Update a vehicle_task
  ///@param id VehicleTaskModel ID
  ///@param vehicle_task_model Register vehicle_task
  Future<chopper.Response<VehicleTaskResponse>> apiVehicleTaskIdPatch({
    required int? id,
    required Object? vehicleTaskModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateVehicleTask, () => UpdateVehicleTask.fromJsonFactory);
    generatedMapping.putIfAbsent(
        VehicleTaskResponse, () => VehicleTaskResponse.fromJsonFactory);

    return _apiVehicleTaskIdPatch(id: id, vehicleTaskModel: vehicleTaskModel);
  }

  ///Update a vehicle_task
  ///@param id VehicleTaskModel ID
  ///@param vehicle_task_model Register vehicle_task
  @Patch(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<VehicleTaskResponse>> _apiVehicleTaskIdPatch({
    @Path('id') required int? id,
    @Body() required Object? vehicleTaskModel,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiVehicleTaskTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiVehicleTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/vehicle_task/total')
  Future<chopper.Response<TotalCount>> _apiVehicleTaskTotalGet();

  ///Create many vehicle_task
  ///@param vehicle_task_model Register vehicle_task
  Future<chopper.Response<List<VehicleTaskResponse>>> apiVehicleTaskImportPost(
      {required List<CreateVehicleTask>? vehicleTaskModel}) {
    generatedMapping.putIfAbsent(
        VehicleTaskResponse, () => VehicleTaskResponse.fromJsonFactory);

    return _apiVehicleTaskImportPost(vehicleTaskModel: vehicleTaskModel);
  }

  ///Create many vehicle_task
  ///@param vehicle_task_model Register vehicle_task
  @Post(path: '/api/vehicle_task_import')
  Future<chopper.Response<List<VehicleTaskResponse>>> _apiVehicleTaskImportPost(
      {@Body() required List<CreateVehicleTask>? vehicleTaskModel});

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ListVehicleTask>> apiVehicleTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ListVehicleTask, () => ListVehicleTask.fromJsonFactory);

    return _apiVehicleTaskListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/vehicle_task_list')
  Future<chopper.Response<ListVehicleTask>> _apiVehicleTaskListGet({
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
