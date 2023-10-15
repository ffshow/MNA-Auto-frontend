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
  ///@param with_employee with employee data
  ///@param with_history_employee with employee history data
  Future<chopper.Response<AccountResponse>> apiAccountIdGet({
    required int? id,
    bool? withHistory,
    bool? withEmployee,
    bool? withHistoryEmployee,
  }) {
    generatedMapping.putIfAbsent(
        AccountResponse, () => AccountResponse.fromJsonFactory);

    return _apiAccountIdGet(
        id: id,
        withHistory: withHistory,
        withEmployee: withEmployee,
        withHistoryEmployee: withHistoryEmployee);
  }

  ///Get account by ID
  ///@param id Account ID
  ///@param with_history with history data
  ///@param with_employee with employee data
  ///@param with_history_employee with employee history data
  @Get(path: '/api/account/{id}')
  Future<chopper.Response<AccountResponse>> _apiAccountIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_employee') bool? withEmployee,
    @Query('with_history_employee') bool? withHistoryEmployee,
  });

  ///Update a account
  ///@param id Account ID
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
  ///@param id Account ID
  ///@param account_model Register account
  @Patch(path: '/api/account/{id}')
  Future<chopper.Response<AccountResponse>> _apiAccountIdPatch({
    @Path('id') required int? id,
    @Body() required Object? accountModel,
  });

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
  @Post(path: '/api/account/import')
  Future<chopper.Response<List<AccountResponse>>> _apiAccountImportPost(
      {@Body() required List<CreateAccount>? accountModel});

  ///List account
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_employee with employee data
  ///@param with_history_employee with employee history data
  Future<chopper.Response<ListAccount>> apiAccountListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withEmployee,
    bool? withHistoryEmployee,
  }) {
    generatedMapping.putIfAbsent(
        ListAccount, () => ListAccount.fromJsonFactory);

    return _apiAccountListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withEmployee: withEmployee,
        withHistoryEmployee: withHistoryEmployee);
  }

  ///List account
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_employee with employee data
  ///@param with_history_employee with employee history data
  @Get(path: '/api/account/list')
  Future<chopper.Response<ListAccount>> _apiAccountListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_employee') bool? withEmployee,
    @Query('with_history_employee') bool? withHistoryEmployee,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiAccountTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiAccountTotalGet();
  }

  ///Total records
  @Get(path: '/api/account/total')
  Future<chopper.Response<TotalCount>> _apiAccountTotalGet();

  ///Create a new city
  ///@param city_model Register city
  Future<chopper.Response<CityResponse>> apiCityPost(
      {required Object? cityModel}) {
    generatedMapping.putIfAbsent(CreateCity, () => CreateCity.fromJsonFactory);
    generatedMapping.putIfAbsent(
        CityResponse, () => CityResponse.fromJsonFactory);

    return _apiCityPost(cityModel: cityModel);
  }

  ///Create a new city
  ///@param city_model Register city
  @Post(path: '/api/city')
  Future<chopper.Response<CityResponse>> _apiCityPost(
      {@Body() required Object? cityModel});

  ///Get city by ID
  ///@param id City ID
  ///@param with_history with history data
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners nested data
  Future<chopper.Response<CityResponse>> apiCityIdGet({
    required int? id,
    bool? withHistory,
    bool? withGarages,
    bool? withGaragesOwners,
  }) {
    generatedMapping.putIfAbsent(
        CityResponse, () => CityResponse.fromJsonFactory);

    return _apiCityIdGet(
        id: id,
        withHistory: withHistory,
        withGarages: withGarages,
        withGaragesOwners: withGaragesOwners);
  }

  ///Get city by ID
  ///@param id City ID
  ///@param with_history with history data
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners nested data
  @Get(path: '/api/city/{id}')
  Future<chopper.Response<CityResponse>> _apiCityIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_garages') bool? withGarages,
    @Query('with_garages_owners') bool? withGaragesOwners,
  });

  ///Update a city
  ///@param id City ID
  ///@param city_model Register city
  Future<chopper.Response<CityResponse>> apiCityIdPatch({
    required int? id,
    required Object? cityModel,
  }) {
    generatedMapping.putIfAbsent(UpdateCity, () => UpdateCity.fromJsonFactory);
    generatedMapping.putIfAbsent(
        CityResponse, () => CityResponse.fromJsonFactory);

    return _apiCityIdPatch(id: id, cityModel: cityModel);
  }

  ///Update a city
  ///@param id City ID
  ///@param city_model Register city
  @Patch(path: '/api/city/{id}')
  Future<chopper.Response<CityResponse>> _apiCityIdPatch({
    @Path('id') required int? id,
    @Body() required Object? cityModel,
  });

  ///Create many city
  ///@param city_model Register city
  Future<chopper.Response<List<CityResponse>>> apiCityImportPost(
      {required List<CreateCity>? cityModel}) {
    generatedMapping.putIfAbsent(
        CityResponse, () => CityResponse.fromJsonFactory);

    return _apiCityImportPost(cityModel: cityModel);
  }

  ///Create many city
  ///@param city_model Register city
  @Post(path: '/api/city/import')
  Future<chopper.Response<List<CityResponse>>> _apiCityImportPost(
      {@Body() required List<CreateCity>? cityModel});

  ///List city
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners data
  Future<chopper.Response<ListCity>> apiCityListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withGarages,
    bool? withGaragesOwners,
  }) {
    generatedMapping.putIfAbsent(ListCity, () => ListCity.fromJsonFactory);

    return _apiCityListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withGarages: withGarages,
        withGaragesOwners: withGaragesOwners);
  }

  ///List city
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners data
  @Get(path: '/api/city/list')
  Future<chopper.Response<ListCity>> _apiCityListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_garages') bool? withGarages,
    @Query('with_garages_owners') bool? withGaragesOwners,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiCityTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiCityTotalGet();
  }

  ///Total records
  @Get(path: '/api/city/total')
  Future<chopper.Response<TotalCount>> _apiCityTotalGet();

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
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks nested data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks nested data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks nested data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners nested data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks nested data
  ///@param with_created_tasks_attached_to with created_tasks attached_to nested data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks nested data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to nested data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_assigned_tasks with assigned_tasks data
  ///@param with_permission with permission data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts nested data
  ///@param with_account with account data
  Future<chopper.Response<EmployeeResponse>> apiEmployeeIdGet({
    required int? id,
    bool? withHistory,
    bool? withCreatedVehicles,
    bool? withCreatedVehiclesVehicleTasks,
    bool? withUpdatedVehicles,
    bool? withUpdatedVehiclesVehicleTasks,
    bool? withDeletedVehicles,
    bool? withDeletedVehiclesVehicleTasks,
    bool? withCreatedGarages,
    bool? withCreatedGaragesOwners,
    bool? withCreatedTasks,
    bool? withCreatedTasksSubTasks,
    bool? withCreatedTasksAttachedTo,
    bool? withUpdatedTasks,
    bool? withUpdatedTasksSubTasks,
    bool? withUpdatedTasksAttachedTo,
    bool? withCreatedVehicleTasks,
    bool? withAssignedTasks,
    bool? withPermission,
    bool? withRequests,
    bool? withRequestsSpareParts,
    bool? withAccount,
  }) {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _apiEmployeeIdGet(
        id: id,
        withHistory: withHistory,
        withCreatedVehicles: withCreatedVehicles,
        withCreatedVehiclesVehicleTasks: withCreatedVehiclesVehicleTasks,
        withUpdatedVehicles: withUpdatedVehicles,
        withUpdatedVehiclesVehicleTasks: withUpdatedVehiclesVehicleTasks,
        withDeletedVehicles: withDeletedVehicles,
        withDeletedVehiclesVehicleTasks: withDeletedVehiclesVehicleTasks,
        withCreatedGarages: withCreatedGarages,
        withCreatedGaragesOwners: withCreatedGaragesOwners,
        withCreatedTasks: withCreatedTasks,
        withCreatedTasksSubTasks: withCreatedTasksSubTasks,
        withCreatedTasksAttachedTo: withCreatedTasksAttachedTo,
        withUpdatedTasks: withUpdatedTasks,
        withUpdatedTasksSubTasks: withUpdatedTasksSubTasks,
        withUpdatedTasksAttachedTo: withUpdatedTasksAttachedTo,
        withCreatedVehicleTasks: withCreatedVehicleTasks,
        withAssignedTasks: withAssignedTasks,
        withPermission: withPermission,
        withRequests: withRequests,
        withRequestsSpareParts: withRequestsSpareParts,
        withAccount: withAccount);
  }

  ///Get employee by ID
  ///@param id Employee ID
  ///@param with_history with history data
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks nested data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks nested data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks nested data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners nested data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks nested data
  ///@param with_created_tasks_attached_to with created_tasks attached_to nested data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks nested data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to nested data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_assigned_tasks with assigned_tasks data
  ///@param with_permission with permission data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts nested data
  ///@param with_account with account data
  @Get(path: '/api/employee/{id}')
  Future<chopper.Response<EmployeeResponse>> _apiEmployeeIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_created_vehicles_vehicle_tasks')
    bool? withCreatedVehiclesVehicleTasks,
    @Query('with_updated_vehicles') bool? withUpdatedVehicles,
    @Query('with_updated_vehicles_vehicle_tasks')
    bool? withUpdatedVehiclesVehicleTasks,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_deleted_vehicles_vehicle_tasks')
    bool? withDeletedVehiclesVehicleTasks,
    @Query('with_created_garages') bool? withCreatedGarages,
    @Query('with_created_garages_owners') bool? withCreatedGaragesOwners,
    @Query('with_created_tasks') bool? withCreatedTasks,
    @Query('with_created_tasks_sub_tasks') bool? withCreatedTasksSubTasks,
    @Query('with_created_tasks_attached_to') bool? withCreatedTasksAttachedTo,
    @Query('with_updated_tasks') bool? withUpdatedTasks,
    @Query('with_updated_tasks_sub_tasks') bool? withUpdatedTasksSubTasks,
    @Query('with_updated_tasks_attached_to') bool? withUpdatedTasksAttachedTo,
    @Query('with_created_vehicle_tasks') bool? withCreatedVehicleTasks,
    @Query('with_assigned_tasks') bool? withAssignedTasks,
    @Query('with_permission') bool? withPermission,
    @Query('with_requests') bool? withRequests,
    @Query('with_requests_spare_parts') bool? withRequestsSpareParts,
    @Query('with_account') bool? withAccount,
  });

  ///Update a employee
  ///@param id Employee ID
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
  ///@param id Employee ID
  ///@param employee_model Register employee
  @Patch(path: '/api/employee/{id}')
  Future<chopper.Response<EmployeeResponse>> _apiEmployeeIdPatch({
    @Path('id') required int? id,
    @Body() required Object? employeeModel,
  });

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
  @Post(path: '/api/employee/import')
  Future<chopper.Response<List<EmployeeResponse>>> _apiEmployeeImportPost(
      {@Body() required List<CreateEmployee>? employeeModel});

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks data
  ///@param with_created_tasks_attached_to with created_tasks attached_to data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_assigned_tasks with assigned_tasks data
  ///@param with_permission with permission data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts data
  ///@param with_account with account data
  Future<chopper.Response<ListEmployee>> apiEmployeeListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withCreatedVehicles,
    bool? withCreatedVehiclesVehicleTasks,
    bool? withUpdatedVehicles,
    bool? withUpdatedVehiclesVehicleTasks,
    bool? withDeletedVehicles,
    bool? withDeletedVehiclesVehicleTasks,
    bool? withCreatedGarages,
    bool? withCreatedGaragesOwners,
    bool? withCreatedTasks,
    bool? withCreatedTasksSubTasks,
    bool? withCreatedTasksAttachedTo,
    bool? withUpdatedTasks,
    bool? withUpdatedTasksSubTasks,
    bool? withUpdatedTasksAttachedTo,
    bool? withCreatedVehicleTasks,
    bool? withAssignedTasks,
    bool? withPermission,
    bool? withRequests,
    bool? withRequestsSpareParts,
    bool? withAccount,
  }) {
    generatedMapping.putIfAbsent(
        ListEmployee, () => ListEmployee.fromJsonFactory);

    return _apiEmployeeListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withCreatedVehicles: withCreatedVehicles,
        withCreatedVehiclesVehicleTasks: withCreatedVehiclesVehicleTasks,
        withUpdatedVehicles: withUpdatedVehicles,
        withUpdatedVehiclesVehicleTasks: withUpdatedVehiclesVehicleTasks,
        withDeletedVehicles: withDeletedVehicles,
        withDeletedVehiclesVehicleTasks: withDeletedVehiclesVehicleTasks,
        withCreatedGarages: withCreatedGarages,
        withCreatedGaragesOwners: withCreatedGaragesOwners,
        withCreatedTasks: withCreatedTasks,
        withCreatedTasksSubTasks: withCreatedTasksSubTasks,
        withCreatedTasksAttachedTo: withCreatedTasksAttachedTo,
        withUpdatedTasks: withUpdatedTasks,
        withUpdatedTasksSubTasks: withUpdatedTasksSubTasks,
        withUpdatedTasksAttachedTo: withUpdatedTasksAttachedTo,
        withCreatedVehicleTasks: withCreatedVehicleTasks,
        withAssignedTasks: withAssignedTasks,
        withPermission: withPermission,
        withRequests: withRequests,
        withRequestsSpareParts: withRequestsSpareParts,
        withAccount: withAccount);
  }

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks data
  ///@param with_created_tasks_attached_to with created_tasks attached_to data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_assigned_tasks with assigned_tasks data
  ///@param with_permission with permission data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts data
  ///@param with_account with account data
  @Get(path: '/api/employee/list')
  Future<chopper.Response<ListEmployee>> _apiEmployeeListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_created_vehicles_vehicle_tasks')
    bool? withCreatedVehiclesVehicleTasks,
    @Query('with_updated_vehicles') bool? withUpdatedVehicles,
    @Query('with_updated_vehicles_vehicle_tasks')
    bool? withUpdatedVehiclesVehicleTasks,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_deleted_vehicles_vehicle_tasks')
    bool? withDeletedVehiclesVehicleTasks,
    @Query('with_created_garages') bool? withCreatedGarages,
    @Query('with_created_garages_owners') bool? withCreatedGaragesOwners,
    @Query('with_created_tasks') bool? withCreatedTasks,
    @Query('with_created_tasks_sub_tasks') bool? withCreatedTasksSubTasks,
    @Query('with_created_tasks_attached_to') bool? withCreatedTasksAttachedTo,
    @Query('with_updated_tasks') bool? withUpdatedTasks,
    @Query('with_updated_tasks_sub_tasks') bool? withUpdatedTasksSubTasks,
    @Query('with_updated_tasks_attached_to') bool? withUpdatedTasksAttachedTo,
    @Query('with_created_vehicle_tasks') bool? withCreatedVehicleTasks,
    @Query('with_assigned_tasks') bool? withAssignedTasks,
    @Query('with_permission') bool? withPermission,
    @Query('with_requests') bool? withRequests,
    @Query('with_requests_spare_parts') bool? withRequestsSpareParts,
    @Query('with_account') bool? withAccount,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiEmployeeTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiEmployeeTotalGet();
  }

  ///Total records
  @Get(path: '/api/employee/total')
  Future<chopper.Response<TotalCount>> _apiEmployeeTotalGet();

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
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles nested data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_city with city data
  ///@param with_history_city with city history data
  Future<chopper.Response<GarageResponse>> apiGarageIdGet({
    required int? id,
    bool? withHistory,
    bool? withOwners,
    bool? withOwnersVehicles,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withCity,
    bool? withHistoryCity,
  }) {
    generatedMapping.putIfAbsent(
        GarageResponse, () => GarageResponse.fromJsonFactory);

    return _apiGarageIdGet(
        id: id,
        withHistory: withHistory,
        withOwners: withOwners,
        withOwnersVehicles: withOwnersVehicles,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withCity: withCity,
        withHistoryCity: withHistoryCity);
  }

  ///Get garage by ID
  ///@param id Garage ID
  ///@param with_history with history data
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles nested data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_city with city data
  ///@param with_history_city with city history data
  @Get(path: '/api/garage/{id}')
  Future<chopper.Response<GarageResponse>> _apiGarageIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_owners') bool? withOwners,
    @Query('with_owners_vehicles') bool? withOwnersVehicles,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_city') bool? withCity,
    @Query('with_history_city') bool? withHistoryCity,
  });

  ///Update a garage
  ///@param id Garage ID
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
  ///@param id Garage ID
  ///@param garage_model Register garage
  @Patch(path: '/api/garage/{id}')
  Future<chopper.Response<GarageResponse>> _apiGarageIdPatch({
    @Path('id') required int? id,
    @Body() required Object? garageModel,
  });

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
  @Post(path: '/api/garage/import')
  Future<chopper.Response<List<GarageResponse>>> _apiGarageImportPost(
      {@Body() required List<CreateGarage>? garageModel});

  ///List garage
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_city with city data
  ///@param with_history_city with city history data
  Future<chopper.Response<ListGarage>> apiGarageListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withOwners,
    bool? withOwnersVehicles,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withCity,
    bool? withHistoryCity,
  }) {
    generatedMapping.putIfAbsent(ListGarage, () => ListGarage.fromJsonFactory);

    return _apiGarageListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withOwners: withOwners,
        withOwnersVehicles: withOwnersVehicles,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withCity: withCity,
        withHistoryCity: withHistoryCity);
  }

  ///List garage
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_city with city data
  ///@param with_history_city with city history data
  @Get(path: '/api/garage/list')
  Future<chopper.Response<ListGarage>> _apiGarageListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_owners') bool? withOwners,
    @Query('with_owners_vehicles') bool? withOwnersVehicles,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_city') bool? withCity,
    @Query('with_history_city') bool? withHistoryCity,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiGarageTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiGarageTotalGet();
  }

  ///Total records
  @Get(path: '/api/garage/total')
  Future<chopper.Response<TotalCount>> _apiGarageTotalGet();

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
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks nested data
  ///@param with_garage with garage data
  ///@param with_history_garage with garage history data
  Future<chopper.Response<OwnerResponse>> apiOwnerIdGet({
    required int? id,
    bool? withHistory,
    bool? withVehicles,
    bool? withVehiclesVehicleTasks,
    bool? withGarage,
    bool? withHistoryGarage,
  }) {
    generatedMapping.putIfAbsent(
        OwnerResponse, () => OwnerResponse.fromJsonFactory);

    return _apiOwnerIdGet(
        id: id,
        withHistory: withHistory,
        withVehicles: withVehicles,
        withVehiclesVehicleTasks: withVehiclesVehicleTasks,
        withGarage: withGarage,
        withHistoryGarage: withHistoryGarage);
  }

  ///Get owner by ID
  ///@param id Owner ID
  ///@param with_history with history data
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks nested data
  ///@param with_garage with garage data
  ///@param with_history_garage with garage history data
  @Get(path: '/api/owner/{id}')
  Future<chopper.Response<OwnerResponse>> _apiOwnerIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicles') bool? withVehicles,
    @Query('with_vehicles_vehicle_tasks') bool? withVehiclesVehicleTasks,
    @Query('with_garage') bool? withGarage,
    @Query('with_history_garage') bool? withHistoryGarage,
  });

  ///Update a owner
  ///@param id Owner ID
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
  ///@param id Owner ID
  ///@param owner_model Register owner
  @Patch(path: '/api/owner/{id}')
  Future<chopper.Response<OwnerResponse>> _apiOwnerIdPatch({
    @Path('id') required int? id,
    @Body() required Object? ownerModel,
  });

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
  @Post(path: '/api/owner/import')
  Future<chopper.Response<List<OwnerResponse>>> _apiOwnerImportPost(
      {@Body() required List<CreateOwner>? ownerModel});

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks data
  ///@param with_garage with garage data
  ///@param with_history_garage with garage history data
  Future<chopper.Response<ListOwner>> apiOwnerListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withVehicles,
    bool? withVehiclesVehicleTasks,
    bool? withGarage,
    bool? withHistoryGarage,
  }) {
    generatedMapping.putIfAbsent(ListOwner, () => ListOwner.fromJsonFactory);

    return _apiOwnerListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withVehicles: withVehicles,
        withVehiclesVehicleTasks: withVehiclesVehicleTasks,
        withGarage: withGarage,
        withHistoryGarage: withHistoryGarage);
  }

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks data
  ///@param with_garage with garage data
  ///@param with_history_garage with garage history data
  @Get(path: '/api/owner/list')
  Future<chopper.Response<ListOwner>> _apiOwnerListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicles') bool? withVehicles,
    @Query('with_vehicles_vehicle_tasks') bool? withVehiclesVehicleTasks,
    @Query('with_garage') bool? withGarage,
    @Query('with_history_garage') bool? withHistoryGarage,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiOwnerTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiOwnerTotalGet();
  }

  ///Total records
  @Get(path: '/api/owner/total')
  Future<chopper.Response<TotalCount>> _apiOwnerTotalGet();

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
  ///@param with_employees with employees data
  ///@param with_history_employees with employees history data
  Future<chopper.Response<PermissionResponse>> apiPermissionIdGet({
    required int? id,
    bool? withHistory,
    bool? withEmployees,
    bool? withHistoryEmployees,
  }) {
    generatedMapping.putIfAbsent(
        PermissionResponse, () => PermissionResponse.fromJsonFactory);

    return _apiPermissionIdGet(
        id: id,
        withHistory: withHistory,
        withEmployees: withEmployees,
        withHistoryEmployees: withHistoryEmployees);
  }

  ///Get permission by ID
  ///@param id Permission ID
  ///@param with_history with history data
  ///@param with_employees with employees data
  ///@param with_history_employees with employees history data
  @Get(path: '/api/permission/{id}')
  Future<chopper.Response<PermissionResponse>> _apiPermissionIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_employees') bool? withEmployees,
    @Query('with_history_employees') bool? withHistoryEmployees,
  });

  ///Update a permission
  ///@param id Permission ID
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
  ///@param id Permission ID
  ///@param permission_model Register permission
  @Patch(path: '/api/permission/{id}')
  Future<chopper.Response<PermissionResponse>> _apiPermissionIdPatch({
    @Path('id') required int? id,
    @Body() required Object? permissionModel,
  });

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
  @Post(path: '/api/permission/import')
  Future<chopper.Response<List<PermissionResponse>>> _apiPermissionImportPost(
      {@Body() required List<CreatePermission>? permissionModel});

  ///List permission
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_employees with employees data
  ///@param with_history_employees with employees history data
  Future<chopper.Response<ListPermission>> apiPermissionListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withEmployees,
    bool? withHistoryEmployees,
  }) {
    generatedMapping.putIfAbsent(
        ListPermission, () => ListPermission.fromJsonFactory);

    return _apiPermissionListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withEmployees: withEmployees,
        withHistoryEmployees: withHistoryEmployees);
  }

  ///List permission
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_employees with employees data
  ///@param with_history_employees with employees history data
  @Get(path: '/api/permission/list')
  Future<chopper.Response<ListPermission>> _apiPermissionListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_employees') bool? withEmployees,
    @Query('with_history_employees') bool? withHistoryEmployees,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiPermissionTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiPermissionTotalGet();
  }

  ///Total records
  @Get(path: '/api/permission/total')
  Future<chopper.Response<TotalCount>> _apiPermissionTotalGet();

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
  ///@param with_request with request data
  ///@param with_history_request with request history data
  ///@param with_supplier with supplier data
  ///@param with_history_supplier with supplier history data
  Future<chopper.Response<SparePartResponse>> apiSparePartIdGet({
    required int? id,
    bool? withHistory,
    bool? withRequest,
    bool? withHistoryRequest,
    bool? withSupplier,
    bool? withHistorySupplier,
  }) {
    generatedMapping.putIfAbsent(
        SparePartResponse, () => SparePartResponse.fromJsonFactory);

    return _apiSparePartIdGet(
        id: id,
        withHistory: withHistory,
        withRequest: withRequest,
        withHistoryRequest: withHistoryRequest,
        withSupplier: withSupplier,
        withHistorySupplier: withHistorySupplier);
  }

  ///Get spare_part by ID
  ///@param id SparePart ID
  ///@param with_history with history data
  ///@param with_request with request data
  ///@param with_history_request with request history data
  ///@param with_supplier with supplier data
  ///@param with_history_supplier with supplier history data
  @Get(path: '/api/spare_part/{id}')
  Future<chopper.Response<SparePartResponse>> _apiSparePartIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_request') bool? withRequest,
    @Query('with_history_request') bool? withHistoryRequest,
    @Query('with_supplier') bool? withSupplier,
    @Query('with_history_supplier') bool? withHistorySupplier,
  });

  ///Update a spare_part
  ///@param id SparePart ID
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
  ///@param id SparePart ID
  ///@param spare_part_model Register spare_part
  @Patch(path: '/api/spare_part/{id}')
  Future<chopper.Response<SparePartResponse>> _apiSparePartIdPatch({
    @Path('id') required int? id,
    @Body() required Object? sparePartModel,
  });

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
  @Post(path: '/api/spare_part/import')
  Future<chopper.Response<List<SparePartResponse>>> _apiSparePartImportPost(
      {@Body() required List<CreateSparePart>? sparePartModel});

  ///List spare_part
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_request with request data
  ///@param with_history_request with request history data
  ///@param with_supplier with supplier data
  ///@param with_history_supplier with supplier history data
  Future<chopper.Response<ListSparePart>> apiSparePartListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withRequest,
    bool? withHistoryRequest,
    bool? withSupplier,
    bool? withHistorySupplier,
  }) {
    generatedMapping.putIfAbsent(
        ListSparePart, () => ListSparePart.fromJsonFactory);

    return _apiSparePartListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withRequest: withRequest,
        withHistoryRequest: withHistoryRequest,
        withSupplier: withSupplier,
        withHistorySupplier: withHistorySupplier);
  }

  ///List spare_part
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_request with request data
  ///@param with_history_request with request history data
  ///@param with_supplier with supplier data
  ///@param with_history_supplier with supplier history data
  @Get(path: '/api/spare_part/list')
  Future<chopper.Response<ListSparePart>> _apiSparePartListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_request') bool? withRequest,
    @Query('with_history_request') bool? withHistoryRequest,
    @Query('with_supplier') bool? withSupplier,
    @Query('with_history_supplier') bool? withHistorySupplier,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiSparePartTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiSparePartTotalGet();
  }

  ///Total records
  @Get(path: '/api/spare_part/total')
  Future<chopper.Response<TotalCount>> _apiSparePartTotalGet();

  ///Create a new spare_part_request
  ///@param spare_part_request_model Register spare_part_request
  Future<chopper.Response<SparePartRequestResponse>> apiSparePartRequestPost(
      {required Object? sparePartRequestModel}) {
    generatedMapping.putIfAbsent(
        CreateSparePartRequest, () => CreateSparePartRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(SparePartRequestResponse,
        () => SparePartRequestResponse.fromJsonFactory);

    return _apiSparePartRequestPost(
        sparePartRequestModel: sparePartRequestModel);
  }

  ///Create a new spare_part_request
  ///@param spare_part_request_model Register spare_part_request
  @Post(path: '/api/spare_part_request')
  Future<chopper.Response<SparePartRequestResponse>> _apiSparePartRequestPost(
      {@Body() required Object? sparePartRequestModel});

  ///Get spare_part_request by ID
  ///@param id SparePartRequest ID
  ///@param with_history with history data
  ///@param with_spare_parts with spare_parts data
  ///@param with_request_by with request_by data
  ///@param with_history_request_by with request_by history data
  Future<chopper.Response<SparePartRequestResponse>> apiSparePartRequestIdGet({
    required int? id,
    bool? withHistory,
    bool? withSpareParts,
    bool? withRequestBy,
    bool? withHistoryRequestBy,
  }) {
    generatedMapping.putIfAbsent(SparePartRequestResponse,
        () => SparePartRequestResponse.fromJsonFactory);

    return _apiSparePartRequestIdGet(
        id: id,
        withHistory: withHistory,
        withSpareParts: withSpareParts,
        withRequestBy: withRequestBy,
        withHistoryRequestBy: withHistoryRequestBy);
  }

  ///Get spare_part_request by ID
  ///@param id SparePartRequest ID
  ///@param with_history with history data
  ///@param with_spare_parts with spare_parts data
  ///@param with_request_by with request_by data
  ///@param with_history_request_by with request_by history data
  @Get(path: '/api/spare_part_request/{id}')
  Future<chopper.Response<SparePartRequestResponse>> _apiSparePartRequestIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_spare_parts') bool? withSpareParts,
    @Query('with_request_by') bool? withRequestBy,
    @Query('with_history_request_by') bool? withHistoryRequestBy,
  });

  ///Update a spare_part_request
  ///@param id SparePartRequest ID
  ///@param spare_part_request_model Register spare_part_request
  Future<chopper.Response<SparePartRequestResponse>>
      apiSparePartRequestIdPatch({
    required int? id,
    required Object? sparePartRequestModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateSparePartRequest, () => UpdateSparePartRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(SparePartRequestResponse,
        () => SparePartRequestResponse.fromJsonFactory);

    return _apiSparePartRequestIdPatch(
        id: id, sparePartRequestModel: sparePartRequestModel);
  }

  ///Update a spare_part_request
  ///@param id SparePartRequest ID
  ///@param spare_part_request_model Register spare_part_request
  @Patch(path: '/api/spare_part_request/{id}')
  Future<chopper.Response<SparePartRequestResponse>>
      _apiSparePartRequestIdPatch({
    @Path('id') required int? id,
    @Body() required Object? sparePartRequestModel,
  });

  ///Create many spare_part_request
  ///@param spare_part_request_model Register spare_part_request
  Future<chopper.Response<List<SparePartRequestResponse>>>
      apiSparePartRequestImportPost(
          {required List<CreateSparePartRequest>? sparePartRequestModel}) {
    generatedMapping.putIfAbsent(SparePartRequestResponse,
        () => SparePartRequestResponse.fromJsonFactory);

    return _apiSparePartRequestImportPost(
        sparePartRequestModel: sparePartRequestModel);
  }

  ///Create many spare_part_request
  ///@param spare_part_request_model Register spare_part_request
  @Post(path: '/api/spare_part_request/import')
  Future<chopper.Response<List<SparePartRequestResponse>>>
      _apiSparePartRequestImportPost(
          {@Body()
          required List<CreateSparePartRequest>? sparePartRequestModel});

  ///List spare_part_request
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_spare_parts with spare_parts data
  ///@param with_request_by with request_by data
  ///@param with_history_request_by with request_by history data
  Future<chopper.Response<ListSparePartRequest>> apiSparePartRequestListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withSpareParts,
    bool? withRequestBy,
    bool? withHistoryRequestBy,
  }) {
    generatedMapping.putIfAbsent(
        ListSparePartRequest, () => ListSparePartRequest.fromJsonFactory);

    return _apiSparePartRequestListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withSpareParts: withSpareParts,
        withRequestBy: withRequestBy,
        withHistoryRequestBy: withHistoryRequestBy);
  }

  ///List spare_part_request
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_spare_parts with spare_parts data
  ///@param with_request_by with request_by data
  ///@param with_history_request_by with request_by history data
  @Get(path: '/api/spare_part_request/list')
  Future<chopper.Response<ListSparePartRequest>> _apiSparePartRequestListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_spare_parts') bool? withSpareParts,
    @Query('with_request_by') bool? withRequestBy,
    @Query('with_history_request_by') bool? withHistoryRequestBy,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiSparePartRequestTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiSparePartRequestTotalGet();
  }

  ///Total records
  @Get(path: '/api/spare_part_request/total')
  Future<chopper.Response<TotalCount>> _apiSparePartRequestTotalGet();

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
  ///@param with_spare_parts with spare_parts data
  Future<chopper.Response<SupplierResponse>> apiSupplierIdGet({
    required int? id,
    bool? withHistory,
    bool? withSpareParts,
  }) {
    generatedMapping.putIfAbsent(
        SupplierResponse, () => SupplierResponse.fromJsonFactory);

    return _apiSupplierIdGet(
        id: id, withHistory: withHistory, withSpareParts: withSpareParts);
  }

  ///Get supplier by ID
  ///@param id Supplier ID
  ///@param with_history with history data
  ///@param with_spare_parts with spare_parts data
  @Get(path: '/api/supplier/{id}')
  Future<chopper.Response<SupplierResponse>> _apiSupplierIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_spare_parts') bool? withSpareParts,
  });

  ///Update a supplier
  ///@param id Supplier ID
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
  ///@param id Supplier ID
  ///@param supplier_model Register supplier
  @Patch(path: '/api/supplier/{id}')
  Future<chopper.Response<SupplierResponse>> _apiSupplierIdPatch({
    @Path('id') required int? id,
    @Body() required Object? supplierModel,
  });

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
  @Post(path: '/api/supplier/import')
  Future<chopper.Response<List<SupplierResponse>>> _apiSupplierImportPost(
      {@Body() required List<CreateSupplier>? supplierModel});

  ///List supplier
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_spare_parts with spare_parts data
  Future<chopper.Response<ListSupplier>> apiSupplierListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withSpareParts,
  }) {
    generatedMapping.putIfAbsent(
        ListSupplier, () => ListSupplier.fromJsonFactory);

    return _apiSupplierListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withSpareParts: withSpareParts);
  }

  ///List supplier
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_spare_parts with spare_parts data
  @Get(path: '/api/supplier/list')
  Future<chopper.Response<ListSupplier>> _apiSupplierListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_spare_parts') bool? withSpareParts,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiSupplierTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiSupplierTotalGet();
  }

  ///Total records
  @Get(path: '/api/supplier/total')
  Future<chopper.Response<TotalCount>> _apiSupplierTotalGet();

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
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_sub_tasks with sub_tasks sub_tasks nested data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to nested data
  ///@param with_attached_to with attached_to data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  Future<chopper.Response<TaskResponse>> apiTaskIdGet({
    required int? id,
    bool? withHistory,
    bool? withSubTasks,
    bool? withSubTasksSubTasks,
    bool? withSubTasksAttachedTo,
    bool? withAttachedTo,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withUpdatedBy,
    bool? withHistoryUpdatedBy,
  }) {
    generatedMapping.putIfAbsent(
        TaskResponse, () => TaskResponse.fromJsonFactory);

    return _apiTaskIdGet(
        id: id,
        withHistory: withHistory,
        withSubTasks: withSubTasks,
        withSubTasksSubTasks: withSubTasksSubTasks,
        withSubTasksAttachedTo: withSubTasksAttachedTo,
        withAttachedTo: withAttachedTo,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withHistoryUpdatedBy: withHistoryUpdatedBy);
  }

  ///Get task by ID
  ///@param id Task ID
  ///@param with_history with history data
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_sub_tasks with sub_tasks sub_tasks nested data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to nested data
  ///@param with_attached_to with attached_to data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  @Get(path: '/api/task/{id}')
  Future<chopper.Response<TaskResponse>> _apiTaskIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_sub_tasks_sub_tasks') bool? withSubTasksSubTasks,
    @Query('with_sub_tasks_attached_to') bool? withSubTasksAttachedTo,
    @Query('with_attached_to') bool? withAttachedTo,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_history_updated_by') bool? withHistoryUpdatedBy,
  });

  ///Update a task
  ///@param id Task ID
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
  ///@param id Task ID
  ///@param task_model Register task
  @Patch(path: '/api/task/{id}')
  Future<chopper.Response<TaskResponse>> _apiTaskIdPatch({
    @Path('id') required int? id,
    @Body() required Object? taskModel,
  });

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
  @Post(path: '/api/task/import')
  Future<chopper.Response<List<TaskResponse>>> _apiTaskImportPost(
      {@Body() required List<CreateTask>? taskModel});

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_sub_tasks with sub_tasks sub_tasks data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to data
  ///@param with_attached_to with attached_to data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  Future<chopper.Response<ListTask>> apiTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withSubTasks,
    bool? withSubTasksSubTasks,
    bool? withSubTasksAttachedTo,
    bool? withAttachedTo,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withUpdatedBy,
    bool? withHistoryUpdatedBy,
  }) {
    generatedMapping.putIfAbsent(ListTask, () => ListTask.fromJsonFactory);

    return _apiTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withSubTasks: withSubTasks,
        withSubTasksSubTasks: withSubTasksSubTasks,
        withSubTasksAttachedTo: withSubTasksAttachedTo,
        withAttachedTo: withAttachedTo,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withHistoryUpdatedBy: withHistoryUpdatedBy);
  }

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_sub_tasks with sub_tasks sub_tasks data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to data
  ///@param with_attached_to with attached_to data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  @Get(path: '/api/task/list')
  Future<chopper.Response<ListTask>> _apiTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_sub_tasks_sub_tasks') bool? withSubTasksSubTasks,
    @Query('with_sub_tasks_attached_to') bool? withSubTasksAttachedTo,
    @Query('with_attached_to') bool? withAttachedTo,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_history_updated_by') bool? withHistoryUpdatedBy,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiTaskTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/task/total')
  Future<chopper.Response<TotalCount>> _apiTaskTotalGet();

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
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  ///@param with_deleted_by with deleted_by data
  ///@param with_history_deleted_by with deleted_by history data
  ///@param with_owner with owner data
  ///@param with_history_owner with owner history data
  Future<chopper.Response<VehicleResponse>> apiVehicleIdGet({
    required int? id,
    bool? withHistory,
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withUpdatedBy,
    bool? withHistoryUpdatedBy,
    bool? withDeletedBy,
    bool? withHistoryDeletedBy,
    bool? withOwner,
    bool? withHistoryOwner,
  }) {
    generatedMapping.putIfAbsent(
        VehicleResponse, () => VehicleResponse.fromJsonFactory);

    return _apiVehicleIdGet(
        id: id,
        withHistory: withHistory,
        withVehicleTasks: withVehicleTasks,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withHistoryUpdatedBy: withHistoryUpdatedBy,
        withDeletedBy: withDeletedBy,
        withHistoryDeletedBy: withHistoryDeletedBy,
        withOwner: withOwner,
        withHistoryOwner: withHistoryOwner);
  }

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param with_history with history data
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  ///@param with_deleted_by with deleted_by data
  ///@param with_history_deleted_by with deleted_by history data
  ///@param with_owner with owner data
  ///@param with_history_owner with owner history data
  @Get(path: '/api/vehicle/{id}')
  Future<chopper.Response<VehicleResponse>> _apiVehicleIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_history_updated_by') bool? withHistoryUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
    @Query('with_history_deleted_by') bool? withHistoryDeletedBy,
    @Query('with_owner') bool? withOwner,
    @Query('with_history_owner') bool? withHistoryOwner,
  });

  ///Update a vehicle
  ///@param id Vehicle ID
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
  ///@param id Vehicle ID
  ///@param vehicle_model Register vehicle
  @Patch(path: '/api/vehicle/{id}')
  Future<chopper.Response<VehicleResponse>> _apiVehicleIdPatch({
    @Path('id') required int? id,
    @Body() required Object? vehicleModel,
  });

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
  @Post(path: '/api/vehicle/import')
  Future<chopper.Response<List<VehicleResponse>>> _apiVehicleImportPost(
      {@Body() required List<CreateVehicle>? vehicleModel});

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  ///@param with_deleted_by with deleted_by data
  ///@param with_history_deleted_by with deleted_by history data
  ///@param with_owner with owner data
  ///@param with_history_owner with owner history data
  Future<chopper.Response<ListVehicle>> apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withUpdatedBy,
    bool? withHistoryUpdatedBy,
    bool? withDeletedBy,
    bool? withHistoryDeletedBy,
    bool? withOwner,
    bool? withHistoryOwner,
  }) {
    generatedMapping.putIfAbsent(
        ListVehicle, () => ListVehicle.fromJsonFactory);

    return _apiVehicleListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withVehicleTasks: withVehicleTasks,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withHistoryUpdatedBy: withHistoryUpdatedBy,
        withDeletedBy: withDeletedBy,
        withHistoryDeletedBy: withHistoryDeletedBy,
        withOwner: withOwner,
        withHistoryOwner: withHistoryOwner);
  }

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_updated_by with updated_by data
  ///@param with_history_updated_by with updated_by history data
  ///@param with_deleted_by with deleted_by data
  ///@param with_history_deleted_by with deleted_by history data
  ///@param with_owner with owner data
  ///@param with_history_owner with owner history data
  @Get(path: '/api/vehicle/list')
  Future<chopper.Response<ListVehicle>> _apiVehicleListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_history_updated_by') bool? withHistoryUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
    @Query('with_history_deleted_by') bool? withHistoryDeletedBy,
    @Query('with_owner') bool? withOwner,
    @Query('with_history_owner') bool? withHistoryOwner,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiVehicleTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiVehicleTotalGet();
  }

  ///Total records
  @Get(path: '/api/vehicle/total')
  Future<chopper.Response<TotalCount>> _apiVehicleTotalGet();

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
  ///@param with_vehicle with vehicle data
  ///@param with_history_vehicle with vehicle history data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_assigned_to with assigned_to data
  ///@param with_history_assigned_to with assigned_to history data
  ///@param with_task with task data
  ///@param with_history_task with task history data
  Future<chopper.Response<VehicleTaskResponse>> apiVehicleTaskIdGet({
    required int? id,
    bool? withHistory,
    bool? withVehicle,
    bool? withHistoryVehicle,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withAssignedTo,
    bool? withHistoryAssignedTo,
    bool? withTask,
    bool? withHistoryTask,
  }) {
    generatedMapping.putIfAbsent(
        VehicleTaskResponse, () => VehicleTaskResponse.fromJsonFactory);

    return _apiVehicleTaskIdGet(
        id: id,
        withHistory: withHistory,
        withVehicle: withVehicle,
        withHistoryVehicle: withHistoryVehicle,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withAssignedTo: withAssignedTo,
        withHistoryAssignedTo: withHistoryAssignedTo,
        withTask: withTask,
        withHistoryTask: withHistoryTask);
  }

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  ///@param with_history with history data
  ///@param with_vehicle with vehicle data
  ///@param with_history_vehicle with vehicle history data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_assigned_to with assigned_to data
  ///@param with_history_assigned_to with assigned_to history data
  ///@param with_task with task data
  ///@param with_history_task with task history data
  @Get(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<VehicleTaskResponse>> _apiVehicleTaskIdGet({
    @Path('id') required int? id,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicle') bool? withVehicle,
    @Query('with_history_vehicle') bool? withHistoryVehicle,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_assigned_to') bool? withAssignedTo,
    @Query('with_history_assigned_to') bool? withHistoryAssignedTo,
    @Query('with_task') bool? withTask,
    @Query('with_history_task') bool? withHistoryTask,
  });

  ///Update a vehicle_task
  ///@param id VehicleTask ID
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
  ///@param id VehicleTask ID
  ///@param vehicle_task_model Register vehicle_task
  @Patch(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<VehicleTaskResponse>> _apiVehicleTaskIdPatch({
    @Path('id') required int? id,
    @Body() required Object? vehicleTaskModel,
  });

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
  @Post(path: '/api/vehicle_task/import')
  Future<chopper.Response<List<VehicleTaskResponse>>> _apiVehicleTaskImportPost(
      {@Body() required List<CreateVehicleTask>? vehicleTaskModel});

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_vehicle with vehicle data
  ///@param with_history_vehicle with vehicle history data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_assigned_to with assigned_to data
  ///@param with_history_assigned_to with assigned_to history data
  ///@param with_task with task data
  ///@param with_history_task with task history data
  Future<chopper.Response<ListVehicleTask>> apiVehicleTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withHistory,
    bool? withVehicle,
    bool? withHistoryVehicle,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withAssignedTo,
    bool? withHistoryAssignedTo,
    bool? withTask,
    bool? withHistoryTask,
  }) {
    generatedMapping.putIfAbsent(
        ListVehicleTask, () => ListVehicleTask.fromJsonFactory);

    return _apiVehicleTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withHistory: withHistory,
        withVehicle: withVehicle,
        withHistoryVehicle: withHistoryVehicle,
        withCreatedBy: withCreatedBy,
        withHistoryCreatedBy: withHistoryCreatedBy,
        withAssignedTo: withAssignedTo,
        withHistoryAssignedTo: withHistoryAssignedTo,
        withTask: withTask,
        withHistoryTask: withHistoryTask);
  }

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_history with history data
  ///@param with_vehicle with vehicle data
  ///@param with_history_vehicle with vehicle history data
  ///@param with_created_by with created_by data
  ///@param with_history_created_by with created_by history data
  ///@param with_assigned_to with assigned_to data
  ///@param with_history_assigned_to with assigned_to history data
  ///@param with_task with task data
  ///@param with_history_task with task history data
  @Get(path: '/api/vehicle_task/list')
  Future<chopper.Response<ListVehicleTask>> _apiVehicleTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_history') bool? withHistory,
    @Query('with_vehicle') bool? withVehicle,
    @Query('with_history_vehicle') bool? withHistoryVehicle,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_history_created_by') bool? withHistoryCreatedBy,
    @Query('with_assigned_to') bool? withAssignedTo,
    @Query('with_history_assigned_to') bool? withHistoryAssignedTo,
    @Query('with_task') bool? withTask,
    @Query('with_history_task') bool? withHistoryTask,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiVehicleTaskTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiVehicleTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/vehicle_task/total')
  Future<chopper.Response<TotalCount>> _apiVehicleTaskTotalGet();

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

  ///Show the status of server.
  Future<chopper.Response<String>> healthGet() {
    return _healthGet();
  }

  ///Show the status of server.
  @Get(path: '/health')
  Future<chopper.Response<String>> _healthGet();
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
