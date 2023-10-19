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

  ///Delete Account record
  ///@param id Account ID
  Future<chopper.Response<String>> apiAccountIdDelete({required int? id}) {
    return _apiAccountIdDelete(id: id);
  }

  ///Delete Account record
  ///@param id Account ID
  @Delete(path: '/api/account/{id}')
  Future<chopper.Response<String>> _apiAccountIdDelete(
      {@Path('id') required int? id});

  ///Get account by ID
  ///@param id Account ID
  ///@param with_employee with employee data
  Future<chopper.Response<AccountResponse>> apiAccountIdGet({
    required int? id,
    bool? withEmployee,
  }) {
    generatedMapping.putIfAbsent(
        AccountResponse, () => AccountResponse.fromJsonFactory);

    return _apiAccountIdGet(id: id, withEmployee: withEmployee);
  }

  ///Get account by ID
  ///@param id Account ID
  ///@param with_employee with employee data
  @Get(path: '/api/account/{id}')
  Future<chopper.Response<AccountResponse>> _apiAccountIdGet({
    @Path('id') required int? id,
    @Query('with_employee') bool? withEmployee,
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

  ///Audit record
  ///@param id Account ID
  Future<chopper.Response<List<AccountAudit>>> apiAccountIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        AccountAudit, () => AccountAudit.fromJsonFactory);

    return _apiAccountIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Account ID
  @Get(path: '/api/account/{id}/audit')
  Future<chopper.Response<List<AccountAudit>>> _apiAccountIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_employee with employee data
  Future<chopper.Response<ListAccount>> apiAccountListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withEmployee,
  }) {
    generatedMapping.putIfAbsent(
        ListAccount, () => ListAccount.fromJsonFactory);

    return _apiAccountListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withEmployee: withEmployee);
  }

  ///List account
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_employee with employee data
  @Get(path: '/api/account/list')
  Future<chopper.Response<ListAccount>> _apiAccountListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_employee') bool? withEmployee,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiAccountTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiAccountTotalGet();
  }

  ///Total records
  @Get(path: '/api/account/total')
  Future<chopper.Response<TotalCount>> _apiAccountTotalGet();

  ///Seed activities
  Future<chopper.Response<Object>> apiActivitiesSeedPost() {
    return _apiActivitiesSeedPost();
  }

  ///Seed activities
  @Post(
    path: '/api/activities_seed',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _apiActivitiesSeedPost();

  ///Create a new activity
  ///@param activity_model Register activity
  Future<chopper.Response<ActivityResponse>> apiActivityPost(
      {required Object? activityModel}) {
    generatedMapping.putIfAbsent(
        CreateActivity, () => CreateActivity.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ActivityResponse, () => ActivityResponse.fromJsonFactory);

    return _apiActivityPost(activityModel: activityModel);
  }

  ///Create a new activity
  ///@param activity_model Register activity
  @Post(path: '/api/activity')
  Future<chopper.Response<ActivityResponse>> _apiActivityPost(
      {@Body() required Object? activityModel});

  ///Delete activity record
  ///@param id Activity ID
  Future<chopper.Response<String>> apiActivityIdDelete({required int? id}) {
    return _apiActivityIdDelete(id: id);
  }

  ///Delete activity record
  ///@param id Activity ID
  @Delete(path: '/api/activity/{id}')
  Future<chopper.Response<String>> _apiActivityIdDelete(
      {@Path('id') required int? id});

  ///Get activity by ID
  ///@param id Activity ID
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  Future<chopper.Response<ActivityResponse>> apiActivityIdGet({
    required int? id,
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        ActivityResponse, () => ActivityResponse.fromJsonFactory);

    return _apiActivityIdGet(
        id: id,
        withVehicleTasks: withVehicleTasks,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy);
  }

  ///Get activity by ID
  ///@param id Activity ID
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  @Get(path: '/api/activity/{id}')
  Future<chopper.Response<ActivityResponse>> _apiActivityIdGet({
    @Path('id') required int? id,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
  });

  ///Update a activity
  ///@param id Activity ID
  ///@param activity_model Register activity
  Future<chopper.Response<ActivityResponse>> apiActivityIdPatch({
    required int? id,
    required Object? activityModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateActivity, () => UpdateActivity.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ActivityResponse, () => ActivityResponse.fromJsonFactory);

    return _apiActivityIdPatch(id: id, activityModel: activityModel);
  }

  ///Update a activity
  ///@param id Activity ID
  ///@param activity_model Register activity
  @Patch(path: '/api/activity/{id}')
  Future<chopper.Response<ActivityResponse>> _apiActivityIdPatch({
    @Path('id') required int? id,
    @Body() required Object? activityModel,
  });

  ///Audit record
  ///@param id Activity ID
  Future<chopper.Response<List<ActivityAudit>>> apiActivityIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        ActivityAudit, () => ActivityAudit.fromJsonFactory);

    return _apiActivityIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Activity ID
  @Get(path: '/api/activity/{id}/audit')
  Future<chopper.Response<List<ActivityAudit>>> _apiActivityIdAuditGet(
      {@Path('id') required int? id});

  ///Create many activity
  ///@param activity_model Register activity
  Future<chopper.Response<List<ActivityResponse>>> apiActivityImportPost(
      {required List<CreateActivity>? activityModel}) {
    generatedMapping.putIfAbsent(
        ActivityResponse, () => ActivityResponse.fromJsonFactory);

    return _apiActivityImportPost(activityModel: activityModel);
  }

  ///Create many activity
  ///@param activity_model Register activity
  @Post(path: '/api/activity/import')
  Future<chopper.Response<List<ActivityResponse>>> _apiActivityImportPost(
      {@Body() required List<CreateActivity>? activityModel});

  ///List activity
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  Future<chopper.Response<ListActivity>> apiActivityListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        ListActivity, () => ListActivity.fromJsonFactory);

    return _apiActivityListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withVehicleTasks: withVehicleTasks,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy);
  }

  ///List activity
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  @Get(path: '/api/activity/list')
  Future<chopper.Response<ListActivity>> _apiActivityListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiActivityTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiActivityTotalGet();
  }

  ///Total records
  @Get(path: '/api/activity/total')
  Future<chopper.Response<TotalCount>> _apiActivityTotalGet();

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

  ///Delete city record
  ///@param id City ID
  Future<chopper.Response<String>> apiCityIdDelete({required int? id}) {
    return _apiCityIdDelete(id: id);
  }

  ///Delete city record
  ///@param id City ID
  @Delete(path: '/api/city/{id}')
  Future<chopper.Response<String>> _apiCityIdDelete(
      {@Path('id') required int? id});

  ///Get city by ID
  ///@param id City ID
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners nested data
  ///@param with_garages_city with garages city nested data
  ///@param with_garages_created_by with garages created_by nested data
  ///@param with_garages_updated_by with garages updated_by nested data
  ///@param with_garages_deleted_by with garages deleted_by nested data
  Future<chopper.Response<CityResponse>> apiCityIdGet({
    required int? id,
    bool? withGarages,
    bool? withGaragesOwners,
    bool? withGaragesCity,
    bool? withGaragesCreatedBy,
    bool? withGaragesUpdatedBy,
    bool? withGaragesDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        CityResponse, () => CityResponse.fromJsonFactory);

    return _apiCityIdGet(
        id: id,
        withGarages: withGarages,
        withGaragesOwners: withGaragesOwners,
        withGaragesCity: withGaragesCity,
        withGaragesCreatedBy: withGaragesCreatedBy,
        withGaragesUpdatedBy: withGaragesUpdatedBy,
        withGaragesDeletedBy: withGaragesDeletedBy);
  }

  ///Get city by ID
  ///@param id City ID
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners nested data
  ///@param with_garages_city with garages city nested data
  ///@param with_garages_created_by with garages created_by nested data
  ///@param with_garages_updated_by with garages updated_by nested data
  ///@param with_garages_deleted_by with garages deleted_by nested data
  @Get(path: '/api/city/{id}')
  Future<chopper.Response<CityResponse>> _apiCityIdGet({
    @Path('id') required int? id,
    @Query('with_garages') bool? withGarages,
    @Query('with_garages_owners') bool? withGaragesOwners,
    @Query('with_garages_city') bool? withGaragesCity,
    @Query('with_garages_created_by') bool? withGaragesCreatedBy,
    @Query('with_garages_updated_by') bool? withGaragesUpdatedBy,
    @Query('with_garages_deleted_by') bool? withGaragesDeletedBy,
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

  ///Audit record
  ///@param id City ID
  Future<chopper.Response<List<CityAudit>>> apiCityIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(CityAudit, () => CityAudit.fromJsonFactory);

    return _apiCityIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id City ID
  @Get(path: '/api/city/{id}/audit')
  Future<chopper.Response<List<CityAudit>>> _apiCityIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners data
  ///@param with_garages_city with garages city nested data
  ///@param with_garages_created_by with garages created_by nested data
  ///@param with_garages_updated_by with garages updated_by nested data
  ///@param with_garages_deleted_by with garages deleted_by nested data
  Future<chopper.Response<ListCity>> apiCityListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withGarages,
    bool? withGaragesOwners,
    bool? withGaragesCity,
    bool? withGaragesCreatedBy,
    bool? withGaragesUpdatedBy,
    bool? withGaragesDeletedBy,
  }) {
    generatedMapping.putIfAbsent(ListCity, () => ListCity.fromJsonFactory);

    return _apiCityListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withGarages: withGarages,
        withGaragesOwners: withGaragesOwners,
        withGaragesCity: withGaragesCity,
        withGaragesCreatedBy: withGaragesCreatedBy,
        withGaragesUpdatedBy: withGaragesUpdatedBy,
        withGaragesDeletedBy: withGaragesDeletedBy);
  }

  ///List city
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_garages with garages data
  ///@param with_garages_owners with garages owners data
  ///@param with_garages_city with garages city nested data
  ///@param with_garages_created_by with garages created_by nested data
  ///@param with_garages_updated_by with garages updated_by nested data
  ///@param with_garages_deleted_by with garages deleted_by nested data
  @Get(path: '/api/city/list')
  Future<chopper.Response<ListCity>> _apiCityListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_garages') bool? withGarages,
    @Query('with_garages_owners') bool? withGaragesOwners,
    @Query('with_garages_city') bool? withGaragesCity,
    @Query('with_garages_created_by') bool? withGaragesCreatedBy,
    @Query('with_garages_updated_by') bool? withGaragesUpdatedBy,
    @Query('with_garages_deleted_by') bool? withGaragesDeletedBy,
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

  ///Delete employee record
  ///@param id Employee ID
  Future<chopper.Response<String>> apiEmployeeIdDelete({required int? id}) {
    return _apiEmployeeIdDelete(id: id);
  }

  ///Delete employee record
  ///@param id Employee ID
  @Delete(path: '/api/employee/{id}')
  Future<chopper.Response<String>> _apiEmployeeIdDelete(
      {@Path('id') required int? id});

  ///Get employee by ID
  ///@param id Employee ID
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks nested data
  ///@param with_created_vehicles_created_by with created_vehicles created_by nested data
  ///@param with_created_vehicles_updated_by with created_vehicles updated_by nested data
  ///@param with_created_vehicles_deleted_by with created_vehicles deleted_by nested data
  ///@param with_created_vehicles_owner with created_vehicles owner nested data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks nested data
  ///@param with_updated_vehicles_created_by with updated_vehicles created_by nested data
  ///@param with_updated_vehicles_updated_by with updated_vehicles updated_by nested data
  ///@param with_updated_vehicles_deleted_by with updated_vehicles deleted_by nested data
  ///@param with_updated_vehicles_owner with updated_vehicles owner nested data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks nested data
  ///@param with_deleted_vehicles_created_by with deleted_vehicles created_by nested data
  ///@param with_deleted_vehicles_updated_by with deleted_vehicles updated_by nested data
  ///@param with_deleted_vehicles_deleted_by with deleted_vehicles deleted_by nested data
  ///@param with_deleted_vehicles_owner with deleted_vehicles owner nested data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners nested data
  ///@param with_created_garages_city with created_garages city nested data
  ///@param with_created_garages_created_by with created_garages created_by nested data
  ///@param with_created_garages_updated_by with created_garages updated_by nested data
  ///@param with_created_garages_deleted_by with created_garages deleted_by nested data
  ///@param with_updated_garages with updated_garages data
  ///@param with_updated_garages_owners with updated_garages owners nested data
  ///@param with_updated_garages_city with updated_garages city nested data
  ///@param with_updated_garages_created_by with updated_garages created_by nested data
  ///@param with_updated_garages_updated_by with updated_garages updated_by nested data
  ///@param with_updated_garages_deleted_by with updated_garages deleted_by nested data
  ///@param with_deleted_garages with deleted_garages data
  ///@param with_deleted_garages_owners with deleted_garages owners nested data
  ///@param with_deleted_garages_city with deleted_garages city nested data
  ///@param with_deleted_garages_created_by with deleted_garages created_by nested data
  ///@param with_deleted_garages_updated_by with deleted_garages updated_by nested data
  ///@param with_deleted_garages_deleted_by with deleted_garages deleted_by nested data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks nested data
  ///@param with_created_tasks_attached_to with created_tasks attached_to nested data
  ///@param with_created_tasks_created_by with created_tasks created_by nested data
  ///@param with_created_tasks_updated_by with created_tasks updated_by nested data
  ///@param with_created_tasks_deleted_by with created_tasks deleted_by nested data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks nested data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to nested data
  ///@param with_updated_tasks_created_by with updated_tasks created_by nested data
  ///@param with_updated_tasks_updated_by with updated_tasks updated_by nested data
  ///@param with_updated_tasks_deleted_by with updated_tasks deleted_by nested data
  ///@param with_deleted_tasks with deleted_tasks data
  ///@param with_deleted_tasks_sub_tasks with deleted_tasks sub_tasks nested data
  ///@param with_deleted_tasks_attached_to with deleted_tasks attached_to nested data
  ///@param with_deleted_tasks_created_by with deleted_tasks created_by nested data
  ///@param with_deleted_tasks_updated_by with deleted_tasks updated_by nested data
  ///@param with_deleted_tasks_deleted_by with deleted_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_created_vehicle_tasks_activities with created_vehicle_tasks activities nested data
  ///@param with_created_vehicle_tasks_task with created_vehicle_tasks task nested data
  ///@param with_created_vehicle_tasks_created_by with created_vehicle_tasks created_by nested data
  ///@param with_created_vehicle_tasks_assigned_to with created_vehicle_tasks assigned_to nested data
  ///@param with_created_vehicle_tasks_deleted_by with created_vehicle_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks_updated_by with created_vehicle_tasks updated_by nested data
  ///@param with_created_vehicle_tasks_vehicle with created_vehicle_tasks vehicle nested data
  ///@param with_created_vehicle_tasks_sub_task with created_vehicle_tasks sub_task nested data
  ///@param with_assigned_vehicle_tasks with assigned_vehicle_tasks data
  ///@param with_assigned_vehicle_tasks_activities with assigned_vehicle_tasks activities nested data
  ///@param with_assigned_vehicle_tasks_task with assigned_vehicle_tasks task nested data
  ///@param with_assigned_vehicle_tasks_created_by with assigned_vehicle_tasks created_by nested data
  ///@param with_assigned_vehicle_tasks_assigned_to with assigned_vehicle_tasks assigned_to nested data
  ///@param with_assigned_vehicle_tasks_deleted_by with assigned_vehicle_tasks deleted_by nested data
  ///@param with_assigned_vehicle_tasks_updated_by with assigned_vehicle_tasks updated_by nested data
  ///@param with_assigned_vehicle_tasks_vehicle with assigned_vehicle_tasks vehicle nested data
  ///@param with_assigned_vehicle_tasks_sub_task with assigned_vehicle_tasks sub_task nested data
  ///@param with_deleted_vehicle_tasks with deleted_vehicle_tasks data
  ///@param with_deleted_vehicle_tasks_activities with deleted_vehicle_tasks activities nested data
  ///@param with_deleted_vehicle_tasks_task with deleted_vehicle_tasks task nested data
  ///@param with_deleted_vehicle_tasks_created_by with deleted_vehicle_tasks created_by nested data
  ///@param with_deleted_vehicle_tasks_assigned_to with deleted_vehicle_tasks assigned_to nested data
  ///@param with_deleted_vehicle_tasks_deleted_by with deleted_vehicle_tasks deleted_by nested data
  ///@param with_deleted_vehicle_tasks_updated_by with deleted_vehicle_tasks updated_by nested data
  ///@param with_deleted_vehicle_tasks_vehicle with deleted_vehicle_tasks vehicle nested data
  ///@param with_deleted_vehicle_tasks_sub_task with deleted_vehicle_tasks sub_task nested data
  ///@param with_updated_vehicle_tasks with updated_vehicle_tasks data
  ///@param with_updated_vehicle_tasks_activities with updated_vehicle_tasks activities nested data
  ///@param with_updated_vehicle_tasks_task with updated_vehicle_tasks task nested data
  ///@param with_updated_vehicle_tasks_created_by with updated_vehicle_tasks created_by nested data
  ///@param with_updated_vehicle_tasks_assigned_to with updated_vehicle_tasks assigned_to nested data
  ///@param with_updated_vehicle_tasks_deleted_by with updated_vehicle_tasks deleted_by nested data
  ///@param with_updated_vehicle_tasks_updated_by with updated_vehicle_tasks updated_by nested data
  ///@param with_updated_vehicle_tasks_vehicle with updated_vehicle_tasks vehicle nested data
  ///@param with_updated_vehicle_tasks_sub_task with updated_vehicle_tasks sub_task nested data
  ///@param with_permission with permission data
  ///@param with_permission_employees with permission employees nested data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts nested data
  ///@param with_requests_request_by with requests request_by nested data
  ///@param with_account with account data
  ///@param with_account_employee with account employee nested data
  ///@param with_created_activities with created_activities data
  ///@param with_created_activities_vehicle_tasks with created_activities vehicle_tasks nested data
  ///@param with_created_activities_created_by with created_activities created_by nested data
  ///@param with_created_activities_updated_by with created_activities updated_by nested data
  ///@param with_created_activities_deleted_by with created_activities deleted_by nested data
  ///@param with_updated_activities with updated_activities data
  ///@param with_updated_activities_vehicle_tasks with updated_activities vehicle_tasks nested data
  ///@param with_updated_activities_created_by with updated_activities created_by nested data
  ///@param with_updated_activities_updated_by with updated_activities updated_by nested data
  ///@param with_updated_activities_deleted_by with updated_activities deleted_by nested data
  ///@param with_deleted_activities with deleted_activities data
  ///@param with_deleted_activities_vehicle_tasks with deleted_activities vehicle_tasks nested data
  ///@param with_deleted_activities_created_by with deleted_activities created_by nested data
  ///@param with_deleted_activities_updated_by with deleted_activities updated_by nested data
  ///@param with_deleted_activities_deleted_by with deleted_activities deleted_by nested data
  Future<chopper.Response<EmployeeResponse>> apiEmployeeIdGet({
    required int? id,
    bool? withCreatedVehicles,
    bool? withCreatedVehiclesVehicleTasks,
    bool? withCreatedVehiclesCreatedBy,
    bool? withCreatedVehiclesUpdatedBy,
    bool? withCreatedVehiclesDeletedBy,
    bool? withCreatedVehiclesOwner,
    bool? withUpdatedVehicles,
    bool? withUpdatedVehiclesVehicleTasks,
    bool? withUpdatedVehiclesCreatedBy,
    bool? withUpdatedVehiclesUpdatedBy,
    bool? withUpdatedVehiclesDeletedBy,
    bool? withUpdatedVehiclesOwner,
    bool? withDeletedVehicles,
    bool? withDeletedVehiclesVehicleTasks,
    bool? withDeletedVehiclesCreatedBy,
    bool? withDeletedVehiclesUpdatedBy,
    bool? withDeletedVehiclesDeletedBy,
    bool? withDeletedVehiclesOwner,
    bool? withCreatedGarages,
    bool? withCreatedGaragesOwners,
    bool? withCreatedGaragesCity,
    bool? withCreatedGaragesCreatedBy,
    bool? withCreatedGaragesUpdatedBy,
    bool? withCreatedGaragesDeletedBy,
    bool? withUpdatedGarages,
    bool? withUpdatedGaragesOwners,
    bool? withUpdatedGaragesCity,
    bool? withUpdatedGaragesCreatedBy,
    bool? withUpdatedGaragesUpdatedBy,
    bool? withUpdatedGaragesDeletedBy,
    bool? withDeletedGarages,
    bool? withDeletedGaragesOwners,
    bool? withDeletedGaragesCity,
    bool? withDeletedGaragesCreatedBy,
    bool? withDeletedGaragesUpdatedBy,
    bool? withDeletedGaragesDeletedBy,
    bool? withCreatedTasks,
    bool? withCreatedTasksSubTasks,
    bool? withCreatedTasksAttachedTo,
    bool? withCreatedTasksCreatedBy,
    bool? withCreatedTasksUpdatedBy,
    bool? withCreatedTasksDeletedBy,
    bool? withUpdatedTasks,
    bool? withUpdatedTasksSubTasks,
    bool? withUpdatedTasksAttachedTo,
    bool? withUpdatedTasksCreatedBy,
    bool? withUpdatedTasksUpdatedBy,
    bool? withUpdatedTasksDeletedBy,
    bool? withDeletedTasks,
    bool? withDeletedTasksSubTasks,
    bool? withDeletedTasksAttachedTo,
    bool? withDeletedTasksCreatedBy,
    bool? withDeletedTasksUpdatedBy,
    bool? withDeletedTasksDeletedBy,
    bool? withCreatedVehicleTasks,
    bool? withCreatedVehicleTasksActivities,
    bool? withCreatedVehicleTasksTask,
    bool? withCreatedVehicleTasksCreatedBy,
    bool? withCreatedVehicleTasksAssignedTo,
    bool? withCreatedVehicleTasksDeletedBy,
    bool? withCreatedVehicleTasksUpdatedBy,
    bool? withCreatedVehicleTasksVehicle,
    bool? withCreatedVehicleTasksSubTask,
    bool? withAssignedVehicleTasks,
    bool? withAssignedVehicleTasksActivities,
    bool? withAssignedVehicleTasksTask,
    bool? withAssignedVehicleTasksCreatedBy,
    bool? withAssignedVehicleTasksAssignedTo,
    bool? withAssignedVehicleTasksDeletedBy,
    bool? withAssignedVehicleTasksUpdatedBy,
    bool? withAssignedVehicleTasksVehicle,
    bool? withAssignedVehicleTasksSubTask,
    bool? withDeletedVehicleTasks,
    bool? withDeletedVehicleTasksActivities,
    bool? withDeletedVehicleTasksTask,
    bool? withDeletedVehicleTasksCreatedBy,
    bool? withDeletedVehicleTasksAssignedTo,
    bool? withDeletedVehicleTasksDeletedBy,
    bool? withDeletedVehicleTasksUpdatedBy,
    bool? withDeletedVehicleTasksVehicle,
    bool? withDeletedVehicleTasksSubTask,
    bool? withUpdatedVehicleTasks,
    bool? withUpdatedVehicleTasksActivities,
    bool? withUpdatedVehicleTasksTask,
    bool? withUpdatedVehicleTasksCreatedBy,
    bool? withUpdatedVehicleTasksAssignedTo,
    bool? withUpdatedVehicleTasksDeletedBy,
    bool? withUpdatedVehicleTasksUpdatedBy,
    bool? withUpdatedVehicleTasksVehicle,
    bool? withUpdatedVehicleTasksSubTask,
    bool? withPermission,
    bool? withPermissionEmployees,
    bool? withRequests,
    bool? withRequestsSpareParts,
    bool? withRequestsRequestBy,
    bool? withAccount,
    bool? withAccountEmployee,
    bool? withCreatedActivities,
    bool? withCreatedActivitiesVehicleTasks,
    bool? withCreatedActivitiesCreatedBy,
    bool? withCreatedActivitiesUpdatedBy,
    bool? withCreatedActivitiesDeletedBy,
    bool? withUpdatedActivities,
    bool? withUpdatedActivitiesVehicleTasks,
    bool? withUpdatedActivitiesCreatedBy,
    bool? withUpdatedActivitiesUpdatedBy,
    bool? withUpdatedActivitiesDeletedBy,
    bool? withDeletedActivities,
    bool? withDeletedActivitiesVehicleTasks,
    bool? withDeletedActivitiesCreatedBy,
    bool? withDeletedActivitiesUpdatedBy,
    bool? withDeletedActivitiesDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        EmployeeResponse, () => EmployeeResponse.fromJsonFactory);

    return _apiEmployeeIdGet(
        id: id,
        withCreatedVehicles: withCreatedVehicles,
        withCreatedVehiclesVehicleTasks: withCreatedVehiclesVehicleTasks,
        withCreatedVehiclesCreatedBy: withCreatedVehiclesCreatedBy,
        withCreatedVehiclesUpdatedBy: withCreatedVehiclesUpdatedBy,
        withCreatedVehiclesDeletedBy: withCreatedVehiclesDeletedBy,
        withCreatedVehiclesOwner: withCreatedVehiclesOwner,
        withUpdatedVehicles: withUpdatedVehicles,
        withUpdatedVehiclesVehicleTasks: withUpdatedVehiclesVehicleTasks,
        withUpdatedVehiclesCreatedBy: withUpdatedVehiclesCreatedBy,
        withUpdatedVehiclesUpdatedBy: withUpdatedVehiclesUpdatedBy,
        withUpdatedVehiclesDeletedBy: withUpdatedVehiclesDeletedBy,
        withUpdatedVehiclesOwner: withUpdatedVehiclesOwner,
        withDeletedVehicles: withDeletedVehicles,
        withDeletedVehiclesVehicleTasks: withDeletedVehiclesVehicleTasks,
        withDeletedVehiclesCreatedBy: withDeletedVehiclesCreatedBy,
        withDeletedVehiclesUpdatedBy: withDeletedVehiclesUpdatedBy,
        withDeletedVehiclesDeletedBy: withDeletedVehiclesDeletedBy,
        withDeletedVehiclesOwner: withDeletedVehiclesOwner,
        withCreatedGarages: withCreatedGarages,
        withCreatedGaragesOwners: withCreatedGaragesOwners,
        withCreatedGaragesCity: withCreatedGaragesCity,
        withCreatedGaragesCreatedBy: withCreatedGaragesCreatedBy,
        withCreatedGaragesUpdatedBy: withCreatedGaragesUpdatedBy,
        withCreatedGaragesDeletedBy: withCreatedGaragesDeletedBy,
        withUpdatedGarages: withUpdatedGarages,
        withUpdatedGaragesOwners: withUpdatedGaragesOwners,
        withUpdatedGaragesCity: withUpdatedGaragesCity,
        withUpdatedGaragesCreatedBy: withUpdatedGaragesCreatedBy,
        withUpdatedGaragesUpdatedBy: withUpdatedGaragesUpdatedBy,
        withUpdatedGaragesDeletedBy: withUpdatedGaragesDeletedBy,
        withDeletedGarages: withDeletedGarages,
        withDeletedGaragesOwners: withDeletedGaragesOwners,
        withDeletedGaragesCity: withDeletedGaragesCity,
        withDeletedGaragesCreatedBy: withDeletedGaragesCreatedBy,
        withDeletedGaragesUpdatedBy: withDeletedGaragesUpdatedBy,
        withDeletedGaragesDeletedBy: withDeletedGaragesDeletedBy,
        withCreatedTasks: withCreatedTasks,
        withCreatedTasksSubTasks: withCreatedTasksSubTasks,
        withCreatedTasksAttachedTo: withCreatedTasksAttachedTo,
        withCreatedTasksCreatedBy: withCreatedTasksCreatedBy,
        withCreatedTasksUpdatedBy: withCreatedTasksUpdatedBy,
        withCreatedTasksDeletedBy: withCreatedTasksDeletedBy,
        withUpdatedTasks: withUpdatedTasks,
        withUpdatedTasksSubTasks: withUpdatedTasksSubTasks,
        withUpdatedTasksAttachedTo: withUpdatedTasksAttachedTo,
        withUpdatedTasksCreatedBy: withUpdatedTasksCreatedBy,
        withUpdatedTasksUpdatedBy: withUpdatedTasksUpdatedBy,
        withUpdatedTasksDeletedBy: withUpdatedTasksDeletedBy,
        withDeletedTasks: withDeletedTasks,
        withDeletedTasksSubTasks: withDeletedTasksSubTasks,
        withDeletedTasksAttachedTo: withDeletedTasksAttachedTo,
        withDeletedTasksCreatedBy: withDeletedTasksCreatedBy,
        withDeletedTasksUpdatedBy: withDeletedTasksUpdatedBy,
        withDeletedTasksDeletedBy: withDeletedTasksDeletedBy,
        withCreatedVehicleTasks: withCreatedVehicleTasks,
        withCreatedVehicleTasksActivities: withCreatedVehicleTasksActivities,
        withCreatedVehicleTasksTask: withCreatedVehicleTasksTask,
        withCreatedVehicleTasksCreatedBy: withCreatedVehicleTasksCreatedBy,
        withCreatedVehicleTasksAssignedTo: withCreatedVehicleTasksAssignedTo,
        withCreatedVehicleTasksDeletedBy: withCreatedVehicleTasksDeletedBy,
        withCreatedVehicleTasksUpdatedBy: withCreatedVehicleTasksUpdatedBy,
        withCreatedVehicleTasksVehicle: withCreatedVehicleTasksVehicle,
        withCreatedVehicleTasksSubTask: withCreatedVehicleTasksSubTask,
        withAssignedVehicleTasks: withAssignedVehicleTasks,
        withAssignedVehicleTasksActivities: withAssignedVehicleTasksActivities,
        withAssignedVehicleTasksTask: withAssignedVehicleTasksTask,
        withAssignedVehicleTasksCreatedBy: withAssignedVehicleTasksCreatedBy,
        withAssignedVehicleTasksAssignedTo: withAssignedVehicleTasksAssignedTo,
        withAssignedVehicleTasksDeletedBy: withAssignedVehicleTasksDeletedBy,
        withAssignedVehicleTasksUpdatedBy: withAssignedVehicleTasksUpdatedBy,
        withAssignedVehicleTasksVehicle: withAssignedVehicleTasksVehicle,
        withAssignedVehicleTasksSubTask: withAssignedVehicleTasksSubTask,
        withDeletedVehicleTasks: withDeletedVehicleTasks,
        withDeletedVehicleTasksActivities: withDeletedVehicleTasksActivities,
        withDeletedVehicleTasksTask: withDeletedVehicleTasksTask,
        withDeletedVehicleTasksCreatedBy: withDeletedVehicleTasksCreatedBy,
        withDeletedVehicleTasksAssignedTo: withDeletedVehicleTasksAssignedTo,
        withDeletedVehicleTasksDeletedBy: withDeletedVehicleTasksDeletedBy,
        withDeletedVehicleTasksUpdatedBy: withDeletedVehicleTasksUpdatedBy,
        withDeletedVehicleTasksVehicle: withDeletedVehicleTasksVehicle,
        withDeletedVehicleTasksSubTask: withDeletedVehicleTasksSubTask,
        withUpdatedVehicleTasks: withUpdatedVehicleTasks,
        withUpdatedVehicleTasksActivities: withUpdatedVehicleTasksActivities,
        withUpdatedVehicleTasksTask: withUpdatedVehicleTasksTask,
        withUpdatedVehicleTasksCreatedBy: withUpdatedVehicleTasksCreatedBy,
        withUpdatedVehicleTasksAssignedTo: withUpdatedVehicleTasksAssignedTo,
        withUpdatedVehicleTasksDeletedBy: withUpdatedVehicleTasksDeletedBy,
        withUpdatedVehicleTasksUpdatedBy: withUpdatedVehicleTasksUpdatedBy,
        withUpdatedVehicleTasksVehicle: withUpdatedVehicleTasksVehicle,
        withUpdatedVehicleTasksSubTask: withUpdatedVehicleTasksSubTask,
        withPermission: withPermission,
        withPermissionEmployees: withPermissionEmployees,
        withRequests: withRequests,
        withRequestsSpareParts: withRequestsSpareParts,
        withRequestsRequestBy: withRequestsRequestBy,
        withAccount: withAccount,
        withAccountEmployee: withAccountEmployee,
        withCreatedActivities: withCreatedActivities,
        withCreatedActivitiesVehicleTasks: withCreatedActivitiesVehicleTasks,
        withCreatedActivitiesCreatedBy: withCreatedActivitiesCreatedBy,
        withCreatedActivitiesUpdatedBy: withCreatedActivitiesUpdatedBy,
        withCreatedActivitiesDeletedBy: withCreatedActivitiesDeletedBy,
        withUpdatedActivities: withUpdatedActivities,
        withUpdatedActivitiesVehicleTasks: withUpdatedActivitiesVehicleTasks,
        withUpdatedActivitiesCreatedBy: withUpdatedActivitiesCreatedBy,
        withUpdatedActivitiesUpdatedBy: withUpdatedActivitiesUpdatedBy,
        withUpdatedActivitiesDeletedBy: withUpdatedActivitiesDeletedBy,
        withDeletedActivities: withDeletedActivities,
        withDeletedActivitiesVehicleTasks: withDeletedActivitiesVehicleTasks,
        withDeletedActivitiesCreatedBy: withDeletedActivitiesCreatedBy,
        withDeletedActivitiesUpdatedBy: withDeletedActivitiesUpdatedBy,
        withDeletedActivitiesDeletedBy: withDeletedActivitiesDeletedBy);
  }

  ///Get employee by ID
  ///@param id Employee ID
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks nested data
  ///@param with_created_vehicles_created_by with created_vehicles created_by nested data
  ///@param with_created_vehicles_updated_by with created_vehicles updated_by nested data
  ///@param with_created_vehicles_deleted_by with created_vehicles deleted_by nested data
  ///@param with_created_vehicles_owner with created_vehicles owner nested data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks nested data
  ///@param with_updated_vehicles_created_by with updated_vehicles created_by nested data
  ///@param with_updated_vehicles_updated_by with updated_vehicles updated_by nested data
  ///@param with_updated_vehicles_deleted_by with updated_vehicles deleted_by nested data
  ///@param with_updated_vehicles_owner with updated_vehicles owner nested data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks nested data
  ///@param with_deleted_vehicles_created_by with deleted_vehicles created_by nested data
  ///@param with_deleted_vehicles_updated_by with deleted_vehicles updated_by nested data
  ///@param with_deleted_vehicles_deleted_by with deleted_vehicles deleted_by nested data
  ///@param with_deleted_vehicles_owner with deleted_vehicles owner nested data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners nested data
  ///@param with_created_garages_city with created_garages city nested data
  ///@param with_created_garages_created_by with created_garages created_by nested data
  ///@param with_created_garages_updated_by with created_garages updated_by nested data
  ///@param with_created_garages_deleted_by with created_garages deleted_by nested data
  ///@param with_updated_garages with updated_garages data
  ///@param with_updated_garages_owners with updated_garages owners nested data
  ///@param with_updated_garages_city with updated_garages city nested data
  ///@param with_updated_garages_created_by with updated_garages created_by nested data
  ///@param with_updated_garages_updated_by with updated_garages updated_by nested data
  ///@param with_updated_garages_deleted_by with updated_garages deleted_by nested data
  ///@param with_deleted_garages with deleted_garages data
  ///@param with_deleted_garages_owners with deleted_garages owners nested data
  ///@param with_deleted_garages_city with deleted_garages city nested data
  ///@param with_deleted_garages_created_by with deleted_garages created_by nested data
  ///@param with_deleted_garages_updated_by with deleted_garages updated_by nested data
  ///@param with_deleted_garages_deleted_by with deleted_garages deleted_by nested data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks nested data
  ///@param with_created_tasks_attached_to with created_tasks attached_to nested data
  ///@param with_created_tasks_created_by with created_tasks created_by nested data
  ///@param with_created_tasks_updated_by with created_tasks updated_by nested data
  ///@param with_created_tasks_deleted_by with created_tasks deleted_by nested data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks nested data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to nested data
  ///@param with_updated_tasks_created_by with updated_tasks created_by nested data
  ///@param with_updated_tasks_updated_by with updated_tasks updated_by nested data
  ///@param with_updated_tasks_deleted_by with updated_tasks deleted_by nested data
  ///@param with_deleted_tasks with deleted_tasks data
  ///@param with_deleted_tasks_sub_tasks with deleted_tasks sub_tasks nested data
  ///@param with_deleted_tasks_attached_to with deleted_tasks attached_to nested data
  ///@param with_deleted_tasks_created_by with deleted_tasks created_by nested data
  ///@param with_deleted_tasks_updated_by with deleted_tasks updated_by nested data
  ///@param with_deleted_tasks_deleted_by with deleted_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_created_vehicle_tasks_activities with created_vehicle_tasks activities nested data
  ///@param with_created_vehicle_tasks_task with created_vehicle_tasks task nested data
  ///@param with_created_vehicle_tasks_created_by with created_vehicle_tasks created_by nested data
  ///@param with_created_vehicle_tasks_assigned_to with created_vehicle_tasks assigned_to nested data
  ///@param with_created_vehicle_tasks_deleted_by with created_vehicle_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks_updated_by with created_vehicle_tasks updated_by nested data
  ///@param with_created_vehicle_tasks_vehicle with created_vehicle_tasks vehicle nested data
  ///@param with_created_vehicle_tasks_sub_task with created_vehicle_tasks sub_task nested data
  ///@param with_assigned_vehicle_tasks with assigned_vehicle_tasks data
  ///@param with_assigned_vehicle_tasks_activities with assigned_vehicle_tasks activities nested data
  ///@param with_assigned_vehicle_tasks_task with assigned_vehicle_tasks task nested data
  ///@param with_assigned_vehicle_tasks_created_by with assigned_vehicle_tasks created_by nested data
  ///@param with_assigned_vehicle_tasks_assigned_to with assigned_vehicle_tasks assigned_to nested data
  ///@param with_assigned_vehicle_tasks_deleted_by with assigned_vehicle_tasks deleted_by nested data
  ///@param with_assigned_vehicle_tasks_updated_by with assigned_vehicle_tasks updated_by nested data
  ///@param with_assigned_vehicle_tasks_vehicle with assigned_vehicle_tasks vehicle nested data
  ///@param with_assigned_vehicle_tasks_sub_task with assigned_vehicle_tasks sub_task nested data
  ///@param with_deleted_vehicle_tasks with deleted_vehicle_tasks data
  ///@param with_deleted_vehicle_tasks_activities with deleted_vehicle_tasks activities nested data
  ///@param with_deleted_vehicle_tasks_task with deleted_vehicle_tasks task nested data
  ///@param with_deleted_vehicle_tasks_created_by with deleted_vehicle_tasks created_by nested data
  ///@param with_deleted_vehicle_tasks_assigned_to with deleted_vehicle_tasks assigned_to nested data
  ///@param with_deleted_vehicle_tasks_deleted_by with deleted_vehicle_tasks deleted_by nested data
  ///@param with_deleted_vehicle_tasks_updated_by with deleted_vehicle_tasks updated_by nested data
  ///@param with_deleted_vehicle_tasks_vehicle with deleted_vehicle_tasks vehicle nested data
  ///@param with_deleted_vehicle_tasks_sub_task with deleted_vehicle_tasks sub_task nested data
  ///@param with_updated_vehicle_tasks with updated_vehicle_tasks data
  ///@param with_updated_vehicle_tasks_activities with updated_vehicle_tasks activities nested data
  ///@param with_updated_vehicle_tasks_task with updated_vehicle_tasks task nested data
  ///@param with_updated_vehicle_tasks_created_by with updated_vehicle_tasks created_by nested data
  ///@param with_updated_vehicle_tasks_assigned_to with updated_vehicle_tasks assigned_to nested data
  ///@param with_updated_vehicle_tasks_deleted_by with updated_vehicle_tasks deleted_by nested data
  ///@param with_updated_vehicle_tasks_updated_by with updated_vehicle_tasks updated_by nested data
  ///@param with_updated_vehicle_tasks_vehicle with updated_vehicle_tasks vehicle nested data
  ///@param with_updated_vehicle_tasks_sub_task with updated_vehicle_tasks sub_task nested data
  ///@param with_permission with permission data
  ///@param with_permission_employees with permission employees nested data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts nested data
  ///@param with_requests_request_by with requests request_by nested data
  ///@param with_account with account data
  ///@param with_account_employee with account employee nested data
  ///@param with_created_activities with created_activities data
  ///@param with_created_activities_vehicle_tasks with created_activities vehicle_tasks nested data
  ///@param with_created_activities_created_by with created_activities created_by nested data
  ///@param with_created_activities_updated_by with created_activities updated_by nested data
  ///@param with_created_activities_deleted_by with created_activities deleted_by nested data
  ///@param with_updated_activities with updated_activities data
  ///@param with_updated_activities_vehicle_tasks with updated_activities vehicle_tasks nested data
  ///@param with_updated_activities_created_by with updated_activities created_by nested data
  ///@param with_updated_activities_updated_by with updated_activities updated_by nested data
  ///@param with_updated_activities_deleted_by with updated_activities deleted_by nested data
  ///@param with_deleted_activities with deleted_activities data
  ///@param with_deleted_activities_vehicle_tasks with deleted_activities vehicle_tasks nested data
  ///@param with_deleted_activities_created_by with deleted_activities created_by nested data
  ///@param with_deleted_activities_updated_by with deleted_activities updated_by nested data
  ///@param with_deleted_activities_deleted_by with deleted_activities deleted_by nested data
  @Get(path: '/api/employee/{id}')
  Future<chopper.Response<EmployeeResponse>> _apiEmployeeIdGet({
    @Path('id') required int? id,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_created_vehicles_vehicle_tasks')
    bool? withCreatedVehiclesVehicleTasks,
    @Query('with_created_vehicles_created_by')
    bool? withCreatedVehiclesCreatedBy,
    @Query('with_created_vehicles_updated_by')
    bool? withCreatedVehiclesUpdatedBy,
    @Query('with_created_vehicles_deleted_by')
    bool? withCreatedVehiclesDeletedBy,
    @Query('with_created_vehicles_owner') bool? withCreatedVehiclesOwner,
    @Query('with_updated_vehicles') bool? withUpdatedVehicles,
    @Query('with_updated_vehicles_vehicle_tasks')
    bool? withUpdatedVehiclesVehicleTasks,
    @Query('with_updated_vehicles_created_by')
    bool? withUpdatedVehiclesCreatedBy,
    @Query('with_updated_vehicles_updated_by')
    bool? withUpdatedVehiclesUpdatedBy,
    @Query('with_updated_vehicles_deleted_by')
    bool? withUpdatedVehiclesDeletedBy,
    @Query('with_updated_vehicles_owner') bool? withUpdatedVehiclesOwner,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_deleted_vehicles_vehicle_tasks')
    bool? withDeletedVehiclesVehicleTasks,
    @Query('with_deleted_vehicles_created_by')
    bool? withDeletedVehiclesCreatedBy,
    @Query('with_deleted_vehicles_updated_by')
    bool? withDeletedVehiclesUpdatedBy,
    @Query('with_deleted_vehicles_deleted_by')
    bool? withDeletedVehiclesDeletedBy,
    @Query('with_deleted_vehicles_owner') bool? withDeletedVehiclesOwner,
    @Query('with_created_garages') bool? withCreatedGarages,
    @Query('with_created_garages_owners') bool? withCreatedGaragesOwners,
    @Query('with_created_garages_city') bool? withCreatedGaragesCity,
    @Query('with_created_garages_created_by') bool? withCreatedGaragesCreatedBy,
    @Query('with_created_garages_updated_by') bool? withCreatedGaragesUpdatedBy,
    @Query('with_created_garages_deleted_by') bool? withCreatedGaragesDeletedBy,
    @Query('with_updated_garages') bool? withUpdatedGarages,
    @Query('with_updated_garages_owners') bool? withUpdatedGaragesOwners,
    @Query('with_updated_garages_city') bool? withUpdatedGaragesCity,
    @Query('with_updated_garages_created_by') bool? withUpdatedGaragesCreatedBy,
    @Query('with_updated_garages_updated_by') bool? withUpdatedGaragesUpdatedBy,
    @Query('with_updated_garages_deleted_by') bool? withUpdatedGaragesDeletedBy,
    @Query('with_deleted_garages') bool? withDeletedGarages,
    @Query('with_deleted_garages_owners') bool? withDeletedGaragesOwners,
    @Query('with_deleted_garages_city') bool? withDeletedGaragesCity,
    @Query('with_deleted_garages_created_by') bool? withDeletedGaragesCreatedBy,
    @Query('with_deleted_garages_updated_by') bool? withDeletedGaragesUpdatedBy,
    @Query('with_deleted_garages_deleted_by') bool? withDeletedGaragesDeletedBy,
    @Query('with_created_tasks') bool? withCreatedTasks,
    @Query('with_created_tasks_sub_tasks') bool? withCreatedTasksSubTasks,
    @Query('with_created_tasks_attached_to') bool? withCreatedTasksAttachedTo,
    @Query('with_created_tasks_created_by') bool? withCreatedTasksCreatedBy,
    @Query('with_created_tasks_updated_by') bool? withCreatedTasksUpdatedBy,
    @Query('with_created_tasks_deleted_by') bool? withCreatedTasksDeletedBy,
    @Query('with_updated_tasks') bool? withUpdatedTasks,
    @Query('with_updated_tasks_sub_tasks') bool? withUpdatedTasksSubTasks,
    @Query('with_updated_tasks_attached_to') bool? withUpdatedTasksAttachedTo,
    @Query('with_updated_tasks_created_by') bool? withUpdatedTasksCreatedBy,
    @Query('with_updated_tasks_updated_by') bool? withUpdatedTasksUpdatedBy,
    @Query('with_updated_tasks_deleted_by') bool? withUpdatedTasksDeletedBy,
    @Query('with_deleted_tasks') bool? withDeletedTasks,
    @Query('with_deleted_tasks_sub_tasks') bool? withDeletedTasksSubTasks,
    @Query('with_deleted_tasks_attached_to') bool? withDeletedTasksAttachedTo,
    @Query('with_deleted_tasks_created_by') bool? withDeletedTasksCreatedBy,
    @Query('with_deleted_tasks_updated_by') bool? withDeletedTasksUpdatedBy,
    @Query('with_deleted_tasks_deleted_by') bool? withDeletedTasksDeletedBy,
    @Query('with_created_vehicle_tasks') bool? withCreatedVehicleTasks,
    @Query('with_created_vehicle_tasks_activities')
    bool? withCreatedVehicleTasksActivities,
    @Query('with_created_vehicle_tasks_task') bool? withCreatedVehicleTasksTask,
    @Query('with_created_vehicle_tasks_created_by')
    bool? withCreatedVehicleTasksCreatedBy,
    @Query('with_created_vehicle_tasks_assigned_to')
    bool? withCreatedVehicleTasksAssignedTo,
    @Query('with_created_vehicle_tasks_deleted_by')
    bool? withCreatedVehicleTasksDeletedBy,
    @Query('with_created_vehicle_tasks_updated_by')
    bool? withCreatedVehicleTasksUpdatedBy,
    @Query('with_created_vehicle_tasks_vehicle')
    bool? withCreatedVehicleTasksVehicle,
    @Query('with_created_vehicle_tasks_sub_task')
    bool? withCreatedVehicleTasksSubTask,
    @Query('with_assigned_vehicle_tasks') bool? withAssignedVehicleTasks,
    @Query('with_assigned_vehicle_tasks_activities')
    bool? withAssignedVehicleTasksActivities,
    @Query('with_assigned_vehicle_tasks_task')
    bool? withAssignedVehicleTasksTask,
    @Query('with_assigned_vehicle_tasks_created_by')
    bool? withAssignedVehicleTasksCreatedBy,
    @Query('with_assigned_vehicle_tasks_assigned_to')
    bool? withAssignedVehicleTasksAssignedTo,
    @Query('with_assigned_vehicle_tasks_deleted_by')
    bool? withAssignedVehicleTasksDeletedBy,
    @Query('with_assigned_vehicle_tasks_updated_by')
    bool? withAssignedVehicleTasksUpdatedBy,
    @Query('with_assigned_vehicle_tasks_vehicle')
    bool? withAssignedVehicleTasksVehicle,
    @Query('with_assigned_vehicle_tasks_sub_task')
    bool? withAssignedVehicleTasksSubTask,
    @Query('with_deleted_vehicle_tasks') bool? withDeletedVehicleTasks,
    @Query('with_deleted_vehicle_tasks_activities')
    bool? withDeletedVehicleTasksActivities,
    @Query('with_deleted_vehicle_tasks_task') bool? withDeletedVehicleTasksTask,
    @Query('with_deleted_vehicle_tasks_created_by')
    bool? withDeletedVehicleTasksCreatedBy,
    @Query('with_deleted_vehicle_tasks_assigned_to')
    bool? withDeletedVehicleTasksAssignedTo,
    @Query('with_deleted_vehicle_tasks_deleted_by')
    bool? withDeletedVehicleTasksDeletedBy,
    @Query('with_deleted_vehicle_tasks_updated_by')
    bool? withDeletedVehicleTasksUpdatedBy,
    @Query('with_deleted_vehicle_tasks_vehicle')
    bool? withDeletedVehicleTasksVehicle,
    @Query('with_deleted_vehicle_tasks_sub_task')
    bool? withDeletedVehicleTasksSubTask,
    @Query('with_updated_vehicle_tasks') bool? withUpdatedVehicleTasks,
    @Query('with_updated_vehicle_tasks_activities')
    bool? withUpdatedVehicleTasksActivities,
    @Query('with_updated_vehicle_tasks_task') bool? withUpdatedVehicleTasksTask,
    @Query('with_updated_vehicle_tasks_created_by')
    bool? withUpdatedVehicleTasksCreatedBy,
    @Query('with_updated_vehicle_tasks_assigned_to')
    bool? withUpdatedVehicleTasksAssignedTo,
    @Query('with_updated_vehicle_tasks_deleted_by')
    bool? withUpdatedVehicleTasksDeletedBy,
    @Query('with_updated_vehicle_tasks_updated_by')
    bool? withUpdatedVehicleTasksUpdatedBy,
    @Query('with_updated_vehicle_tasks_vehicle')
    bool? withUpdatedVehicleTasksVehicle,
    @Query('with_updated_vehicle_tasks_sub_task')
    bool? withUpdatedVehicleTasksSubTask,
    @Query('with_permission') bool? withPermission,
    @Query('with_permission_employees') bool? withPermissionEmployees,
    @Query('with_requests') bool? withRequests,
    @Query('with_requests_spare_parts') bool? withRequestsSpareParts,
    @Query('with_requests_request_by') bool? withRequestsRequestBy,
    @Query('with_account') bool? withAccount,
    @Query('with_account_employee') bool? withAccountEmployee,
    @Query('with_created_activities') bool? withCreatedActivities,
    @Query('with_created_activities_vehicle_tasks')
    bool? withCreatedActivitiesVehicleTasks,
    @Query('with_created_activities_created_by')
    bool? withCreatedActivitiesCreatedBy,
    @Query('with_created_activities_updated_by')
    bool? withCreatedActivitiesUpdatedBy,
    @Query('with_created_activities_deleted_by')
    bool? withCreatedActivitiesDeletedBy,
    @Query('with_updated_activities') bool? withUpdatedActivities,
    @Query('with_updated_activities_vehicle_tasks')
    bool? withUpdatedActivitiesVehicleTasks,
    @Query('with_updated_activities_created_by')
    bool? withUpdatedActivitiesCreatedBy,
    @Query('with_updated_activities_updated_by')
    bool? withUpdatedActivitiesUpdatedBy,
    @Query('with_updated_activities_deleted_by')
    bool? withUpdatedActivitiesDeletedBy,
    @Query('with_deleted_activities') bool? withDeletedActivities,
    @Query('with_deleted_activities_vehicle_tasks')
    bool? withDeletedActivitiesVehicleTasks,
    @Query('with_deleted_activities_created_by')
    bool? withDeletedActivitiesCreatedBy,
    @Query('with_deleted_activities_updated_by')
    bool? withDeletedActivitiesUpdatedBy,
    @Query('with_deleted_activities_deleted_by')
    bool? withDeletedActivitiesDeletedBy,
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

  ///Audit record
  ///@param id Employee ID
  Future<chopper.Response<List<EmployeeAudit>>> apiEmployeeIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        EmployeeAudit, () => EmployeeAudit.fromJsonFactory);

    return _apiEmployeeIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Employee ID
  @Get(path: '/api/employee/{id}/audit')
  Future<chopper.Response<List<EmployeeAudit>>> _apiEmployeeIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks data
  ///@param with_created_vehicles_created_by with created_vehicles created_by nested data
  ///@param with_created_vehicles_updated_by with created_vehicles updated_by nested data
  ///@param with_created_vehicles_deleted_by with created_vehicles deleted_by nested data
  ///@param with_created_vehicles_owner with created_vehicles owner nested data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks data
  ///@param with_updated_vehicles_created_by with updated_vehicles created_by nested data
  ///@param with_updated_vehicles_updated_by with updated_vehicles updated_by nested data
  ///@param with_updated_vehicles_deleted_by with updated_vehicles deleted_by nested data
  ///@param with_updated_vehicles_owner with updated_vehicles owner nested data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks data
  ///@param with_deleted_vehicles_created_by with deleted_vehicles created_by nested data
  ///@param with_deleted_vehicles_updated_by with deleted_vehicles updated_by nested data
  ///@param with_deleted_vehicles_deleted_by with deleted_vehicles deleted_by nested data
  ///@param with_deleted_vehicles_owner with deleted_vehicles owner nested data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners data
  ///@param with_created_garages_city with created_garages city nested data
  ///@param with_created_garages_created_by with created_garages created_by nested data
  ///@param with_created_garages_updated_by with created_garages updated_by nested data
  ///@param with_created_garages_deleted_by with created_garages deleted_by nested data
  ///@param with_updated_garages with updated_garages data
  ///@param with_updated_garages_owners with updated_garages owners data
  ///@param with_updated_garages_city with updated_garages city nested data
  ///@param with_updated_garages_created_by with updated_garages created_by nested data
  ///@param with_updated_garages_updated_by with updated_garages updated_by nested data
  ///@param with_updated_garages_deleted_by with updated_garages deleted_by nested data
  ///@param with_deleted_garages with deleted_garages data
  ///@param with_deleted_garages_owners with deleted_garages owners data
  ///@param with_deleted_garages_city with deleted_garages city nested data
  ///@param with_deleted_garages_created_by with deleted_garages created_by nested data
  ///@param with_deleted_garages_updated_by with deleted_garages updated_by nested data
  ///@param with_deleted_garages_deleted_by with deleted_garages deleted_by nested data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks data
  ///@param with_created_tasks_attached_to with created_tasks attached_to data
  ///@param with_created_tasks_created_by with created_tasks created_by nested data
  ///@param with_created_tasks_updated_by with created_tasks updated_by nested data
  ///@param with_created_tasks_deleted_by with created_tasks deleted_by nested data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to data
  ///@param with_updated_tasks_created_by with updated_tasks created_by nested data
  ///@param with_updated_tasks_updated_by with updated_tasks updated_by nested data
  ///@param with_updated_tasks_deleted_by with updated_tasks deleted_by nested data
  ///@param with_deleted_tasks with deleted_tasks data
  ///@param with_deleted_tasks_sub_tasks with deleted_tasks sub_tasks data
  ///@param with_deleted_tasks_attached_to with deleted_tasks attached_to data
  ///@param with_deleted_tasks_created_by with deleted_tasks created_by nested data
  ///@param with_deleted_tasks_updated_by with deleted_tasks updated_by nested data
  ///@param with_deleted_tasks_deleted_by with deleted_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_created_vehicle_tasks_activities with created_vehicle_tasks activities data
  ///@param with_created_vehicle_tasks_task with created_vehicle_tasks task nested data
  ///@param with_created_vehicle_tasks_created_by with created_vehicle_tasks created_by nested data
  ///@param with_created_vehicle_tasks_assigned_to with created_vehicle_tasks assigned_to nested data
  ///@param with_created_vehicle_tasks_deleted_by with created_vehicle_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks_updated_by with created_vehicle_tasks updated_by nested data
  ///@param with_created_vehicle_tasks_vehicle with created_vehicle_tasks vehicle nested data
  ///@param with_created_vehicle_tasks_sub_task with created_vehicle_tasks sub_task nested data
  ///@param with_assigned_vehicle_tasks with assigned_vehicle_tasks data
  ///@param with_assigned_vehicle_tasks_activities with assigned_vehicle_tasks activities data
  ///@param with_assigned_vehicle_tasks_task with assigned_vehicle_tasks task nested data
  ///@param with_assigned_vehicle_tasks_created_by with assigned_vehicle_tasks created_by nested data
  ///@param with_assigned_vehicle_tasks_assigned_to with assigned_vehicle_tasks assigned_to nested data
  ///@param with_assigned_vehicle_tasks_deleted_by with assigned_vehicle_tasks deleted_by nested data
  ///@param with_assigned_vehicle_tasks_updated_by with assigned_vehicle_tasks updated_by nested data
  ///@param with_assigned_vehicle_tasks_vehicle with assigned_vehicle_tasks vehicle nested data
  ///@param with_assigned_vehicle_tasks_sub_task with assigned_vehicle_tasks sub_task nested data
  ///@param with_deleted_vehicle_tasks with deleted_vehicle_tasks data
  ///@param with_deleted_vehicle_tasks_activities with deleted_vehicle_tasks activities data
  ///@param with_deleted_vehicle_tasks_task with deleted_vehicle_tasks task nested data
  ///@param with_deleted_vehicle_tasks_created_by with deleted_vehicle_tasks created_by nested data
  ///@param with_deleted_vehicle_tasks_assigned_to with deleted_vehicle_tasks assigned_to nested data
  ///@param with_deleted_vehicle_tasks_deleted_by with deleted_vehicle_tasks deleted_by nested data
  ///@param with_deleted_vehicle_tasks_updated_by with deleted_vehicle_tasks updated_by nested data
  ///@param with_deleted_vehicle_tasks_vehicle with deleted_vehicle_tasks vehicle nested data
  ///@param with_deleted_vehicle_tasks_sub_task with deleted_vehicle_tasks sub_task nested data
  ///@param with_updated_vehicle_tasks with updated_vehicle_tasks data
  ///@param with_updated_vehicle_tasks_activities with updated_vehicle_tasks activities data
  ///@param with_updated_vehicle_tasks_task with updated_vehicle_tasks task nested data
  ///@param with_updated_vehicle_tasks_created_by with updated_vehicle_tasks created_by nested data
  ///@param with_updated_vehicle_tasks_assigned_to with updated_vehicle_tasks assigned_to nested data
  ///@param with_updated_vehicle_tasks_deleted_by with updated_vehicle_tasks deleted_by nested data
  ///@param with_updated_vehicle_tasks_updated_by with updated_vehicle_tasks updated_by nested data
  ///@param with_updated_vehicle_tasks_vehicle with updated_vehicle_tasks vehicle nested data
  ///@param with_updated_vehicle_tasks_sub_task with updated_vehicle_tasks sub_task nested data
  ///@param with_permission with permission data
  ///@param with_permission_employees with permission employees nested data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts data
  ///@param with_requests_request_by with requests request_by nested data
  ///@param with_account with account data
  ///@param with_account_employee with account employee nested data
  ///@param with_created_activities with created_activities data
  ///@param with_created_activities_vehicle_tasks with created_activities vehicle_tasks nested data
  ///@param with_created_activities_created_by with created_activities created_by nested data
  ///@param with_created_activities_updated_by with created_activities updated_by nested data
  ///@param with_created_activities_deleted_by with created_activities deleted_by nested data
  ///@param with_updated_activities with updated_activities data
  ///@param with_updated_activities_vehicle_tasks with updated_activities vehicle_tasks nested data
  ///@param with_updated_activities_created_by with updated_activities created_by nested data
  ///@param with_updated_activities_updated_by with updated_activities updated_by nested data
  ///@param with_updated_activities_deleted_by with updated_activities deleted_by nested data
  ///@param with_deleted_activities with deleted_activities data
  ///@param with_deleted_activities_vehicle_tasks with deleted_activities vehicle_tasks nested data
  ///@param with_deleted_activities_created_by with deleted_activities created_by nested data
  ///@param with_deleted_activities_updated_by with deleted_activities updated_by nested data
  ///@param with_deleted_activities_deleted_by with deleted_activities deleted_by nested data
  Future<chopper.Response<ListEmployee>> apiEmployeeListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withCreatedVehicles,
    bool? withCreatedVehiclesVehicleTasks,
    bool? withCreatedVehiclesCreatedBy,
    bool? withCreatedVehiclesUpdatedBy,
    bool? withCreatedVehiclesDeletedBy,
    bool? withCreatedVehiclesOwner,
    bool? withUpdatedVehicles,
    bool? withUpdatedVehiclesVehicleTasks,
    bool? withUpdatedVehiclesCreatedBy,
    bool? withUpdatedVehiclesUpdatedBy,
    bool? withUpdatedVehiclesDeletedBy,
    bool? withUpdatedVehiclesOwner,
    bool? withDeletedVehicles,
    bool? withDeletedVehiclesVehicleTasks,
    bool? withDeletedVehiclesCreatedBy,
    bool? withDeletedVehiclesUpdatedBy,
    bool? withDeletedVehiclesDeletedBy,
    bool? withDeletedVehiclesOwner,
    bool? withCreatedGarages,
    bool? withCreatedGaragesOwners,
    bool? withCreatedGaragesCity,
    bool? withCreatedGaragesCreatedBy,
    bool? withCreatedGaragesUpdatedBy,
    bool? withCreatedGaragesDeletedBy,
    bool? withUpdatedGarages,
    bool? withUpdatedGaragesOwners,
    bool? withUpdatedGaragesCity,
    bool? withUpdatedGaragesCreatedBy,
    bool? withUpdatedGaragesUpdatedBy,
    bool? withUpdatedGaragesDeletedBy,
    bool? withDeletedGarages,
    bool? withDeletedGaragesOwners,
    bool? withDeletedGaragesCity,
    bool? withDeletedGaragesCreatedBy,
    bool? withDeletedGaragesUpdatedBy,
    bool? withDeletedGaragesDeletedBy,
    bool? withCreatedTasks,
    bool? withCreatedTasksSubTasks,
    bool? withCreatedTasksAttachedTo,
    bool? withCreatedTasksCreatedBy,
    bool? withCreatedTasksUpdatedBy,
    bool? withCreatedTasksDeletedBy,
    bool? withUpdatedTasks,
    bool? withUpdatedTasksSubTasks,
    bool? withUpdatedTasksAttachedTo,
    bool? withUpdatedTasksCreatedBy,
    bool? withUpdatedTasksUpdatedBy,
    bool? withUpdatedTasksDeletedBy,
    bool? withDeletedTasks,
    bool? withDeletedTasksSubTasks,
    bool? withDeletedTasksAttachedTo,
    bool? withDeletedTasksCreatedBy,
    bool? withDeletedTasksUpdatedBy,
    bool? withDeletedTasksDeletedBy,
    bool? withCreatedVehicleTasks,
    bool? withCreatedVehicleTasksActivities,
    bool? withCreatedVehicleTasksTask,
    bool? withCreatedVehicleTasksCreatedBy,
    bool? withCreatedVehicleTasksAssignedTo,
    bool? withCreatedVehicleTasksDeletedBy,
    bool? withCreatedVehicleTasksUpdatedBy,
    bool? withCreatedVehicleTasksVehicle,
    bool? withCreatedVehicleTasksSubTask,
    bool? withAssignedVehicleTasks,
    bool? withAssignedVehicleTasksActivities,
    bool? withAssignedVehicleTasksTask,
    bool? withAssignedVehicleTasksCreatedBy,
    bool? withAssignedVehicleTasksAssignedTo,
    bool? withAssignedVehicleTasksDeletedBy,
    bool? withAssignedVehicleTasksUpdatedBy,
    bool? withAssignedVehicleTasksVehicle,
    bool? withAssignedVehicleTasksSubTask,
    bool? withDeletedVehicleTasks,
    bool? withDeletedVehicleTasksActivities,
    bool? withDeletedVehicleTasksTask,
    bool? withDeletedVehicleTasksCreatedBy,
    bool? withDeletedVehicleTasksAssignedTo,
    bool? withDeletedVehicleTasksDeletedBy,
    bool? withDeletedVehicleTasksUpdatedBy,
    bool? withDeletedVehicleTasksVehicle,
    bool? withDeletedVehicleTasksSubTask,
    bool? withUpdatedVehicleTasks,
    bool? withUpdatedVehicleTasksActivities,
    bool? withUpdatedVehicleTasksTask,
    bool? withUpdatedVehicleTasksCreatedBy,
    bool? withUpdatedVehicleTasksAssignedTo,
    bool? withUpdatedVehicleTasksDeletedBy,
    bool? withUpdatedVehicleTasksUpdatedBy,
    bool? withUpdatedVehicleTasksVehicle,
    bool? withUpdatedVehicleTasksSubTask,
    bool? withPermission,
    bool? withPermissionEmployees,
    bool? withRequests,
    bool? withRequestsSpareParts,
    bool? withRequestsRequestBy,
    bool? withAccount,
    bool? withAccountEmployee,
    bool? withCreatedActivities,
    bool? withCreatedActivitiesVehicleTasks,
    bool? withCreatedActivitiesCreatedBy,
    bool? withCreatedActivitiesUpdatedBy,
    bool? withCreatedActivitiesDeletedBy,
    bool? withUpdatedActivities,
    bool? withUpdatedActivitiesVehicleTasks,
    bool? withUpdatedActivitiesCreatedBy,
    bool? withUpdatedActivitiesUpdatedBy,
    bool? withUpdatedActivitiesDeletedBy,
    bool? withDeletedActivities,
    bool? withDeletedActivitiesVehicleTasks,
    bool? withDeletedActivitiesCreatedBy,
    bool? withDeletedActivitiesUpdatedBy,
    bool? withDeletedActivitiesDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        ListEmployee, () => ListEmployee.fromJsonFactory);

    return _apiEmployeeListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withCreatedVehicles: withCreatedVehicles,
        withCreatedVehiclesVehicleTasks: withCreatedVehiclesVehicleTasks,
        withCreatedVehiclesCreatedBy: withCreatedVehiclesCreatedBy,
        withCreatedVehiclesUpdatedBy: withCreatedVehiclesUpdatedBy,
        withCreatedVehiclesDeletedBy: withCreatedVehiclesDeletedBy,
        withCreatedVehiclesOwner: withCreatedVehiclesOwner,
        withUpdatedVehicles: withUpdatedVehicles,
        withUpdatedVehiclesVehicleTasks: withUpdatedVehiclesVehicleTasks,
        withUpdatedVehiclesCreatedBy: withUpdatedVehiclesCreatedBy,
        withUpdatedVehiclesUpdatedBy: withUpdatedVehiclesUpdatedBy,
        withUpdatedVehiclesDeletedBy: withUpdatedVehiclesDeletedBy,
        withUpdatedVehiclesOwner: withUpdatedVehiclesOwner,
        withDeletedVehicles: withDeletedVehicles,
        withDeletedVehiclesVehicleTasks: withDeletedVehiclesVehicleTasks,
        withDeletedVehiclesCreatedBy: withDeletedVehiclesCreatedBy,
        withDeletedVehiclesUpdatedBy: withDeletedVehiclesUpdatedBy,
        withDeletedVehiclesDeletedBy: withDeletedVehiclesDeletedBy,
        withDeletedVehiclesOwner: withDeletedVehiclesOwner,
        withCreatedGarages: withCreatedGarages,
        withCreatedGaragesOwners: withCreatedGaragesOwners,
        withCreatedGaragesCity: withCreatedGaragesCity,
        withCreatedGaragesCreatedBy: withCreatedGaragesCreatedBy,
        withCreatedGaragesUpdatedBy: withCreatedGaragesUpdatedBy,
        withCreatedGaragesDeletedBy: withCreatedGaragesDeletedBy,
        withUpdatedGarages: withUpdatedGarages,
        withUpdatedGaragesOwners: withUpdatedGaragesOwners,
        withUpdatedGaragesCity: withUpdatedGaragesCity,
        withUpdatedGaragesCreatedBy: withUpdatedGaragesCreatedBy,
        withUpdatedGaragesUpdatedBy: withUpdatedGaragesUpdatedBy,
        withUpdatedGaragesDeletedBy: withUpdatedGaragesDeletedBy,
        withDeletedGarages: withDeletedGarages,
        withDeletedGaragesOwners: withDeletedGaragesOwners,
        withDeletedGaragesCity: withDeletedGaragesCity,
        withDeletedGaragesCreatedBy: withDeletedGaragesCreatedBy,
        withDeletedGaragesUpdatedBy: withDeletedGaragesUpdatedBy,
        withDeletedGaragesDeletedBy: withDeletedGaragesDeletedBy,
        withCreatedTasks: withCreatedTasks,
        withCreatedTasksSubTasks: withCreatedTasksSubTasks,
        withCreatedTasksAttachedTo: withCreatedTasksAttachedTo,
        withCreatedTasksCreatedBy: withCreatedTasksCreatedBy,
        withCreatedTasksUpdatedBy: withCreatedTasksUpdatedBy,
        withCreatedTasksDeletedBy: withCreatedTasksDeletedBy,
        withUpdatedTasks: withUpdatedTasks,
        withUpdatedTasksSubTasks: withUpdatedTasksSubTasks,
        withUpdatedTasksAttachedTo: withUpdatedTasksAttachedTo,
        withUpdatedTasksCreatedBy: withUpdatedTasksCreatedBy,
        withUpdatedTasksUpdatedBy: withUpdatedTasksUpdatedBy,
        withUpdatedTasksDeletedBy: withUpdatedTasksDeletedBy,
        withDeletedTasks: withDeletedTasks,
        withDeletedTasksSubTasks: withDeletedTasksSubTasks,
        withDeletedTasksAttachedTo: withDeletedTasksAttachedTo,
        withDeletedTasksCreatedBy: withDeletedTasksCreatedBy,
        withDeletedTasksUpdatedBy: withDeletedTasksUpdatedBy,
        withDeletedTasksDeletedBy: withDeletedTasksDeletedBy,
        withCreatedVehicleTasks: withCreatedVehicleTasks,
        withCreatedVehicleTasksActivities: withCreatedVehicleTasksActivities,
        withCreatedVehicleTasksTask: withCreatedVehicleTasksTask,
        withCreatedVehicleTasksCreatedBy: withCreatedVehicleTasksCreatedBy,
        withCreatedVehicleTasksAssignedTo: withCreatedVehicleTasksAssignedTo,
        withCreatedVehicleTasksDeletedBy: withCreatedVehicleTasksDeletedBy,
        withCreatedVehicleTasksUpdatedBy: withCreatedVehicleTasksUpdatedBy,
        withCreatedVehicleTasksVehicle: withCreatedVehicleTasksVehicle,
        withCreatedVehicleTasksSubTask: withCreatedVehicleTasksSubTask,
        withAssignedVehicleTasks: withAssignedVehicleTasks,
        withAssignedVehicleTasksActivities: withAssignedVehicleTasksActivities,
        withAssignedVehicleTasksTask: withAssignedVehicleTasksTask,
        withAssignedVehicleTasksCreatedBy: withAssignedVehicleTasksCreatedBy,
        withAssignedVehicleTasksAssignedTo: withAssignedVehicleTasksAssignedTo,
        withAssignedVehicleTasksDeletedBy: withAssignedVehicleTasksDeletedBy,
        withAssignedVehicleTasksUpdatedBy: withAssignedVehicleTasksUpdatedBy,
        withAssignedVehicleTasksVehicle: withAssignedVehicleTasksVehicle,
        withAssignedVehicleTasksSubTask: withAssignedVehicleTasksSubTask,
        withDeletedVehicleTasks: withDeletedVehicleTasks,
        withDeletedVehicleTasksActivities: withDeletedVehicleTasksActivities,
        withDeletedVehicleTasksTask: withDeletedVehicleTasksTask,
        withDeletedVehicleTasksCreatedBy: withDeletedVehicleTasksCreatedBy,
        withDeletedVehicleTasksAssignedTo: withDeletedVehicleTasksAssignedTo,
        withDeletedVehicleTasksDeletedBy: withDeletedVehicleTasksDeletedBy,
        withDeletedVehicleTasksUpdatedBy: withDeletedVehicleTasksUpdatedBy,
        withDeletedVehicleTasksVehicle: withDeletedVehicleTasksVehicle,
        withDeletedVehicleTasksSubTask: withDeletedVehicleTasksSubTask,
        withUpdatedVehicleTasks: withUpdatedVehicleTasks,
        withUpdatedVehicleTasksActivities: withUpdatedVehicleTasksActivities,
        withUpdatedVehicleTasksTask: withUpdatedVehicleTasksTask,
        withUpdatedVehicleTasksCreatedBy: withUpdatedVehicleTasksCreatedBy,
        withUpdatedVehicleTasksAssignedTo: withUpdatedVehicleTasksAssignedTo,
        withUpdatedVehicleTasksDeletedBy: withUpdatedVehicleTasksDeletedBy,
        withUpdatedVehicleTasksUpdatedBy: withUpdatedVehicleTasksUpdatedBy,
        withUpdatedVehicleTasksVehicle: withUpdatedVehicleTasksVehicle,
        withUpdatedVehicleTasksSubTask: withUpdatedVehicleTasksSubTask,
        withPermission: withPermission,
        withPermissionEmployees: withPermissionEmployees,
        withRequests: withRequests,
        withRequestsSpareParts: withRequestsSpareParts,
        withRequestsRequestBy: withRequestsRequestBy,
        withAccount: withAccount,
        withAccountEmployee: withAccountEmployee,
        withCreatedActivities: withCreatedActivities,
        withCreatedActivitiesVehicleTasks: withCreatedActivitiesVehicleTasks,
        withCreatedActivitiesCreatedBy: withCreatedActivitiesCreatedBy,
        withCreatedActivitiesUpdatedBy: withCreatedActivitiesUpdatedBy,
        withCreatedActivitiesDeletedBy: withCreatedActivitiesDeletedBy,
        withUpdatedActivities: withUpdatedActivities,
        withUpdatedActivitiesVehicleTasks: withUpdatedActivitiesVehicleTasks,
        withUpdatedActivitiesCreatedBy: withUpdatedActivitiesCreatedBy,
        withUpdatedActivitiesUpdatedBy: withUpdatedActivitiesUpdatedBy,
        withUpdatedActivitiesDeletedBy: withUpdatedActivitiesDeletedBy,
        withDeletedActivities: withDeletedActivities,
        withDeletedActivitiesVehicleTasks: withDeletedActivitiesVehicleTasks,
        withDeletedActivitiesCreatedBy: withDeletedActivitiesCreatedBy,
        withDeletedActivitiesUpdatedBy: withDeletedActivitiesUpdatedBy,
        withDeletedActivitiesDeletedBy: withDeletedActivitiesDeletedBy);
  }

  ///List employee
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_created_vehicles with created_vehicles data
  ///@param with_created_vehicles_vehicle_tasks with created_vehicles vehicle_tasks data
  ///@param with_created_vehicles_created_by with created_vehicles created_by nested data
  ///@param with_created_vehicles_updated_by with created_vehicles updated_by nested data
  ///@param with_created_vehicles_deleted_by with created_vehicles deleted_by nested data
  ///@param with_created_vehicles_owner with created_vehicles owner nested data
  ///@param with_updated_vehicles with updated_vehicles data
  ///@param with_updated_vehicles_vehicle_tasks with updated_vehicles vehicle_tasks data
  ///@param with_updated_vehicles_created_by with updated_vehicles created_by nested data
  ///@param with_updated_vehicles_updated_by with updated_vehicles updated_by nested data
  ///@param with_updated_vehicles_deleted_by with updated_vehicles deleted_by nested data
  ///@param with_updated_vehicles_owner with updated_vehicles owner nested data
  ///@param with_deleted_vehicles with deleted_vehicles data
  ///@param with_deleted_vehicles_vehicle_tasks with deleted_vehicles vehicle_tasks data
  ///@param with_deleted_vehicles_created_by with deleted_vehicles created_by nested data
  ///@param with_deleted_vehicles_updated_by with deleted_vehicles updated_by nested data
  ///@param with_deleted_vehicles_deleted_by with deleted_vehicles deleted_by nested data
  ///@param with_deleted_vehicles_owner with deleted_vehicles owner nested data
  ///@param with_created_garages with created_garages data
  ///@param with_created_garages_owners with created_garages owners data
  ///@param with_created_garages_city with created_garages city nested data
  ///@param with_created_garages_created_by with created_garages created_by nested data
  ///@param with_created_garages_updated_by with created_garages updated_by nested data
  ///@param with_created_garages_deleted_by with created_garages deleted_by nested data
  ///@param with_updated_garages with updated_garages data
  ///@param with_updated_garages_owners with updated_garages owners data
  ///@param with_updated_garages_city with updated_garages city nested data
  ///@param with_updated_garages_created_by with updated_garages created_by nested data
  ///@param with_updated_garages_updated_by with updated_garages updated_by nested data
  ///@param with_updated_garages_deleted_by with updated_garages deleted_by nested data
  ///@param with_deleted_garages with deleted_garages data
  ///@param with_deleted_garages_owners with deleted_garages owners data
  ///@param with_deleted_garages_city with deleted_garages city nested data
  ///@param with_deleted_garages_created_by with deleted_garages created_by nested data
  ///@param with_deleted_garages_updated_by with deleted_garages updated_by nested data
  ///@param with_deleted_garages_deleted_by with deleted_garages deleted_by nested data
  ///@param with_created_tasks with created_tasks data
  ///@param with_created_tasks_sub_tasks with created_tasks sub_tasks data
  ///@param with_created_tasks_attached_to with created_tasks attached_to data
  ///@param with_created_tasks_created_by with created_tasks created_by nested data
  ///@param with_created_tasks_updated_by with created_tasks updated_by nested data
  ///@param with_created_tasks_deleted_by with created_tasks deleted_by nested data
  ///@param with_updated_tasks with updated_tasks data
  ///@param with_updated_tasks_sub_tasks with updated_tasks sub_tasks data
  ///@param with_updated_tasks_attached_to with updated_tasks attached_to data
  ///@param with_updated_tasks_created_by with updated_tasks created_by nested data
  ///@param with_updated_tasks_updated_by with updated_tasks updated_by nested data
  ///@param with_updated_tasks_deleted_by with updated_tasks deleted_by nested data
  ///@param with_deleted_tasks with deleted_tasks data
  ///@param with_deleted_tasks_sub_tasks with deleted_tasks sub_tasks data
  ///@param with_deleted_tasks_attached_to with deleted_tasks attached_to data
  ///@param with_deleted_tasks_created_by with deleted_tasks created_by nested data
  ///@param with_deleted_tasks_updated_by with deleted_tasks updated_by nested data
  ///@param with_deleted_tasks_deleted_by with deleted_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks with created_vehicle_tasks data
  ///@param with_created_vehicle_tasks_activities with created_vehicle_tasks activities data
  ///@param with_created_vehicle_tasks_task with created_vehicle_tasks task nested data
  ///@param with_created_vehicle_tasks_created_by with created_vehicle_tasks created_by nested data
  ///@param with_created_vehicle_tasks_assigned_to with created_vehicle_tasks assigned_to nested data
  ///@param with_created_vehicle_tasks_deleted_by with created_vehicle_tasks deleted_by nested data
  ///@param with_created_vehicle_tasks_updated_by with created_vehicle_tasks updated_by nested data
  ///@param with_created_vehicle_tasks_vehicle with created_vehicle_tasks vehicle nested data
  ///@param with_created_vehicle_tasks_sub_task with created_vehicle_tasks sub_task nested data
  ///@param with_assigned_vehicle_tasks with assigned_vehicle_tasks data
  ///@param with_assigned_vehicle_tasks_activities with assigned_vehicle_tasks activities data
  ///@param with_assigned_vehicle_tasks_task with assigned_vehicle_tasks task nested data
  ///@param with_assigned_vehicle_tasks_created_by with assigned_vehicle_tasks created_by nested data
  ///@param with_assigned_vehicle_tasks_assigned_to with assigned_vehicle_tasks assigned_to nested data
  ///@param with_assigned_vehicle_tasks_deleted_by with assigned_vehicle_tasks deleted_by nested data
  ///@param with_assigned_vehicle_tasks_updated_by with assigned_vehicle_tasks updated_by nested data
  ///@param with_assigned_vehicle_tasks_vehicle with assigned_vehicle_tasks vehicle nested data
  ///@param with_assigned_vehicle_tasks_sub_task with assigned_vehicle_tasks sub_task nested data
  ///@param with_deleted_vehicle_tasks with deleted_vehicle_tasks data
  ///@param with_deleted_vehicle_tasks_activities with deleted_vehicle_tasks activities data
  ///@param with_deleted_vehicle_tasks_task with deleted_vehicle_tasks task nested data
  ///@param with_deleted_vehicle_tasks_created_by with deleted_vehicle_tasks created_by nested data
  ///@param with_deleted_vehicle_tasks_assigned_to with deleted_vehicle_tasks assigned_to nested data
  ///@param with_deleted_vehicle_tasks_deleted_by with deleted_vehicle_tasks deleted_by nested data
  ///@param with_deleted_vehicle_tasks_updated_by with deleted_vehicle_tasks updated_by nested data
  ///@param with_deleted_vehicle_tasks_vehicle with deleted_vehicle_tasks vehicle nested data
  ///@param with_deleted_vehicle_tasks_sub_task with deleted_vehicle_tasks sub_task nested data
  ///@param with_updated_vehicle_tasks with updated_vehicle_tasks data
  ///@param with_updated_vehicle_tasks_activities with updated_vehicle_tasks activities data
  ///@param with_updated_vehicle_tasks_task with updated_vehicle_tasks task nested data
  ///@param with_updated_vehicle_tasks_created_by with updated_vehicle_tasks created_by nested data
  ///@param with_updated_vehicle_tasks_assigned_to with updated_vehicle_tasks assigned_to nested data
  ///@param with_updated_vehicle_tasks_deleted_by with updated_vehicle_tasks deleted_by nested data
  ///@param with_updated_vehicle_tasks_updated_by with updated_vehicle_tasks updated_by nested data
  ///@param with_updated_vehicle_tasks_vehicle with updated_vehicle_tasks vehicle nested data
  ///@param with_updated_vehicle_tasks_sub_task with updated_vehicle_tasks sub_task nested data
  ///@param with_permission with permission data
  ///@param with_permission_employees with permission employees nested data
  ///@param with_requests with requests data
  ///@param with_requests_spare_parts with requests spare_parts data
  ///@param with_requests_request_by with requests request_by nested data
  ///@param with_account with account data
  ///@param with_account_employee with account employee nested data
  ///@param with_created_activities with created_activities data
  ///@param with_created_activities_vehicle_tasks with created_activities vehicle_tasks nested data
  ///@param with_created_activities_created_by with created_activities created_by nested data
  ///@param with_created_activities_updated_by with created_activities updated_by nested data
  ///@param with_created_activities_deleted_by with created_activities deleted_by nested data
  ///@param with_updated_activities with updated_activities data
  ///@param with_updated_activities_vehicle_tasks with updated_activities vehicle_tasks nested data
  ///@param with_updated_activities_created_by with updated_activities created_by nested data
  ///@param with_updated_activities_updated_by with updated_activities updated_by nested data
  ///@param with_updated_activities_deleted_by with updated_activities deleted_by nested data
  ///@param with_deleted_activities with deleted_activities data
  ///@param with_deleted_activities_vehicle_tasks with deleted_activities vehicle_tasks nested data
  ///@param with_deleted_activities_created_by with deleted_activities created_by nested data
  ///@param with_deleted_activities_updated_by with deleted_activities updated_by nested data
  ///@param with_deleted_activities_deleted_by with deleted_activities deleted_by nested data
  @Get(path: '/api/employee/list')
  Future<chopper.Response<ListEmployee>> _apiEmployeeListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_created_vehicles') bool? withCreatedVehicles,
    @Query('with_created_vehicles_vehicle_tasks')
    bool? withCreatedVehiclesVehicleTasks,
    @Query('with_created_vehicles_created_by')
    bool? withCreatedVehiclesCreatedBy,
    @Query('with_created_vehicles_updated_by')
    bool? withCreatedVehiclesUpdatedBy,
    @Query('with_created_vehicles_deleted_by')
    bool? withCreatedVehiclesDeletedBy,
    @Query('with_created_vehicles_owner') bool? withCreatedVehiclesOwner,
    @Query('with_updated_vehicles') bool? withUpdatedVehicles,
    @Query('with_updated_vehicles_vehicle_tasks')
    bool? withUpdatedVehiclesVehicleTasks,
    @Query('with_updated_vehicles_created_by')
    bool? withUpdatedVehiclesCreatedBy,
    @Query('with_updated_vehicles_updated_by')
    bool? withUpdatedVehiclesUpdatedBy,
    @Query('with_updated_vehicles_deleted_by')
    bool? withUpdatedVehiclesDeletedBy,
    @Query('with_updated_vehicles_owner') bool? withUpdatedVehiclesOwner,
    @Query('with_deleted_vehicles') bool? withDeletedVehicles,
    @Query('with_deleted_vehicles_vehicle_tasks')
    bool? withDeletedVehiclesVehicleTasks,
    @Query('with_deleted_vehicles_created_by')
    bool? withDeletedVehiclesCreatedBy,
    @Query('with_deleted_vehicles_updated_by')
    bool? withDeletedVehiclesUpdatedBy,
    @Query('with_deleted_vehicles_deleted_by')
    bool? withDeletedVehiclesDeletedBy,
    @Query('with_deleted_vehicles_owner') bool? withDeletedVehiclesOwner,
    @Query('with_created_garages') bool? withCreatedGarages,
    @Query('with_created_garages_owners') bool? withCreatedGaragesOwners,
    @Query('with_created_garages_city') bool? withCreatedGaragesCity,
    @Query('with_created_garages_created_by') bool? withCreatedGaragesCreatedBy,
    @Query('with_created_garages_updated_by') bool? withCreatedGaragesUpdatedBy,
    @Query('with_created_garages_deleted_by') bool? withCreatedGaragesDeletedBy,
    @Query('with_updated_garages') bool? withUpdatedGarages,
    @Query('with_updated_garages_owners') bool? withUpdatedGaragesOwners,
    @Query('with_updated_garages_city') bool? withUpdatedGaragesCity,
    @Query('with_updated_garages_created_by') bool? withUpdatedGaragesCreatedBy,
    @Query('with_updated_garages_updated_by') bool? withUpdatedGaragesUpdatedBy,
    @Query('with_updated_garages_deleted_by') bool? withUpdatedGaragesDeletedBy,
    @Query('with_deleted_garages') bool? withDeletedGarages,
    @Query('with_deleted_garages_owners') bool? withDeletedGaragesOwners,
    @Query('with_deleted_garages_city') bool? withDeletedGaragesCity,
    @Query('with_deleted_garages_created_by') bool? withDeletedGaragesCreatedBy,
    @Query('with_deleted_garages_updated_by') bool? withDeletedGaragesUpdatedBy,
    @Query('with_deleted_garages_deleted_by') bool? withDeletedGaragesDeletedBy,
    @Query('with_created_tasks') bool? withCreatedTasks,
    @Query('with_created_tasks_sub_tasks') bool? withCreatedTasksSubTasks,
    @Query('with_created_tasks_attached_to') bool? withCreatedTasksAttachedTo,
    @Query('with_created_tasks_created_by') bool? withCreatedTasksCreatedBy,
    @Query('with_created_tasks_updated_by') bool? withCreatedTasksUpdatedBy,
    @Query('with_created_tasks_deleted_by') bool? withCreatedTasksDeletedBy,
    @Query('with_updated_tasks') bool? withUpdatedTasks,
    @Query('with_updated_tasks_sub_tasks') bool? withUpdatedTasksSubTasks,
    @Query('with_updated_tasks_attached_to') bool? withUpdatedTasksAttachedTo,
    @Query('with_updated_tasks_created_by') bool? withUpdatedTasksCreatedBy,
    @Query('with_updated_tasks_updated_by') bool? withUpdatedTasksUpdatedBy,
    @Query('with_updated_tasks_deleted_by') bool? withUpdatedTasksDeletedBy,
    @Query('with_deleted_tasks') bool? withDeletedTasks,
    @Query('with_deleted_tasks_sub_tasks') bool? withDeletedTasksSubTasks,
    @Query('with_deleted_tasks_attached_to') bool? withDeletedTasksAttachedTo,
    @Query('with_deleted_tasks_created_by') bool? withDeletedTasksCreatedBy,
    @Query('with_deleted_tasks_updated_by') bool? withDeletedTasksUpdatedBy,
    @Query('with_deleted_tasks_deleted_by') bool? withDeletedTasksDeletedBy,
    @Query('with_created_vehicle_tasks') bool? withCreatedVehicleTasks,
    @Query('with_created_vehicle_tasks_activities')
    bool? withCreatedVehicleTasksActivities,
    @Query('with_created_vehicle_tasks_task') bool? withCreatedVehicleTasksTask,
    @Query('with_created_vehicle_tasks_created_by')
    bool? withCreatedVehicleTasksCreatedBy,
    @Query('with_created_vehicle_tasks_assigned_to')
    bool? withCreatedVehicleTasksAssignedTo,
    @Query('with_created_vehicle_tasks_deleted_by')
    bool? withCreatedVehicleTasksDeletedBy,
    @Query('with_created_vehicle_tasks_updated_by')
    bool? withCreatedVehicleTasksUpdatedBy,
    @Query('with_created_vehicle_tasks_vehicle')
    bool? withCreatedVehicleTasksVehicle,
    @Query('with_created_vehicle_tasks_sub_task')
    bool? withCreatedVehicleTasksSubTask,
    @Query('with_assigned_vehicle_tasks') bool? withAssignedVehicleTasks,
    @Query('with_assigned_vehicle_tasks_activities')
    bool? withAssignedVehicleTasksActivities,
    @Query('with_assigned_vehicle_tasks_task')
    bool? withAssignedVehicleTasksTask,
    @Query('with_assigned_vehicle_tasks_created_by')
    bool? withAssignedVehicleTasksCreatedBy,
    @Query('with_assigned_vehicle_tasks_assigned_to')
    bool? withAssignedVehicleTasksAssignedTo,
    @Query('with_assigned_vehicle_tasks_deleted_by')
    bool? withAssignedVehicleTasksDeletedBy,
    @Query('with_assigned_vehicle_tasks_updated_by')
    bool? withAssignedVehicleTasksUpdatedBy,
    @Query('with_assigned_vehicle_tasks_vehicle')
    bool? withAssignedVehicleTasksVehicle,
    @Query('with_assigned_vehicle_tasks_sub_task')
    bool? withAssignedVehicleTasksSubTask,
    @Query('with_deleted_vehicle_tasks') bool? withDeletedVehicleTasks,
    @Query('with_deleted_vehicle_tasks_activities')
    bool? withDeletedVehicleTasksActivities,
    @Query('with_deleted_vehicle_tasks_task') bool? withDeletedVehicleTasksTask,
    @Query('with_deleted_vehicle_tasks_created_by')
    bool? withDeletedVehicleTasksCreatedBy,
    @Query('with_deleted_vehicle_tasks_assigned_to')
    bool? withDeletedVehicleTasksAssignedTo,
    @Query('with_deleted_vehicle_tasks_deleted_by')
    bool? withDeletedVehicleTasksDeletedBy,
    @Query('with_deleted_vehicle_tasks_updated_by')
    bool? withDeletedVehicleTasksUpdatedBy,
    @Query('with_deleted_vehicle_tasks_vehicle')
    bool? withDeletedVehicleTasksVehicle,
    @Query('with_deleted_vehicle_tasks_sub_task')
    bool? withDeletedVehicleTasksSubTask,
    @Query('with_updated_vehicle_tasks') bool? withUpdatedVehicleTasks,
    @Query('with_updated_vehicle_tasks_activities')
    bool? withUpdatedVehicleTasksActivities,
    @Query('with_updated_vehicle_tasks_task') bool? withUpdatedVehicleTasksTask,
    @Query('with_updated_vehicle_tasks_created_by')
    bool? withUpdatedVehicleTasksCreatedBy,
    @Query('with_updated_vehicle_tasks_assigned_to')
    bool? withUpdatedVehicleTasksAssignedTo,
    @Query('with_updated_vehicle_tasks_deleted_by')
    bool? withUpdatedVehicleTasksDeletedBy,
    @Query('with_updated_vehicle_tasks_updated_by')
    bool? withUpdatedVehicleTasksUpdatedBy,
    @Query('with_updated_vehicle_tasks_vehicle')
    bool? withUpdatedVehicleTasksVehicle,
    @Query('with_updated_vehicle_tasks_sub_task')
    bool? withUpdatedVehicleTasksSubTask,
    @Query('with_permission') bool? withPermission,
    @Query('with_permission_employees') bool? withPermissionEmployees,
    @Query('with_requests') bool? withRequests,
    @Query('with_requests_spare_parts') bool? withRequestsSpareParts,
    @Query('with_requests_request_by') bool? withRequestsRequestBy,
    @Query('with_account') bool? withAccount,
    @Query('with_account_employee') bool? withAccountEmployee,
    @Query('with_created_activities') bool? withCreatedActivities,
    @Query('with_created_activities_vehicle_tasks')
    bool? withCreatedActivitiesVehicleTasks,
    @Query('with_created_activities_created_by')
    bool? withCreatedActivitiesCreatedBy,
    @Query('with_created_activities_updated_by')
    bool? withCreatedActivitiesUpdatedBy,
    @Query('with_created_activities_deleted_by')
    bool? withCreatedActivitiesDeletedBy,
    @Query('with_updated_activities') bool? withUpdatedActivities,
    @Query('with_updated_activities_vehicle_tasks')
    bool? withUpdatedActivitiesVehicleTasks,
    @Query('with_updated_activities_created_by')
    bool? withUpdatedActivitiesCreatedBy,
    @Query('with_updated_activities_updated_by')
    bool? withUpdatedActivitiesUpdatedBy,
    @Query('with_updated_activities_deleted_by')
    bool? withUpdatedActivitiesDeletedBy,
    @Query('with_deleted_activities') bool? withDeletedActivities,
    @Query('with_deleted_activities_vehicle_tasks')
    bool? withDeletedActivitiesVehicleTasks,
    @Query('with_deleted_activities_created_by')
    bool? withDeletedActivitiesCreatedBy,
    @Query('with_deleted_activities_updated_by')
    bool? withDeletedActivitiesUpdatedBy,
    @Query('with_deleted_activities_deleted_by')
    bool? withDeletedActivitiesDeletedBy,
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

  ///Delete garage record
  ///@param id Garage ID
  Future<chopper.Response<String>> apiGarageIdDelete({required int? id}) {
    return _apiGarageIdDelete(id: id);
  }

  ///Delete garage record
  ///@param id Garage ID
  @Delete(path: '/api/garage/{id}')
  Future<chopper.Response<String>> _apiGarageIdDelete(
      {@Path('id') required int? id});

  ///Get garage by ID
  ///@param id Garage ID
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles nested data
  ///@param with_owners_garage with owners garage nested data
  ///@param with_city with city data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  Future<chopper.Response<GarageResponse>> apiGarageIdGet({
    required int? id,
    bool? withOwners,
    bool? withOwnersVehicles,
    bool? withOwnersGarage,
    bool? withCity,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        GarageResponse, () => GarageResponse.fromJsonFactory);

    return _apiGarageIdGet(
        id: id,
        withOwners: withOwners,
        withOwnersVehicles: withOwnersVehicles,
        withOwnersGarage: withOwnersGarage,
        withCity: withCity,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy);
  }

  ///Get garage by ID
  ///@param id Garage ID
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles nested data
  ///@param with_owners_garage with owners garage nested data
  ///@param with_city with city data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  @Get(path: '/api/garage/{id}')
  Future<chopper.Response<GarageResponse>> _apiGarageIdGet({
    @Path('id') required int? id,
    @Query('with_owners') bool? withOwners,
    @Query('with_owners_vehicles') bool? withOwnersVehicles,
    @Query('with_owners_garage') bool? withOwnersGarage,
    @Query('with_city') bool? withCity,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
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

  ///Audit record
  ///@param id Garage ID
  Future<chopper.Response<List<GarageAudit>>> apiGarageIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        GarageAudit, () => GarageAudit.fromJsonFactory);

    return _apiGarageIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Garage ID
  @Get(path: '/api/garage/{id}/audit')
  Future<chopper.Response<List<GarageAudit>>> _apiGarageIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles data
  ///@param with_owners_garage with owners garage nested data
  ///@param with_city with city data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  Future<chopper.Response<ListGarage>> apiGarageListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withOwners,
    bool? withOwnersVehicles,
    bool? withOwnersGarage,
    bool? withCity,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    generatedMapping.putIfAbsent(ListGarage, () => ListGarage.fromJsonFactory);

    return _apiGarageListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withOwners: withOwners,
        withOwnersVehicles: withOwnersVehicles,
        withOwnersGarage: withOwnersGarage,
        withCity: withCity,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy);
  }

  ///List garage
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_owners with owners data
  ///@param with_owners_vehicles with owners vehicles data
  ///@param with_owners_garage with owners garage nested data
  ///@param with_city with city data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  @Get(path: '/api/garage/list')
  Future<chopper.Response<ListGarage>> _apiGarageListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_owners') bool? withOwners,
    @Query('with_owners_vehicles') bool? withOwnersVehicles,
    @Query('with_owners_garage') bool? withOwnersGarage,
    @Query('with_city') bool? withCity,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
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

  ///Delete Owner record
  ///@param id Owner ID
  Future<chopper.Response<String>> apiOwnerIdDelete({required int? id}) {
    return _apiOwnerIdDelete(id: id);
  }

  ///Delete Owner record
  ///@param id Owner ID
  @Delete(path: '/api/owner/{id}')
  Future<chopper.Response<String>> _apiOwnerIdDelete(
      {@Path('id') required int? id});

  ///Get owner by ID
  ///@param id Owner ID
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks nested data
  ///@param with_vehicles_created_by with vehicles created_by nested data
  ///@param with_vehicles_updated_by with vehicles updated_by nested data
  ///@param with_vehicles_deleted_by with vehicles deleted_by nested data
  ///@param with_vehicles_owner with vehicles owner nested data
  ///@param with_garage with garage data
  Future<chopper.Response<OwnerResponse>> apiOwnerIdGet({
    required int? id,
    bool? withVehicles,
    bool? withVehiclesVehicleTasks,
    bool? withVehiclesCreatedBy,
    bool? withVehiclesUpdatedBy,
    bool? withVehiclesDeletedBy,
    bool? withVehiclesOwner,
    bool? withGarage,
  }) {
    generatedMapping.putIfAbsent(
        OwnerResponse, () => OwnerResponse.fromJsonFactory);

    return _apiOwnerIdGet(
        id: id,
        withVehicles: withVehicles,
        withVehiclesVehicleTasks: withVehiclesVehicleTasks,
        withVehiclesCreatedBy: withVehiclesCreatedBy,
        withVehiclesUpdatedBy: withVehiclesUpdatedBy,
        withVehiclesDeletedBy: withVehiclesDeletedBy,
        withVehiclesOwner: withVehiclesOwner,
        withGarage: withGarage);
  }

  ///Get owner by ID
  ///@param id Owner ID
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks nested data
  ///@param with_vehicles_created_by with vehicles created_by nested data
  ///@param with_vehicles_updated_by with vehicles updated_by nested data
  ///@param with_vehicles_deleted_by with vehicles deleted_by nested data
  ///@param with_vehicles_owner with vehicles owner nested data
  ///@param with_garage with garage data
  @Get(path: '/api/owner/{id}')
  Future<chopper.Response<OwnerResponse>> _apiOwnerIdGet({
    @Path('id') required int? id,
    @Query('with_vehicles') bool? withVehicles,
    @Query('with_vehicles_vehicle_tasks') bool? withVehiclesVehicleTasks,
    @Query('with_vehicles_created_by') bool? withVehiclesCreatedBy,
    @Query('with_vehicles_updated_by') bool? withVehiclesUpdatedBy,
    @Query('with_vehicles_deleted_by') bool? withVehiclesDeletedBy,
    @Query('with_vehicles_owner') bool? withVehiclesOwner,
    @Query('with_garage') bool? withGarage,
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

  ///Audit record
  ///@param id Owner ID
  Future<chopper.Response<List<OwnerAudit>>> apiOwnerIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(OwnerAudit, () => OwnerAudit.fromJsonFactory);

    return _apiOwnerIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Owner ID
  @Get(path: '/api/owner/{id}/audit')
  Future<chopper.Response<List<OwnerAudit>>> _apiOwnerIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks data
  ///@param with_vehicles_created_by with vehicles created_by nested data
  ///@param with_vehicles_updated_by with vehicles updated_by nested data
  ///@param with_vehicles_deleted_by with vehicles deleted_by nested data
  ///@param with_vehicles_owner with vehicles owner nested data
  ///@param with_garage with garage data
  Future<chopper.Response<ListOwner>> apiOwnerListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withVehicles,
    bool? withVehiclesVehicleTasks,
    bool? withVehiclesCreatedBy,
    bool? withVehiclesUpdatedBy,
    bool? withVehiclesDeletedBy,
    bool? withVehiclesOwner,
    bool? withGarage,
  }) {
    generatedMapping.putIfAbsent(ListOwner, () => ListOwner.fromJsonFactory);

    return _apiOwnerListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withVehicles: withVehicles,
        withVehiclesVehicleTasks: withVehiclesVehicleTasks,
        withVehiclesCreatedBy: withVehiclesCreatedBy,
        withVehiclesUpdatedBy: withVehiclesUpdatedBy,
        withVehiclesDeletedBy: withVehiclesDeletedBy,
        withVehiclesOwner: withVehiclesOwner,
        withGarage: withGarage);
  }

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_vehicles with vehicles data
  ///@param with_vehicles_vehicle_tasks with vehicles vehicle_tasks data
  ///@param with_vehicles_created_by with vehicles created_by nested data
  ///@param with_vehicles_updated_by with vehicles updated_by nested data
  ///@param with_vehicles_deleted_by with vehicles deleted_by nested data
  ///@param with_vehicles_owner with vehicles owner nested data
  ///@param with_garage with garage data
  @Get(path: '/api/owner/list')
  Future<chopper.Response<ListOwner>> _apiOwnerListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_vehicles') bool? withVehicles,
    @Query('with_vehicles_vehicle_tasks') bool? withVehiclesVehicleTasks,
    @Query('with_vehicles_created_by') bool? withVehiclesCreatedBy,
    @Query('with_vehicles_updated_by') bool? withVehiclesUpdatedBy,
    @Query('with_vehicles_deleted_by') bool? withVehiclesDeletedBy,
    @Query('with_vehicles_owner') bool? withVehiclesOwner,
    @Query('with_garage') bool? withGarage,
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

  ///Delete Permission record
  ///@param id Permission ID
  Future<chopper.Response<String>> apiPermissionIdDelete({required int? id}) {
    return _apiPermissionIdDelete(id: id);
  }

  ///Delete Permission record
  ///@param id Permission ID
  @Delete(path: '/api/permission/{id}')
  Future<chopper.Response<String>> _apiPermissionIdDelete(
      {@Path('id') required int? id});

  ///Get permission by ID
  ///@param id Permission ID
  ///@param with_employees with employees data
  Future<chopper.Response<PermissionResponse>> apiPermissionIdGet({
    required int? id,
    bool? withEmployees,
  }) {
    generatedMapping.putIfAbsent(
        PermissionResponse, () => PermissionResponse.fromJsonFactory);

    return _apiPermissionIdGet(id: id, withEmployees: withEmployees);
  }

  ///Get permission by ID
  ///@param id Permission ID
  ///@param with_employees with employees data
  @Get(path: '/api/permission/{id}')
  Future<chopper.Response<PermissionResponse>> _apiPermissionIdGet({
    @Path('id') required int? id,
    @Query('with_employees') bool? withEmployees,
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

  ///Audit record
  ///@param id Permission ID
  Future<chopper.Response<List<PermissionAudit>>> apiPermissionIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        PermissionAudit, () => PermissionAudit.fromJsonFactory);

    return _apiPermissionIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Permission ID
  @Get(path: '/api/permission/{id}/audit')
  Future<chopper.Response<List<PermissionAudit>>> _apiPermissionIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_employees with employees data
  Future<chopper.Response<ListPermission>> apiPermissionListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withEmployees,
  }) {
    generatedMapping.putIfAbsent(
        ListPermission, () => ListPermission.fromJsonFactory);

    return _apiPermissionListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withEmployees: withEmployees);
  }

  ///List permission
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_employees with employees data
  @Get(path: '/api/permission/list')
  Future<chopper.Response<ListPermission>> _apiPermissionListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_employees') bool? withEmployees,
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

  ///Delete Spare Part record
  ///@param id SparePart ID
  Future<chopper.Response<String>> apiSparePartIdDelete({required int? id}) {
    return _apiSparePartIdDelete(id: id);
  }

  ///Delete Spare Part record
  ///@param id SparePart ID
  @Delete(path: '/api/spare_part/{id}')
  Future<chopper.Response<String>> _apiSparePartIdDelete(
      {@Path('id') required int? id});

  ///Get spare_part by ID
  ///@param id SparePart ID
  ///@param with_request with request data
  ///@param with_supplier with supplier data
  Future<chopper.Response<SparePartResponse>> apiSparePartIdGet({
    required int? id,
    bool? withRequest,
    bool? withSupplier,
  }) {
    generatedMapping.putIfAbsent(
        SparePartResponse, () => SparePartResponse.fromJsonFactory);

    return _apiSparePartIdGet(
        id: id, withRequest: withRequest, withSupplier: withSupplier);
  }

  ///Get spare_part by ID
  ///@param id SparePart ID
  ///@param with_request with request data
  ///@param with_supplier with supplier data
  @Get(path: '/api/spare_part/{id}')
  Future<chopper.Response<SparePartResponse>> _apiSparePartIdGet({
    @Path('id') required int? id,
    @Query('with_request') bool? withRequest,
    @Query('with_supplier') bool? withSupplier,
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

  ///Audit record
  ///@param id SparePart ID
  Future<chopper.Response<List<SparePartAudit>>> apiSparePartIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        SparePartAudit, () => SparePartAudit.fromJsonFactory);

    return _apiSparePartIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id SparePart ID
  @Get(path: '/api/spare_part/{id}/audit')
  Future<chopper.Response<List<SparePartAudit>>> _apiSparePartIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_request with request data
  ///@param with_supplier with supplier data
  Future<chopper.Response<ListSparePart>> apiSparePartListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withRequest,
    bool? withSupplier,
  }) {
    generatedMapping.putIfAbsent(
        ListSparePart, () => ListSparePart.fromJsonFactory);

    return _apiSparePartListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withRequest: withRequest,
        withSupplier: withSupplier);
  }

  ///List spare_part
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_request with request data
  ///@param with_supplier with supplier data
  @Get(path: '/api/spare_part/list')
  Future<chopper.Response<ListSparePart>> _apiSparePartListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_request') bool? withRequest,
    @Query('with_supplier') bool? withSupplier,
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

  ///Delete spare part request record
  ///@param id SparePartRequest ID
  Future<chopper.Response<String>> apiSparePartRequestIdDelete(
      {required int? id}) {
    return _apiSparePartRequestIdDelete(id: id);
  }

  ///Delete spare part request record
  ///@param id SparePartRequest ID
  @Delete(path: '/api/spare_part_request/{id}')
  Future<chopper.Response<String>> _apiSparePartRequestIdDelete(
      {@Path('id') required int? id});

  ///Get spare_part_request by ID
  ///@param id SparePartRequest ID
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  ///@param with_request_by with request_by data
  Future<chopper.Response<SparePartRequestResponse>> apiSparePartRequestIdGet({
    required int? id,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
    bool? withRequestBy,
  }) {
    generatedMapping.putIfAbsent(SparePartRequestResponse,
        () => SparePartRequestResponse.fromJsonFactory);

    return _apiSparePartRequestIdGet(
        id: id,
        withSpareParts: withSpareParts,
        withSparePartsRequest: withSparePartsRequest,
        withSparePartsSupplier: withSparePartsSupplier,
        withRequestBy: withRequestBy);
  }

  ///Get spare_part_request by ID
  ///@param id SparePartRequest ID
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  ///@param with_request_by with request_by data
  @Get(path: '/api/spare_part_request/{id}')
  Future<chopper.Response<SparePartRequestResponse>> _apiSparePartRequestIdGet({
    @Path('id') required int? id,
    @Query('with_spare_parts') bool? withSpareParts,
    @Query('with_spare_parts_request') bool? withSparePartsRequest,
    @Query('with_spare_parts_supplier') bool? withSparePartsSupplier,
    @Query('with_request_by') bool? withRequestBy,
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

  ///Audit record
  ///@param id SparePartRequest ID
  Future<chopper.Response<List<SparePartRequestAudit>>>
      apiSparePartRequestIdAuditGet({required int? id}) {
    generatedMapping.putIfAbsent(
        SparePartRequestAudit, () => SparePartRequestAudit.fromJsonFactory);

    return _apiSparePartRequestIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id SparePartRequest ID
  @Get(path: '/api/spare_part_request/{id}/audit')
  Future<chopper.Response<List<SparePartRequestAudit>>>
      _apiSparePartRequestIdAuditGet({@Path('id') required int? id});

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
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  ///@param with_request_by with request_by data
  Future<chopper.Response<ListSparePartRequest>> apiSparePartRequestListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
    bool? withRequestBy,
  }) {
    generatedMapping.putIfAbsent(
        ListSparePartRequest, () => ListSparePartRequest.fromJsonFactory);

    return _apiSparePartRequestListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withSpareParts: withSpareParts,
        withSparePartsRequest: withSparePartsRequest,
        withSparePartsSupplier: withSparePartsSupplier,
        withRequestBy: withRequestBy);
  }

  ///List spare_part_request
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  ///@param with_request_by with request_by data
  @Get(path: '/api/spare_part_request/list')
  Future<chopper.Response<ListSparePartRequest>> _apiSparePartRequestListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_spare_parts') bool? withSpareParts,
    @Query('with_spare_parts_request') bool? withSparePartsRequest,
    @Query('with_spare_parts_supplier') bool? withSparePartsSupplier,
    @Query('with_request_by') bool? withRequestBy,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiSparePartRequestTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiSparePartRequestTotalGet();
  }

  ///Total records
  @Get(path: '/api/spare_part_request/total')
  Future<chopper.Response<TotalCount>> _apiSparePartRequestTotalGet();

  ///Create a new sub_task
  ///@param sub_task_model Register sub_task
  Future<chopper.Response<SubTaskResponse>> apiSubTaskPost(
      {required Object? subTaskModel}) {
    generatedMapping.putIfAbsent(
        CreateSubTask, () => CreateSubTask.fromJsonFactory);
    generatedMapping.putIfAbsent(
        SubTaskResponse, () => SubTaskResponse.fromJsonFactory);

    return _apiSubTaskPost(subTaskModel: subTaskModel);
  }

  ///Create a new sub_task
  ///@param sub_task_model Register sub_task
  @Post(path: '/api/sub_task')
  Future<chopper.Response<SubTaskResponse>> _apiSubTaskPost(
      {@Body() required Object? subTaskModel});

  ///Delete sub task record
  ///@param id SubTask ID
  Future<chopper.Response<String>> apiSubTaskIdDelete({required int? id}) {
    return _apiSubTaskIdDelete(id: id);
  }

  ///Delete sub task record
  ///@param id SubTask ID
  @Delete(path: '/api/sub_task/{id}')
  Future<chopper.Response<String>> _apiSubTaskIdDelete(
      {@Path('id') required int? id});

  ///Get sub_task by ID
  ///@param id SubTask ID
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities nested data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_parent_task with parent_task data
  Future<chopper.Response<SubTaskResponse>> apiSubTaskIdGet({
    required int? id,
    bool? withAttachedTo,
    bool? withAttachedToActivities,
    bool? withAttachedToTask,
    bool? withAttachedToCreatedBy,
    bool? withAttachedToAssignedTo,
    bool? withAttachedToDeletedBy,
    bool? withAttachedToUpdatedBy,
    bool? withAttachedToVehicle,
    bool? withAttachedToSubTask,
    bool? withParentTask,
  }) {
    generatedMapping.putIfAbsent(
        SubTaskResponse, () => SubTaskResponse.fromJsonFactory);

    return _apiSubTaskIdGet(
        id: id,
        withAttachedTo: withAttachedTo,
        withAttachedToActivities: withAttachedToActivities,
        withAttachedToTask: withAttachedToTask,
        withAttachedToCreatedBy: withAttachedToCreatedBy,
        withAttachedToAssignedTo: withAttachedToAssignedTo,
        withAttachedToDeletedBy: withAttachedToDeletedBy,
        withAttachedToUpdatedBy: withAttachedToUpdatedBy,
        withAttachedToVehicle: withAttachedToVehicle,
        withAttachedToSubTask: withAttachedToSubTask,
        withParentTask: withParentTask);
  }

  ///Get sub_task by ID
  ///@param id SubTask ID
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities nested data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_parent_task with parent_task data
  @Get(path: '/api/sub_task/{id}')
  Future<chopper.Response<SubTaskResponse>> _apiSubTaskIdGet({
    @Path('id') required int? id,
    @Query('with_attached_to') bool? withAttachedTo,
    @Query('with_attached_to_activities') bool? withAttachedToActivities,
    @Query('with_attached_to_task') bool? withAttachedToTask,
    @Query('with_attached_to_created_by') bool? withAttachedToCreatedBy,
    @Query('with_attached_to_assigned_to') bool? withAttachedToAssignedTo,
    @Query('with_attached_to_deleted_by') bool? withAttachedToDeletedBy,
    @Query('with_attached_to_updated_by') bool? withAttachedToUpdatedBy,
    @Query('with_attached_to_vehicle') bool? withAttachedToVehicle,
    @Query('with_attached_to_sub_task') bool? withAttachedToSubTask,
    @Query('with_parent_task') bool? withParentTask,
  });

  ///Update a sub_task
  ///@param id SubTask ID
  ///@param sub_task_model Register sub_task
  Future<chopper.Response<SubTaskResponse>> apiSubTaskIdPatch({
    required int? id,
    required Object? subTaskModel,
  }) {
    generatedMapping.putIfAbsent(
        UpdateSubTask, () => UpdateSubTask.fromJsonFactory);
    generatedMapping.putIfAbsent(
        SubTaskResponse, () => SubTaskResponse.fromJsonFactory);

    return _apiSubTaskIdPatch(id: id, subTaskModel: subTaskModel);
  }

  ///Update a sub_task
  ///@param id SubTask ID
  ///@param sub_task_model Register sub_task
  @Patch(path: '/api/sub_task/{id}')
  Future<chopper.Response<SubTaskResponse>> _apiSubTaskIdPatch({
    @Path('id') required int? id,
    @Body() required Object? subTaskModel,
  });

  ///Audit record
  ///@param id SubTask ID
  Future<chopper.Response<List<SubTaskAudit>>> apiSubTaskIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        SubTaskAudit, () => SubTaskAudit.fromJsonFactory);

    return _apiSubTaskIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id SubTask ID
  @Get(path: '/api/sub_task/{id}/audit')
  Future<chopper.Response<List<SubTaskAudit>>> _apiSubTaskIdAuditGet(
      {@Path('id') required int? id});

  ///Create many sub_task
  ///@param sub_task_model Register sub_task
  Future<chopper.Response<List<SubTaskResponse>>> apiSubTaskImportPost(
      {required List<CreateSubTask>? subTaskModel}) {
    generatedMapping.putIfAbsent(
        SubTaskResponse, () => SubTaskResponse.fromJsonFactory);

    return _apiSubTaskImportPost(subTaskModel: subTaskModel);
  }

  ///Create many sub_task
  ///@param sub_task_model Register sub_task
  @Post(path: '/api/sub_task/import')
  Future<chopper.Response<List<SubTaskResponse>>> _apiSubTaskImportPost(
      {@Body() required List<CreateSubTask>? subTaskModel});

  ///List sub_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_parent_task with parent_task data
  Future<chopper.Response<ListSubTask>> apiSubTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withAttachedTo,
    bool? withAttachedToActivities,
    bool? withAttachedToTask,
    bool? withAttachedToCreatedBy,
    bool? withAttachedToAssignedTo,
    bool? withAttachedToDeletedBy,
    bool? withAttachedToUpdatedBy,
    bool? withAttachedToVehicle,
    bool? withAttachedToSubTask,
    bool? withParentTask,
  }) {
    generatedMapping.putIfAbsent(
        ListSubTask, () => ListSubTask.fromJsonFactory);

    return _apiSubTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withAttachedTo: withAttachedTo,
        withAttachedToActivities: withAttachedToActivities,
        withAttachedToTask: withAttachedToTask,
        withAttachedToCreatedBy: withAttachedToCreatedBy,
        withAttachedToAssignedTo: withAttachedToAssignedTo,
        withAttachedToDeletedBy: withAttachedToDeletedBy,
        withAttachedToUpdatedBy: withAttachedToUpdatedBy,
        withAttachedToVehicle: withAttachedToVehicle,
        withAttachedToSubTask: withAttachedToSubTask,
        withParentTask: withParentTask);
  }

  ///List sub_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_parent_task with parent_task data
  @Get(path: '/api/sub_task/list')
  Future<chopper.Response<ListSubTask>> _apiSubTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_attached_to') bool? withAttachedTo,
    @Query('with_attached_to_activities') bool? withAttachedToActivities,
    @Query('with_attached_to_task') bool? withAttachedToTask,
    @Query('with_attached_to_created_by') bool? withAttachedToCreatedBy,
    @Query('with_attached_to_assigned_to') bool? withAttachedToAssignedTo,
    @Query('with_attached_to_deleted_by') bool? withAttachedToDeletedBy,
    @Query('with_attached_to_updated_by') bool? withAttachedToUpdatedBy,
    @Query('with_attached_to_vehicle') bool? withAttachedToVehicle,
    @Query('with_attached_to_sub_task') bool? withAttachedToSubTask,
    @Query('with_parent_task') bool? withParentTask,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiSubTaskTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiSubTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/sub_task/total')
  Future<chopper.Response<TotalCount>> _apiSubTaskTotalGet();

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

  ///Delete Supplier record
  ///@param id Supplier ID
  Future<chopper.Response<String>> apiSupplierIdDelete({required int? id}) {
    return _apiSupplierIdDelete(id: id);
  }

  ///Delete Supplier record
  ///@param id Supplier ID
  @Delete(path: '/api/supplier/{id}')
  Future<chopper.Response<String>> _apiSupplierIdDelete(
      {@Path('id') required int? id});

  ///Get supplier by ID
  ///@param id Supplier ID
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  Future<chopper.Response<SupplierResponse>> apiSupplierIdGet({
    required int? id,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
  }) {
    generatedMapping.putIfAbsent(
        SupplierResponse, () => SupplierResponse.fromJsonFactory);

    return _apiSupplierIdGet(
        id: id,
        withSpareParts: withSpareParts,
        withSparePartsRequest: withSparePartsRequest,
        withSparePartsSupplier: withSparePartsSupplier);
  }

  ///Get supplier by ID
  ///@param id Supplier ID
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  @Get(path: '/api/supplier/{id}')
  Future<chopper.Response<SupplierResponse>> _apiSupplierIdGet({
    @Path('id') required int? id,
    @Query('with_spare_parts') bool? withSpareParts,
    @Query('with_spare_parts_request') bool? withSparePartsRequest,
    @Query('with_spare_parts_supplier') bool? withSparePartsSupplier,
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

  ///Audit record
  ///@param id Supplier ID
  Future<chopper.Response<List<SupplierAudit>>> apiSupplierIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        SupplierAudit, () => SupplierAudit.fromJsonFactory);

    return _apiSupplierIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Supplier ID
  @Get(path: '/api/supplier/{id}/audit')
  Future<chopper.Response<List<SupplierAudit>>> _apiSupplierIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  Future<chopper.Response<ListSupplier>> apiSupplierListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
  }) {
    generatedMapping.putIfAbsent(
        ListSupplier, () => ListSupplier.fromJsonFactory);

    return _apiSupplierListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withSpareParts: withSpareParts,
        withSparePartsRequest: withSparePartsRequest,
        withSparePartsSupplier: withSparePartsSupplier);
  }

  ///List supplier
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_spare_parts with spare_parts data
  ///@param with_spare_parts_request with spare_parts request nested data
  ///@param with_spare_parts_supplier with spare_parts supplier nested data
  @Get(path: '/api/supplier/list')
  Future<chopper.Response<ListSupplier>> _apiSupplierListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_spare_parts') bool? withSpareParts,
    @Query('with_spare_parts_request') bool? withSparePartsRequest,
    @Query('with_spare_parts_supplier') bool? withSparePartsSupplier,
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

  ///Delete task record
  ///@param id Task ID
  Future<chopper.Response<String>> apiTaskIdDelete({required int? id}) {
    return _apiTaskIdDelete(id: id);
  }

  ///Delete task record
  ///@param id Task ID
  @Delete(path: '/api/task/{id}')
  Future<chopper.Response<String>> _apiTaskIdDelete(
      {@Path('id') required int? id});

  ///Get task by ID
  ///@param id Task ID
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to nested data
  ///@param with_sub_tasks_parent_task with sub_tasks parent_task nested data
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities nested data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  Future<chopper.Response<TaskResponse>> apiTaskIdGet({
    required int? id,
    bool? withSubTasks,
    bool? withSubTasksAttachedTo,
    bool? withSubTasksParentTask,
    bool? withAttachedTo,
    bool? withAttachedToActivities,
    bool? withAttachedToTask,
    bool? withAttachedToCreatedBy,
    bool? withAttachedToAssignedTo,
    bool? withAttachedToDeletedBy,
    bool? withAttachedToUpdatedBy,
    bool? withAttachedToVehicle,
    bool? withAttachedToSubTask,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    generatedMapping.putIfAbsent(
        TaskResponse, () => TaskResponse.fromJsonFactory);

    return _apiTaskIdGet(
        id: id,
        withSubTasks: withSubTasks,
        withSubTasksAttachedTo: withSubTasksAttachedTo,
        withSubTasksParentTask: withSubTasksParentTask,
        withAttachedTo: withAttachedTo,
        withAttachedToActivities: withAttachedToActivities,
        withAttachedToTask: withAttachedToTask,
        withAttachedToCreatedBy: withAttachedToCreatedBy,
        withAttachedToAssignedTo: withAttachedToAssignedTo,
        withAttachedToDeletedBy: withAttachedToDeletedBy,
        withAttachedToUpdatedBy: withAttachedToUpdatedBy,
        withAttachedToVehicle: withAttachedToVehicle,
        withAttachedToSubTask: withAttachedToSubTask,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy);
  }

  ///Get task by ID
  ///@param id Task ID
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to nested data
  ///@param with_sub_tasks_parent_task with sub_tasks parent_task nested data
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities nested data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  @Get(path: '/api/task/{id}')
  Future<chopper.Response<TaskResponse>> _apiTaskIdGet({
    @Path('id') required int? id,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_sub_tasks_attached_to') bool? withSubTasksAttachedTo,
    @Query('with_sub_tasks_parent_task') bool? withSubTasksParentTask,
    @Query('with_attached_to') bool? withAttachedTo,
    @Query('with_attached_to_activities') bool? withAttachedToActivities,
    @Query('with_attached_to_task') bool? withAttachedToTask,
    @Query('with_attached_to_created_by') bool? withAttachedToCreatedBy,
    @Query('with_attached_to_assigned_to') bool? withAttachedToAssignedTo,
    @Query('with_attached_to_deleted_by') bool? withAttachedToDeletedBy,
    @Query('with_attached_to_updated_by') bool? withAttachedToUpdatedBy,
    @Query('with_attached_to_vehicle') bool? withAttachedToVehicle,
    @Query('with_attached_to_sub_task') bool? withAttachedToSubTask,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
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

  ///Audit record
  ///@param id Task ID
  Future<chopper.Response<List<TaskAudit>>> apiTaskIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(TaskAudit, () => TaskAudit.fromJsonFactory);

    return _apiTaskIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Task ID
  @Get(path: '/api/task/{id}/audit')
  Future<chopper.Response<List<TaskAudit>>> _apiTaskIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to data
  ///@param with_sub_tasks_parent_task with sub_tasks parent_task nested data
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  Future<chopper.Response<ListTask>> apiTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withSubTasks,
    bool? withSubTasksAttachedTo,
    bool? withSubTasksParentTask,
    bool? withAttachedTo,
    bool? withAttachedToActivities,
    bool? withAttachedToTask,
    bool? withAttachedToCreatedBy,
    bool? withAttachedToAssignedTo,
    bool? withAttachedToDeletedBy,
    bool? withAttachedToUpdatedBy,
    bool? withAttachedToVehicle,
    bool? withAttachedToSubTask,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    generatedMapping.putIfAbsent(ListTask, () => ListTask.fromJsonFactory);

    return _apiTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withSubTasks: withSubTasks,
        withSubTasksAttachedTo: withSubTasksAttachedTo,
        withSubTasksParentTask: withSubTasksParentTask,
        withAttachedTo: withAttachedTo,
        withAttachedToActivities: withAttachedToActivities,
        withAttachedToTask: withAttachedToTask,
        withAttachedToCreatedBy: withAttachedToCreatedBy,
        withAttachedToAssignedTo: withAttachedToAssignedTo,
        withAttachedToDeletedBy: withAttachedToDeletedBy,
        withAttachedToUpdatedBy: withAttachedToUpdatedBy,
        withAttachedToVehicle: withAttachedToVehicle,
        withAttachedToSubTask: withAttachedToSubTask,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy);
  }

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_sub_tasks with sub_tasks data
  ///@param with_sub_tasks_attached_to with sub_tasks attached_to data
  ///@param with_sub_tasks_parent_task with sub_tasks parent_task nested data
  ///@param with_attached_to with attached_to data
  ///@param with_attached_to_activities with attached_to activities data
  ///@param with_attached_to_task with attached_to task nested data
  ///@param with_attached_to_created_by with attached_to created_by nested data
  ///@param with_attached_to_assigned_to with attached_to assigned_to nested data
  ///@param with_attached_to_deleted_by with attached_to deleted_by nested data
  ///@param with_attached_to_updated_by with attached_to updated_by nested data
  ///@param with_attached_to_vehicle with attached_to vehicle nested data
  ///@param with_attached_to_sub_task with attached_to sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  @Get(path: '/api/task/list')
  Future<chopper.Response<ListTask>> _apiTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_sub_tasks') bool? withSubTasks,
    @Query('with_sub_tasks_attached_to') bool? withSubTasksAttachedTo,
    @Query('with_sub_tasks_parent_task') bool? withSubTasksParentTask,
    @Query('with_attached_to') bool? withAttachedTo,
    @Query('with_attached_to_activities') bool? withAttachedToActivities,
    @Query('with_attached_to_task') bool? withAttachedToTask,
    @Query('with_attached_to_created_by') bool? withAttachedToCreatedBy,
    @Query('with_attached_to_assigned_to') bool? withAttachedToAssignedTo,
    @Query('with_attached_to_deleted_by') bool? withAttachedToDeletedBy,
    @Query('with_attached_to_updated_by') bool? withAttachedToUpdatedBy,
    @Query('with_attached_to_vehicle') bool? withAttachedToVehicle,
    @Query('with_attached_to_sub_task') bool? withAttachedToSubTask,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
  });

  ///Total records
  Future<chopper.Response<TotalCount>> apiTaskTotalGet() {
    generatedMapping.putIfAbsent(TotalCount, () => TotalCount.fromJsonFactory);

    return _apiTaskTotalGet();
  }

  ///Total records
  @Get(path: '/api/task/total')
  Future<chopper.Response<TotalCount>> _apiTaskTotalGet();

  ///Seed tasks
  Future<chopper.Response<Object>> apiTasksSeedPost() {
    return _apiTasksSeedPost();
  }

  ///Seed tasks
  @Post(
    path: '/api/tasks_seed',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _apiTasksSeedPost();

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

  ///Delete Vehicle record
  ///@param id Vehicle ID
  Future<chopper.Response<String>> apiVehicleIdDelete({required int? id}) {
    return _apiVehicleIdDelete(id: id);
  }

  ///Delete Vehicle record
  ///@param id Vehicle ID
  @Delete(path: '/api/vehicle/{id}')
  Future<chopper.Response<String>> _apiVehicleIdDelete(
      {@Path('id') required int? id});

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_vehicle_tasks_activities with vehicle_tasks activities nested data
  ///@param with_vehicle_tasks_task with vehicle_tasks task nested data
  ///@param with_vehicle_tasks_created_by with vehicle_tasks created_by nested data
  ///@param with_vehicle_tasks_assigned_to with vehicle_tasks assigned_to nested data
  ///@param with_vehicle_tasks_deleted_by with vehicle_tasks deleted_by nested data
  ///@param with_vehicle_tasks_updated_by with vehicle_tasks updated_by nested data
  ///@param with_vehicle_tasks_vehicle with vehicle_tasks vehicle nested data
  ///@param with_vehicle_tasks_sub_task with vehicle_tasks sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  ///@param with_owner with owner data
  Future<chopper.Response<VehicleResponse>> apiVehicleIdGet({
    required int? id,
    bool? withVehicleTasks,
    bool? withVehicleTasksActivities,
    bool? withVehicleTasksTask,
    bool? withVehicleTasksCreatedBy,
    bool? withVehicleTasksAssignedTo,
    bool? withVehicleTasksDeletedBy,
    bool? withVehicleTasksUpdatedBy,
    bool? withVehicleTasksVehicle,
    bool? withVehicleTasksSubTask,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
    bool? withOwner,
  }) {
    generatedMapping.putIfAbsent(
        VehicleResponse, () => VehicleResponse.fromJsonFactory);

    return _apiVehicleIdGet(
        id: id,
        withVehicleTasks: withVehicleTasks,
        withVehicleTasksActivities: withVehicleTasksActivities,
        withVehicleTasksTask: withVehicleTasksTask,
        withVehicleTasksCreatedBy: withVehicleTasksCreatedBy,
        withVehicleTasksAssignedTo: withVehicleTasksAssignedTo,
        withVehicleTasksDeletedBy: withVehicleTasksDeletedBy,
        withVehicleTasksUpdatedBy: withVehicleTasksUpdatedBy,
        withVehicleTasksVehicle: withVehicleTasksVehicle,
        withVehicleTasksSubTask: withVehicleTasksSubTask,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy,
        withOwner: withOwner);
  }

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_vehicle_tasks_activities with vehicle_tasks activities nested data
  ///@param with_vehicle_tasks_task with vehicle_tasks task nested data
  ///@param with_vehicle_tasks_created_by with vehicle_tasks created_by nested data
  ///@param with_vehicle_tasks_assigned_to with vehicle_tasks assigned_to nested data
  ///@param with_vehicle_tasks_deleted_by with vehicle_tasks deleted_by nested data
  ///@param with_vehicle_tasks_updated_by with vehicle_tasks updated_by nested data
  ///@param with_vehicle_tasks_vehicle with vehicle_tasks vehicle nested data
  ///@param with_vehicle_tasks_sub_task with vehicle_tasks sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  ///@param with_owner with owner data
  @Get(path: '/api/vehicle/{id}')
  Future<chopper.Response<VehicleResponse>> _apiVehicleIdGet({
    @Path('id') required int? id,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
    @Query('with_vehicle_tasks_activities') bool? withVehicleTasksActivities,
    @Query('with_vehicle_tasks_task') bool? withVehicleTasksTask,
    @Query('with_vehicle_tasks_created_by') bool? withVehicleTasksCreatedBy,
    @Query('with_vehicle_tasks_assigned_to') bool? withVehicleTasksAssignedTo,
    @Query('with_vehicle_tasks_deleted_by') bool? withVehicleTasksDeletedBy,
    @Query('with_vehicle_tasks_updated_by') bool? withVehicleTasksUpdatedBy,
    @Query('with_vehicle_tasks_vehicle') bool? withVehicleTasksVehicle,
    @Query('with_vehicle_tasks_sub_task') bool? withVehicleTasksSubTask,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
    @Query('with_owner') bool? withOwner,
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

  ///Audit record
  ///@param id Vehicle ID
  Future<chopper.Response<List<VehicleAudit>>> apiVehicleIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        VehicleAudit, () => VehicleAudit.fromJsonFactory);

    return _apiVehicleIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id Vehicle ID
  @Get(path: '/api/vehicle/{id}/audit')
  Future<chopper.Response<List<VehicleAudit>>> _apiVehicleIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_vehicle_tasks_activities with vehicle_tasks activities data
  ///@param with_vehicle_tasks_task with vehicle_tasks task nested data
  ///@param with_vehicle_tasks_created_by with vehicle_tasks created_by nested data
  ///@param with_vehicle_tasks_assigned_to with vehicle_tasks assigned_to nested data
  ///@param with_vehicle_tasks_deleted_by with vehicle_tasks deleted_by nested data
  ///@param with_vehicle_tasks_updated_by with vehicle_tasks updated_by nested data
  ///@param with_vehicle_tasks_vehicle with vehicle_tasks vehicle nested data
  ///@param with_vehicle_tasks_sub_task with vehicle_tasks sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  ///@param with_owner with owner data
  Future<chopper.Response<ListVehicle>> apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withVehicleTasks,
    bool? withVehicleTasksActivities,
    bool? withVehicleTasksTask,
    bool? withVehicleTasksCreatedBy,
    bool? withVehicleTasksAssignedTo,
    bool? withVehicleTasksDeletedBy,
    bool? withVehicleTasksUpdatedBy,
    bool? withVehicleTasksVehicle,
    bool? withVehicleTasksSubTask,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
    bool? withOwner,
  }) {
    generatedMapping.putIfAbsent(
        ListVehicle, () => ListVehicle.fromJsonFactory);

    return _apiVehicleListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withVehicleTasks: withVehicleTasks,
        withVehicleTasksActivities: withVehicleTasksActivities,
        withVehicleTasksTask: withVehicleTasksTask,
        withVehicleTasksCreatedBy: withVehicleTasksCreatedBy,
        withVehicleTasksAssignedTo: withVehicleTasksAssignedTo,
        withVehicleTasksDeletedBy: withVehicleTasksDeletedBy,
        withVehicleTasksUpdatedBy: withVehicleTasksUpdatedBy,
        withVehicleTasksVehicle: withVehicleTasksVehicle,
        withVehicleTasksSubTask: withVehicleTasksSubTask,
        withCreatedBy: withCreatedBy,
        withUpdatedBy: withUpdatedBy,
        withDeletedBy: withDeletedBy,
        withOwner: withOwner);
  }

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_vehicle_tasks with vehicle_tasks data
  ///@param with_vehicle_tasks_activities with vehicle_tasks activities data
  ///@param with_vehicle_tasks_task with vehicle_tasks task nested data
  ///@param with_vehicle_tasks_created_by with vehicle_tasks created_by nested data
  ///@param with_vehicle_tasks_assigned_to with vehicle_tasks assigned_to nested data
  ///@param with_vehicle_tasks_deleted_by with vehicle_tasks deleted_by nested data
  ///@param with_vehicle_tasks_updated_by with vehicle_tasks updated_by nested data
  ///@param with_vehicle_tasks_vehicle with vehicle_tasks vehicle nested data
  ///@param with_vehicle_tasks_sub_task with vehicle_tasks sub_task nested data
  ///@param with_created_by with created_by data
  ///@param with_updated_by with updated_by data
  ///@param with_deleted_by with deleted_by data
  ///@param with_owner with owner data
  @Get(path: '/api/vehicle/list')
  Future<chopper.Response<ListVehicle>> _apiVehicleListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_vehicle_tasks') bool? withVehicleTasks,
    @Query('with_vehicle_tasks_activities') bool? withVehicleTasksActivities,
    @Query('with_vehicle_tasks_task') bool? withVehicleTasksTask,
    @Query('with_vehicle_tasks_created_by') bool? withVehicleTasksCreatedBy,
    @Query('with_vehicle_tasks_assigned_to') bool? withVehicleTasksAssignedTo,
    @Query('with_vehicle_tasks_deleted_by') bool? withVehicleTasksDeletedBy,
    @Query('with_vehicle_tasks_updated_by') bool? withVehicleTasksUpdatedBy,
    @Query('with_vehicle_tasks_vehicle') bool? withVehicleTasksVehicle,
    @Query('with_vehicle_tasks_sub_task') bool? withVehicleTasksSubTask,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_deleted_by') bool? withDeletedBy,
    @Query('with_owner') bool? withOwner,
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

  ///Delete vehicle task record
  ///@param id VehicleTask ID
  Future<chopper.Response<String>> apiVehicleTaskIdDelete({required int? id}) {
    return _apiVehicleTaskIdDelete(id: id);
  }

  ///Delete vehicle task record
  ///@param id VehicleTask ID
  @Delete(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<String>> _apiVehicleTaskIdDelete(
      {@Path('id') required int? id});

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  ///@param with_activities with activities data
  ///@param with_activities_vehicle_tasks with activities vehicle_tasks nested data
  ///@param with_activities_created_by with activities created_by nested data
  ///@param with_activities_updated_by with activities updated_by nested data
  ///@param with_activities_deleted_by with activities deleted_by nested data
  ///@param with_task with task data
  ///@param with_created_by with created_by data
  ///@param with_assigned_to with assigned_to data
  ///@param with_deleted_by with deleted_by data
  ///@param with_updated_by with updated_by data
  ///@param with_vehicle with vehicle data
  ///@param with_sub_task with sub_task data
  Future<chopper.Response<VehicleTaskResponse>> apiVehicleTaskIdGet({
    required int? id,
    bool? withActivities,
    bool? withActivitiesVehicleTasks,
    bool? withActivitiesCreatedBy,
    bool? withActivitiesUpdatedBy,
    bool? withActivitiesDeletedBy,
    bool? withTask,
    bool? withCreatedBy,
    bool? withAssignedTo,
    bool? withDeletedBy,
    bool? withUpdatedBy,
    bool? withVehicle,
    bool? withSubTask,
  }) {
    generatedMapping.putIfAbsent(
        VehicleTaskResponse, () => VehicleTaskResponse.fromJsonFactory);

    return _apiVehicleTaskIdGet(
        id: id,
        withActivities: withActivities,
        withActivitiesVehicleTasks: withActivitiesVehicleTasks,
        withActivitiesCreatedBy: withActivitiesCreatedBy,
        withActivitiesUpdatedBy: withActivitiesUpdatedBy,
        withActivitiesDeletedBy: withActivitiesDeletedBy,
        withTask: withTask,
        withCreatedBy: withCreatedBy,
        withAssignedTo: withAssignedTo,
        withDeletedBy: withDeletedBy,
        withUpdatedBy: withUpdatedBy,
        withVehicle: withVehicle,
        withSubTask: withSubTask);
  }

  ///Get vehicle_task by ID
  ///@param id VehicleTask ID
  ///@param with_activities with activities data
  ///@param with_activities_vehicle_tasks with activities vehicle_tasks nested data
  ///@param with_activities_created_by with activities created_by nested data
  ///@param with_activities_updated_by with activities updated_by nested data
  ///@param with_activities_deleted_by with activities deleted_by nested data
  ///@param with_task with task data
  ///@param with_created_by with created_by data
  ///@param with_assigned_to with assigned_to data
  ///@param with_deleted_by with deleted_by data
  ///@param with_updated_by with updated_by data
  ///@param with_vehicle with vehicle data
  ///@param with_sub_task with sub_task data
  @Get(path: '/api/vehicle_task/{id}')
  Future<chopper.Response<VehicleTaskResponse>> _apiVehicleTaskIdGet({
    @Path('id') required int? id,
    @Query('with_activities') bool? withActivities,
    @Query('with_activities_vehicle_tasks') bool? withActivitiesVehicleTasks,
    @Query('with_activities_created_by') bool? withActivitiesCreatedBy,
    @Query('with_activities_updated_by') bool? withActivitiesUpdatedBy,
    @Query('with_activities_deleted_by') bool? withActivitiesDeletedBy,
    @Query('with_task') bool? withTask,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_assigned_to') bool? withAssignedTo,
    @Query('with_deleted_by') bool? withDeletedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_vehicle') bool? withVehicle,
    @Query('with_sub_task') bool? withSubTask,
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

  ///Audit record
  ///@param id VehicleTask ID
  Future<chopper.Response<List<VehicleTaskAudit>>> apiVehicleTaskIdAuditGet(
      {required int? id}) {
    generatedMapping.putIfAbsent(
        VehicleTaskAudit, () => VehicleTaskAudit.fromJsonFactory);

    return _apiVehicleTaskIdAuditGet(id: id);
  }

  ///Audit record
  ///@param id VehicleTask ID
  @Get(path: '/api/vehicle_task/{id}/audit')
  Future<chopper.Response<List<VehicleTaskAudit>>> _apiVehicleTaskIdAuditGet(
      {@Path('id') required int? id});

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
  ///@param with_activities with activities data
  ///@param with_activities_vehicle_tasks with activities vehicle_tasks nested data
  ///@param with_activities_created_by with activities created_by nested data
  ///@param with_activities_updated_by with activities updated_by nested data
  ///@param with_activities_deleted_by with activities deleted_by nested data
  ///@param with_task with task data
  ///@param with_created_by with created_by data
  ///@param with_assigned_to with assigned_to data
  ///@param with_deleted_by with deleted_by data
  ///@param with_updated_by with updated_by data
  ///@param with_vehicle with vehicle data
  ///@param with_sub_task with sub_task data
  Future<chopper.Response<ListVehicleTask>> apiVehicleTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withActivities,
    bool? withActivitiesVehicleTasks,
    bool? withActivitiesCreatedBy,
    bool? withActivitiesUpdatedBy,
    bool? withActivitiesDeletedBy,
    bool? withTask,
    bool? withCreatedBy,
    bool? withAssignedTo,
    bool? withDeletedBy,
    bool? withUpdatedBy,
    bool? withVehicle,
    bool? withSubTask,
  }) {
    generatedMapping.putIfAbsent(
        ListVehicleTask, () => ListVehicleTask.fromJsonFactory);

    return _apiVehicleTaskListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        withActivities: withActivities,
        withActivitiesVehicleTasks: withActivitiesVehicleTasks,
        withActivitiesCreatedBy: withActivitiesCreatedBy,
        withActivitiesUpdatedBy: withActivitiesUpdatedBy,
        withActivitiesDeletedBy: withActivitiesDeletedBy,
        withTask: withTask,
        withCreatedBy: withCreatedBy,
        withAssignedTo: withAssignedTo,
        withDeletedBy: withDeletedBy,
        withUpdatedBy: withUpdatedBy,
        withVehicle: withVehicle,
        withSubTask: withSubTask);
  }

  ///List vehicle_task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param with_activities with activities data
  ///@param with_activities_vehicle_tasks with activities vehicle_tasks nested data
  ///@param with_activities_created_by with activities created_by nested data
  ///@param with_activities_updated_by with activities updated_by nested data
  ///@param with_activities_deleted_by with activities deleted_by nested data
  ///@param with_task with task data
  ///@param with_created_by with created_by data
  ///@param with_assigned_to with assigned_to data
  ///@param with_deleted_by with deleted_by data
  ///@param with_updated_by with updated_by data
  ///@param with_vehicle with vehicle data
  ///@param with_sub_task with sub_task data
  @Get(path: '/api/vehicle_task/list')
  Future<chopper.Response<ListVehicleTask>> _apiVehicleTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('with_activities') bool? withActivities,
    @Query('with_activities_vehicle_tasks') bool? withActivitiesVehicleTasks,
    @Query('with_activities_created_by') bool? withActivitiesCreatedBy,
    @Query('with_activities_updated_by') bool? withActivitiesUpdatedBy,
    @Query('with_activities_deleted_by') bool? withActivitiesDeletedBy,
    @Query('with_task') bool? withTask,
    @Query('with_created_by') bool? withCreatedBy,
    @Query('with_assigned_to') bool? withAssignedTo,
    @Query('with_deleted_by') bool? withDeletedBy,
    @Query('with_updated_by') bool? withUpdatedBy,
    @Query('with_vehicle') bool? withVehicle,
    @Query('with_sub_task') bool? withSubTask,
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
