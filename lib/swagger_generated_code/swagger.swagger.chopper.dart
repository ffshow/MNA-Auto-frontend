//Generated code

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<AccountResponse>> _apiAccountPost(
      {required Object? accountModel}) {
    final Uri $url = Uri.parse('/api/account');
    final $body = accountModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AccountResponse, AccountResponse>($request);
  }

  @override
  Future<Response<String>> _apiAccountIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AccountResponse>> _apiAccountIdGet({
    required int? id,
    bool? withEmployee,
  }) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_employee': withEmployee
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<AccountResponse, AccountResponse>($request);
  }

  @override
  Future<Response<AccountResponse>> _apiAccountIdPatch({
    required int? id,
    required Object? accountModel,
  }) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final $body = accountModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AccountResponse, AccountResponse>($request);
  }

  @override
  Future<Response<List<AccountAudit>>> _apiAccountIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/account/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<AccountAudit>, AccountAudit>($request);
  }

  @override
  Future<Response<List<AccountResponse>>> _apiAccountImportPost(
      {required List<CreateAccount>? accountModel}) {
    final Uri $url = Uri.parse('/api/account/import');
    final $body = accountModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<AccountResponse>, AccountResponse>($request);
  }

  @override
  Future<Response<ListAccount>> _apiAccountListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withEmployee,
  }) {
    final Uri $url = Uri.parse('/api/account/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_employee': withEmployee,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListAccount, ListAccount>($request);
  }

  @override
  Future<Response<TotalCount>> _apiAccountTotalGet() {
    final Uri $url = Uri.parse('/api/account/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<Object>> _apiActivitiesSeedPost() {
    final Uri $url = Uri.parse('/api/activities_seed');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<ActivityResponse>> _apiActivityPost(
      {required Object? activityModel}) {
    final Uri $url = Uri.parse('/api/activity');
    final $body = activityModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ActivityResponse, ActivityResponse>($request);
  }

  @override
  Future<Response<String>> _apiActivityIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/activity/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ActivityResponse>> _apiActivityIdGet({
    required int? id,
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    final Uri $url = Uri.parse('/api/activity/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_vehicle_tasks': withVehicleTasks,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ActivityResponse, ActivityResponse>($request);
  }

  @override
  Future<Response<ActivityResponse>> _apiActivityIdPatch({
    required int? id,
    required Object? activityModel,
  }) {
    final Uri $url = Uri.parse('/api/activity/${id}');
    final $body = activityModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ActivityResponse, ActivityResponse>($request);
  }

  @override
  Future<Response<List<ActivityAudit>>> _apiActivityIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/activity/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<ActivityAudit>, ActivityAudit>($request);
  }

  @override
  Future<Response<List<ActivityResponse>>> _apiActivityImportPost(
      {required List<CreateActivity>? activityModel}) {
    final Uri $url = Uri.parse('/api/activity/import');
    final $body = activityModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ActivityResponse>, ActivityResponse>($request);
  }

  @override
  Future<Response<ListActivity>> _apiActivityListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    final Uri $url = Uri.parse('/api/activity/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_vehicle_tasks': withVehicleTasks,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListActivity, ListActivity>($request);
  }

  @override
  Future<Response<TotalCount>> _apiActivityTotalGet() {
    final Uri $url = Uri.parse('/api/activity/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<CityResponse>> _apiCityPost({required Object? cityModel}) {
    final Uri $url = Uri.parse('/api/city');
    final $body = cityModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CityResponse, CityResponse>($request);
  }

  @override
  Future<Response<String>> _apiCityIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/city/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<CityResponse>> _apiCityIdGet({
    required int? id,
    bool? withGarages,
    bool? withGaragesOwners,
    bool? withGaragesCity,
    bool? withGaragesCreatedBy,
    bool? withGaragesUpdatedBy,
    bool? withGaragesDeletedBy,
  }) {
    final Uri $url = Uri.parse('/api/city/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_garages': withGarages,
      'with_garages_owners': withGaragesOwners,
      'with_garages_city': withGaragesCity,
      'with_garages_created_by': withGaragesCreatedBy,
      'with_garages_updated_by': withGaragesUpdatedBy,
      'with_garages_deleted_by': withGaragesDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CityResponse, CityResponse>($request);
  }

  @override
  Future<Response<CityResponse>> _apiCityIdPatch({
    required int? id,
    required Object? cityModel,
  }) {
    final Uri $url = Uri.parse('/api/city/${id}');
    final $body = cityModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CityResponse, CityResponse>($request);
  }

  @override
  Future<Response<List<CityAudit>>> _apiCityIdAuditGet({required int? id}) {
    final Uri $url = Uri.parse('/api/city/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<CityAudit>, CityAudit>($request);
  }

  @override
  Future<Response<List<CityResponse>>> _apiCityImportPost(
      {required List<CreateCity>? cityModel}) {
    final Uri $url = Uri.parse('/api/city/import');
    final $body = cityModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<CityResponse>, CityResponse>($request);
  }

  @override
  Future<Response<ListCity>> _apiCityListGet({
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
    final Uri $url = Uri.parse('/api/city/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_garages': withGarages,
      'with_garages_owners': withGaragesOwners,
      'with_garages_city': withGaragesCity,
      'with_garages_created_by': withGaragesCreatedBy,
      'with_garages_updated_by': withGaragesUpdatedBy,
      'with_garages_deleted_by': withGaragesDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListCity, ListCity>($request);
  }

  @override
  Future<Response<TotalCount>> _apiCityTotalGet() {
    final Uri $url = Uri.parse('/api/city/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<EmployeeResponse>> _apiEmployeePost(
      {required Object? employeeModel}) {
    final Uri $url = Uri.parse('/api/employee');
    final $body = employeeModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<EmployeeResponse, EmployeeResponse>($request);
  }

  @override
  Future<Response<String>> _apiEmployeeIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/employee/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<EmployeeResponse>> _apiEmployeeIdGet({
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
    final Uri $url = Uri.parse('/api/employee/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_created_vehicles': withCreatedVehicles,
      'with_created_vehicles_vehicle_tasks': withCreatedVehiclesVehicleTasks,
      'with_created_vehicles_created_by': withCreatedVehiclesCreatedBy,
      'with_created_vehicles_updated_by': withCreatedVehiclesUpdatedBy,
      'with_created_vehicles_deleted_by': withCreatedVehiclesDeletedBy,
      'with_created_vehicles_owner': withCreatedVehiclesOwner,
      'with_updated_vehicles': withUpdatedVehicles,
      'with_updated_vehicles_vehicle_tasks': withUpdatedVehiclesVehicleTasks,
      'with_updated_vehicles_created_by': withUpdatedVehiclesCreatedBy,
      'with_updated_vehicles_updated_by': withUpdatedVehiclesUpdatedBy,
      'with_updated_vehicles_deleted_by': withUpdatedVehiclesDeletedBy,
      'with_updated_vehicles_owner': withUpdatedVehiclesOwner,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_deleted_vehicles_vehicle_tasks': withDeletedVehiclesVehicleTasks,
      'with_deleted_vehicles_created_by': withDeletedVehiclesCreatedBy,
      'with_deleted_vehicles_updated_by': withDeletedVehiclesUpdatedBy,
      'with_deleted_vehicles_deleted_by': withDeletedVehiclesDeletedBy,
      'with_deleted_vehicles_owner': withDeletedVehiclesOwner,
      'with_created_garages': withCreatedGarages,
      'with_created_garages_owners': withCreatedGaragesOwners,
      'with_created_garages_city': withCreatedGaragesCity,
      'with_created_garages_created_by': withCreatedGaragesCreatedBy,
      'with_created_garages_updated_by': withCreatedGaragesUpdatedBy,
      'with_created_garages_deleted_by': withCreatedGaragesDeletedBy,
      'with_updated_garages': withUpdatedGarages,
      'with_updated_garages_owners': withUpdatedGaragesOwners,
      'with_updated_garages_city': withUpdatedGaragesCity,
      'with_updated_garages_created_by': withUpdatedGaragesCreatedBy,
      'with_updated_garages_updated_by': withUpdatedGaragesUpdatedBy,
      'with_updated_garages_deleted_by': withUpdatedGaragesDeletedBy,
      'with_deleted_garages': withDeletedGarages,
      'with_deleted_garages_owners': withDeletedGaragesOwners,
      'with_deleted_garages_city': withDeletedGaragesCity,
      'with_deleted_garages_created_by': withDeletedGaragesCreatedBy,
      'with_deleted_garages_updated_by': withDeletedGaragesUpdatedBy,
      'with_deleted_garages_deleted_by': withDeletedGaragesDeletedBy,
      'with_created_tasks': withCreatedTasks,
      'with_created_tasks_sub_tasks': withCreatedTasksSubTasks,
      'with_created_tasks_attached_to': withCreatedTasksAttachedTo,
      'with_created_tasks_created_by': withCreatedTasksCreatedBy,
      'with_created_tasks_updated_by': withCreatedTasksUpdatedBy,
      'with_created_tasks_deleted_by': withCreatedTasksDeletedBy,
      'with_updated_tasks': withUpdatedTasks,
      'with_updated_tasks_sub_tasks': withUpdatedTasksSubTasks,
      'with_updated_tasks_attached_to': withUpdatedTasksAttachedTo,
      'with_updated_tasks_created_by': withUpdatedTasksCreatedBy,
      'with_updated_tasks_updated_by': withUpdatedTasksUpdatedBy,
      'with_updated_tasks_deleted_by': withUpdatedTasksDeletedBy,
      'with_deleted_tasks': withDeletedTasks,
      'with_deleted_tasks_sub_tasks': withDeletedTasksSubTasks,
      'with_deleted_tasks_attached_to': withDeletedTasksAttachedTo,
      'with_deleted_tasks_created_by': withDeletedTasksCreatedBy,
      'with_deleted_tasks_updated_by': withDeletedTasksUpdatedBy,
      'with_deleted_tasks_deleted_by': withDeletedTasksDeletedBy,
      'with_created_vehicle_tasks': withCreatedVehicleTasks,
      'with_created_vehicle_tasks_activities':
          withCreatedVehicleTasksActivities,
      'with_created_vehicle_tasks_task': withCreatedVehicleTasksTask,
      'with_created_vehicle_tasks_created_by': withCreatedVehicleTasksCreatedBy,
      'with_created_vehicle_tasks_assigned_to':
          withCreatedVehicleTasksAssignedTo,
      'with_created_vehicle_tasks_deleted_by': withCreatedVehicleTasksDeletedBy,
      'with_created_vehicle_tasks_updated_by': withCreatedVehicleTasksUpdatedBy,
      'with_created_vehicle_tasks_vehicle': withCreatedVehicleTasksVehicle,
      'with_created_vehicle_tasks_sub_task': withCreatedVehicleTasksSubTask,
      'with_assigned_vehicle_tasks': withAssignedVehicleTasks,
      'with_assigned_vehicle_tasks_activities':
          withAssignedVehicleTasksActivities,
      'with_assigned_vehicle_tasks_task': withAssignedVehicleTasksTask,
      'with_assigned_vehicle_tasks_created_by':
          withAssignedVehicleTasksCreatedBy,
      'with_assigned_vehicle_tasks_assigned_to':
          withAssignedVehicleTasksAssignedTo,
      'with_assigned_vehicle_tasks_deleted_by':
          withAssignedVehicleTasksDeletedBy,
      'with_assigned_vehicle_tasks_updated_by':
          withAssignedVehicleTasksUpdatedBy,
      'with_assigned_vehicle_tasks_vehicle': withAssignedVehicleTasksVehicle,
      'with_assigned_vehicle_tasks_sub_task': withAssignedVehicleTasksSubTask,
      'with_deleted_vehicle_tasks': withDeletedVehicleTasks,
      'with_deleted_vehicle_tasks_activities':
          withDeletedVehicleTasksActivities,
      'with_deleted_vehicle_tasks_task': withDeletedVehicleTasksTask,
      'with_deleted_vehicle_tasks_created_by': withDeletedVehicleTasksCreatedBy,
      'with_deleted_vehicle_tasks_assigned_to':
          withDeletedVehicleTasksAssignedTo,
      'with_deleted_vehicle_tasks_deleted_by': withDeletedVehicleTasksDeletedBy,
      'with_deleted_vehicle_tasks_updated_by': withDeletedVehicleTasksUpdatedBy,
      'with_deleted_vehicle_tasks_vehicle': withDeletedVehicleTasksVehicle,
      'with_deleted_vehicle_tasks_sub_task': withDeletedVehicleTasksSubTask,
      'with_updated_vehicle_tasks': withUpdatedVehicleTasks,
      'with_updated_vehicle_tasks_activities':
          withUpdatedVehicleTasksActivities,
      'with_updated_vehicle_tasks_task': withUpdatedVehicleTasksTask,
      'with_updated_vehicle_tasks_created_by': withUpdatedVehicleTasksCreatedBy,
      'with_updated_vehicle_tasks_assigned_to':
          withUpdatedVehicleTasksAssignedTo,
      'with_updated_vehicle_tasks_deleted_by': withUpdatedVehicleTasksDeletedBy,
      'with_updated_vehicle_tasks_updated_by': withUpdatedVehicleTasksUpdatedBy,
      'with_updated_vehicle_tasks_vehicle': withUpdatedVehicleTasksVehicle,
      'with_updated_vehicle_tasks_sub_task': withUpdatedVehicleTasksSubTask,
      'with_permission': withPermission,
      'with_permission_employees': withPermissionEmployees,
      'with_requests': withRequests,
      'with_requests_spare_parts': withRequestsSpareParts,
      'with_requests_request_by': withRequestsRequestBy,
      'with_account': withAccount,
      'with_account_employee': withAccountEmployee,
      'with_created_activities': withCreatedActivities,
      'with_created_activities_vehicle_tasks':
          withCreatedActivitiesVehicleTasks,
      'with_created_activities_created_by': withCreatedActivitiesCreatedBy,
      'with_created_activities_updated_by': withCreatedActivitiesUpdatedBy,
      'with_created_activities_deleted_by': withCreatedActivitiesDeletedBy,
      'with_updated_activities': withUpdatedActivities,
      'with_updated_activities_vehicle_tasks':
          withUpdatedActivitiesVehicleTasks,
      'with_updated_activities_created_by': withUpdatedActivitiesCreatedBy,
      'with_updated_activities_updated_by': withUpdatedActivitiesUpdatedBy,
      'with_updated_activities_deleted_by': withUpdatedActivitiesDeletedBy,
      'with_deleted_activities': withDeletedActivities,
      'with_deleted_activities_vehicle_tasks':
          withDeletedActivitiesVehicleTasks,
      'with_deleted_activities_created_by': withDeletedActivitiesCreatedBy,
      'with_deleted_activities_updated_by': withDeletedActivitiesUpdatedBy,
      'with_deleted_activities_deleted_by': withDeletedActivitiesDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<EmployeeResponse, EmployeeResponse>($request);
  }

  @override
  Future<Response<EmployeeResponse>> _apiEmployeeIdPatch({
    required int? id,
    required Object? employeeModel,
  }) {
    final Uri $url = Uri.parse('/api/employee/${id}');
    final $body = employeeModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<EmployeeResponse, EmployeeResponse>($request);
  }

  @override
  Future<Response<List<EmployeeAudit>>> _apiEmployeeIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/employee/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<EmployeeAudit>, EmployeeAudit>($request);
  }

  @override
  Future<Response<List<EmployeeResponse>>> _apiEmployeeImportPost(
      {required List<CreateEmployee>? employeeModel}) {
    final Uri $url = Uri.parse('/api/employee/import');
    final $body = employeeModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<EmployeeResponse>, EmployeeResponse>($request);
  }

  @override
  Future<Response<ListEmployee>> _apiEmployeeListGet({
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
    final Uri $url = Uri.parse('/api/employee/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_created_vehicles': withCreatedVehicles,
      'with_created_vehicles_vehicle_tasks': withCreatedVehiclesVehicleTasks,
      'with_created_vehicles_created_by': withCreatedVehiclesCreatedBy,
      'with_created_vehicles_updated_by': withCreatedVehiclesUpdatedBy,
      'with_created_vehicles_deleted_by': withCreatedVehiclesDeletedBy,
      'with_created_vehicles_owner': withCreatedVehiclesOwner,
      'with_updated_vehicles': withUpdatedVehicles,
      'with_updated_vehicles_vehicle_tasks': withUpdatedVehiclesVehicleTasks,
      'with_updated_vehicles_created_by': withUpdatedVehiclesCreatedBy,
      'with_updated_vehicles_updated_by': withUpdatedVehiclesUpdatedBy,
      'with_updated_vehicles_deleted_by': withUpdatedVehiclesDeletedBy,
      'with_updated_vehicles_owner': withUpdatedVehiclesOwner,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_deleted_vehicles_vehicle_tasks': withDeletedVehiclesVehicleTasks,
      'with_deleted_vehicles_created_by': withDeletedVehiclesCreatedBy,
      'with_deleted_vehicles_updated_by': withDeletedVehiclesUpdatedBy,
      'with_deleted_vehicles_deleted_by': withDeletedVehiclesDeletedBy,
      'with_deleted_vehicles_owner': withDeletedVehiclesOwner,
      'with_created_garages': withCreatedGarages,
      'with_created_garages_owners': withCreatedGaragesOwners,
      'with_created_garages_city': withCreatedGaragesCity,
      'with_created_garages_created_by': withCreatedGaragesCreatedBy,
      'with_created_garages_updated_by': withCreatedGaragesUpdatedBy,
      'with_created_garages_deleted_by': withCreatedGaragesDeletedBy,
      'with_updated_garages': withUpdatedGarages,
      'with_updated_garages_owners': withUpdatedGaragesOwners,
      'with_updated_garages_city': withUpdatedGaragesCity,
      'with_updated_garages_created_by': withUpdatedGaragesCreatedBy,
      'with_updated_garages_updated_by': withUpdatedGaragesUpdatedBy,
      'with_updated_garages_deleted_by': withUpdatedGaragesDeletedBy,
      'with_deleted_garages': withDeletedGarages,
      'with_deleted_garages_owners': withDeletedGaragesOwners,
      'with_deleted_garages_city': withDeletedGaragesCity,
      'with_deleted_garages_created_by': withDeletedGaragesCreatedBy,
      'with_deleted_garages_updated_by': withDeletedGaragesUpdatedBy,
      'with_deleted_garages_deleted_by': withDeletedGaragesDeletedBy,
      'with_created_tasks': withCreatedTasks,
      'with_created_tasks_sub_tasks': withCreatedTasksSubTasks,
      'with_created_tasks_attached_to': withCreatedTasksAttachedTo,
      'with_created_tasks_created_by': withCreatedTasksCreatedBy,
      'with_created_tasks_updated_by': withCreatedTasksUpdatedBy,
      'with_created_tasks_deleted_by': withCreatedTasksDeletedBy,
      'with_updated_tasks': withUpdatedTasks,
      'with_updated_tasks_sub_tasks': withUpdatedTasksSubTasks,
      'with_updated_tasks_attached_to': withUpdatedTasksAttachedTo,
      'with_updated_tasks_created_by': withUpdatedTasksCreatedBy,
      'with_updated_tasks_updated_by': withUpdatedTasksUpdatedBy,
      'with_updated_tasks_deleted_by': withUpdatedTasksDeletedBy,
      'with_deleted_tasks': withDeletedTasks,
      'with_deleted_tasks_sub_tasks': withDeletedTasksSubTasks,
      'with_deleted_tasks_attached_to': withDeletedTasksAttachedTo,
      'with_deleted_tasks_created_by': withDeletedTasksCreatedBy,
      'with_deleted_tasks_updated_by': withDeletedTasksUpdatedBy,
      'with_deleted_tasks_deleted_by': withDeletedTasksDeletedBy,
      'with_created_vehicle_tasks': withCreatedVehicleTasks,
      'with_created_vehicle_tasks_activities':
          withCreatedVehicleTasksActivities,
      'with_created_vehicle_tasks_task': withCreatedVehicleTasksTask,
      'with_created_vehicle_tasks_created_by': withCreatedVehicleTasksCreatedBy,
      'with_created_vehicle_tasks_assigned_to':
          withCreatedVehicleTasksAssignedTo,
      'with_created_vehicle_tasks_deleted_by': withCreatedVehicleTasksDeletedBy,
      'with_created_vehicle_tasks_updated_by': withCreatedVehicleTasksUpdatedBy,
      'with_created_vehicle_tasks_vehicle': withCreatedVehicleTasksVehicle,
      'with_created_vehicle_tasks_sub_task': withCreatedVehicleTasksSubTask,
      'with_assigned_vehicle_tasks': withAssignedVehicleTasks,
      'with_assigned_vehicle_tasks_activities':
          withAssignedVehicleTasksActivities,
      'with_assigned_vehicle_tasks_task': withAssignedVehicleTasksTask,
      'with_assigned_vehicle_tasks_created_by':
          withAssignedVehicleTasksCreatedBy,
      'with_assigned_vehicle_tasks_assigned_to':
          withAssignedVehicleTasksAssignedTo,
      'with_assigned_vehicle_tasks_deleted_by':
          withAssignedVehicleTasksDeletedBy,
      'with_assigned_vehicle_tasks_updated_by':
          withAssignedVehicleTasksUpdatedBy,
      'with_assigned_vehicle_tasks_vehicle': withAssignedVehicleTasksVehicle,
      'with_assigned_vehicle_tasks_sub_task': withAssignedVehicleTasksSubTask,
      'with_deleted_vehicle_tasks': withDeletedVehicleTasks,
      'with_deleted_vehicle_tasks_activities':
          withDeletedVehicleTasksActivities,
      'with_deleted_vehicle_tasks_task': withDeletedVehicleTasksTask,
      'with_deleted_vehicle_tasks_created_by': withDeletedVehicleTasksCreatedBy,
      'with_deleted_vehicle_tasks_assigned_to':
          withDeletedVehicleTasksAssignedTo,
      'with_deleted_vehicle_tasks_deleted_by': withDeletedVehicleTasksDeletedBy,
      'with_deleted_vehicle_tasks_updated_by': withDeletedVehicleTasksUpdatedBy,
      'with_deleted_vehicle_tasks_vehicle': withDeletedVehicleTasksVehicle,
      'with_deleted_vehicle_tasks_sub_task': withDeletedVehicleTasksSubTask,
      'with_updated_vehicle_tasks': withUpdatedVehicleTasks,
      'with_updated_vehicle_tasks_activities':
          withUpdatedVehicleTasksActivities,
      'with_updated_vehicle_tasks_task': withUpdatedVehicleTasksTask,
      'with_updated_vehicle_tasks_created_by': withUpdatedVehicleTasksCreatedBy,
      'with_updated_vehicle_tasks_assigned_to':
          withUpdatedVehicleTasksAssignedTo,
      'with_updated_vehicle_tasks_deleted_by': withUpdatedVehicleTasksDeletedBy,
      'with_updated_vehicle_tasks_updated_by': withUpdatedVehicleTasksUpdatedBy,
      'with_updated_vehicle_tasks_vehicle': withUpdatedVehicleTasksVehicle,
      'with_updated_vehicle_tasks_sub_task': withUpdatedVehicleTasksSubTask,
      'with_permission': withPermission,
      'with_permission_employees': withPermissionEmployees,
      'with_requests': withRequests,
      'with_requests_spare_parts': withRequestsSpareParts,
      'with_requests_request_by': withRequestsRequestBy,
      'with_account': withAccount,
      'with_account_employee': withAccountEmployee,
      'with_created_activities': withCreatedActivities,
      'with_created_activities_vehicle_tasks':
          withCreatedActivitiesVehicleTasks,
      'with_created_activities_created_by': withCreatedActivitiesCreatedBy,
      'with_created_activities_updated_by': withCreatedActivitiesUpdatedBy,
      'with_created_activities_deleted_by': withCreatedActivitiesDeletedBy,
      'with_updated_activities': withUpdatedActivities,
      'with_updated_activities_vehicle_tasks':
          withUpdatedActivitiesVehicleTasks,
      'with_updated_activities_created_by': withUpdatedActivitiesCreatedBy,
      'with_updated_activities_updated_by': withUpdatedActivitiesUpdatedBy,
      'with_updated_activities_deleted_by': withUpdatedActivitiesDeletedBy,
      'with_deleted_activities': withDeletedActivities,
      'with_deleted_activities_vehicle_tasks':
          withDeletedActivitiesVehicleTasks,
      'with_deleted_activities_created_by': withDeletedActivitiesCreatedBy,
      'with_deleted_activities_updated_by': withDeletedActivitiesUpdatedBy,
      'with_deleted_activities_deleted_by': withDeletedActivitiesDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListEmployee, ListEmployee>($request);
  }

  @override
  Future<Response<TotalCount>> _apiEmployeeTotalGet() {
    final Uri $url = Uri.parse('/api/employee/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<GarageResponse>> _apiGaragePost(
      {required Object? garageModel}) {
    final Uri $url = Uri.parse('/api/garage');
    final $body = garageModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<GarageResponse, GarageResponse>($request);
  }

  @override
  Future<Response<String>> _apiGarageIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<GarageResponse>> _apiGarageIdGet({
    required int? id,
    bool? withOwners,
    bool? withOwnersVehicles,
    bool? withOwnersGarage,
    bool? withCity,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_owners': withOwners,
      'with_owners_vehicles': withOwnersVehicles,
      'with_owners_garage': withOwnersGarage,
      'with_city': withCity,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<GarageResponse, GarageResponse>($request);
  }

  @override
  Future<Response<GarageResponse>> _apiGarageIdPatch({
    required int? id,
    required Object? garageModel,
  }) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final $body = garageModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<GarageResponse, GarageResponse>($request);
  }

  @override
  Future<Response<List<GarageAudit>>> _apiGarageIdAuditGet({required int? id}) {
    final Uri $url = Uri.parse('/api/garage/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<GarageAudit>, GarageAudit>($request);
  }

  @override
  Future<Response<List<GarageResponse>>> _apiGarageImportPost(
      {required List<CreateGarage>? garageModel}) {
    final Uri $url = Uri.parse('/api/garage/import');
    final $body = garageModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<GarageResponse>, GarageResponse>($request);
  }

  @override
  Future<Response<ListGarage>> _apiGarageListGet({
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
    final Uri $url = Uri.parse('/api/garage/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_owners': withOwners,
      'with_owners_vehicles': withOwnersVehicles,
      'with_owners_garage': withOwnersGarage,
      'with_city': withCity,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListGarage, ListGarage>($request);
  }

  @override
  Future<Response<TotalCount>> _apiGarageTotalGet() {
    final Uri $url = Uri.parse('/api/garage/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<OwnerResponse>> _apiOwnerPost({required Object? ownerModel}) {
    final Uri $url = Uri.parse('/api/owner');
    final $body = ownerModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<OwnerResponse, OwnerResponse>($request);
  }

  @override
  Future<Response<String>> _apiOwnerIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<OwnerResponse>> _apiOwnerIdGet({
    required int? id,
    bool? withVehicles,
    bool? withVehiclesVehicleTasks,
    bool? withVehiclesCreatedBy,
    bool? withVehiclesUpdatedBy,
    bool? withVehiclesDeletedBy,
    bool? withVehiclesOwner,
    bool? withGarage,
  }) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_vehicles': withVehicles,
      'with_vehicles_vehicle_tasks': withVehiclesVehicleTasks,
      'with_vehicles_created_by': withVehiclesCreatedBy,
      'with_vehicles_updated_by': withVehiclesUpdatedBy,
      'with_vehicles_deleted_by': withVehiclesDeletedBy,
      'with_vehicles_owner': withVehiclesOwner,
      'with_garage': withGarage,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<OwnerResponse, OwnerResponse>($request);
  }

  @override
  Future<Response<OwnerResponse>> _apiOwnerIdPatch({
    required int? id,
    required Object? ownerModel,
  }) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final $body = ownerModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<OwnerResponse, OwnerResponse>($request);
  }

  @override
  Future<Response<List<OwnerAudit>>> _apiOwnerIdAuditGet({required int? id}) {
    final Uri $url = Uri.parse('/api/owner/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<OwnerAudit>, OwnerAudit>($request);
  }

  @override
  Future<Response<List<OwnerResponse>>> _apiOwnerImportPost(
      {required List<CreateOwner>? ownerModel}) {
    final Uri $url = Uri.parse('/api/owner/import');
    final $body = ownerModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<OwnerResponse>, OwnerResponse>($request);
  }

  @override
  Future<Response<ListOwner>> _apiOwnerListGet({
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
    final Uri $url = Uri.parse('/api/owner/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_vehicles': withVehicles,
      'with_vehicles_vehicle_tasks': withVehiclesVehicleTasks,
      'with_vehicles_created_by': withVehiclesCreatedBy,
      'with_vehicles_updated_by': withVehiclesUpdatedBy,
      'with_vehicles_deleted_by': withVehiclesDeletedBy,
      'with_vehicles_owner': withVehiclesOwner,
      'with_garage': withGarage,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListOwner, ListOwner>($request);
  }

  @override
  Future<Response<TotalCount>> _apiOwnerTotalGet() {
    final Uri $url = Uri.parse('/api/owner/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<PermissionResponse>> _apiPermissionPost(
      {required Object? permissionModel}) {
    final Uri $url = Uri.parse('/api/permission');
    final $body = permissionModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PermissionResponse, PermissionResponse>($request);
  }

  @override
  Future<Response<String>> _apiPermissionIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PermissionResponse>> _apiPermissionIdGet({
    required int? id,
    bool? withEmployees,
  }) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_employees': withEmployees
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PermissionResponse, PermissionResponse>($request);
  }

  @override
  Future<Response<PermissionResponse>> _apiPermissionIdPatch({
    required int? id,
    required Object? permissionModel,
  }) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final $body = permissionModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PermissionResponse, PermissionResponse>($request);
  }

  @override
  Future<Response<List<PermissionAudit>>> _apiPermissionIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/permission/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PermissionAudit>, PermissionAudit>($request);
  }

  @override
  Future<Response<List<PermissionResponse>>> _apiPermissionImportPost(
      {required List<CreatePermission>? permissionModel}) {
    final Uri $url = Uri.parse('/api/permission/import');
    final $body = permissionModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<PermissionResponse>, PermissionResponse>($request);
  }

  @override
  Future<Response<ListPermission>> _apiPermissionListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withEmployees,
  }) {
    final Uri $url = Uri.parse('/api/permission/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_employees': withEmployees,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListPermission, ListPermission>($request);
  }

  @override
  Future<Response<TotalCount>> _apiPermissionTotalGet() {
    final Uri $url = Uri.parse('/api/permission/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<SparePartResponse>> _apiSparePartPost(
      {required Object? sparePartModel}) {
    final Uri $url = Uri.parse('/api/spare_part');
    final $body = sparePartModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SparePartResponse, SparePartResponse>($request);
  }

  @override
  Future<Response<String>> _apiSparePartIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<SparePartResponse>> _apiSparePartIdGet({
    required int? id,
    bool? withRequest,
    bool? withSupplier,
  }) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_request': withRequest,
      'with_supplier': withSupplier,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SparePartResponse, SparePartResponse>($request);
  }

  @override
  Future<Response<SparePartResponse>> _apiSparePartIdPatch({
    required int? id,
    required Object? sparePartModel,
  }) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final $body = sparePartModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SparePartResponse, SparePartResponse>($request);
  }

  @override
  Future<Response<List<SparePartAudit>>> _apiSparePartIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/spare_part/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<SparePartAudit>, SparePartAudit>($request);
  }

  @override
  Future<Response<List<SparePartResponse>>> _apiSparePartImportPost(
      {required List<CreateSparePart>? sparePartModel}) {
    final Uri $url = Uri.parse('/api/spare_part/import');
    final $body = sparePartModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<SparePartResponse>, SparePartResponse>($request);
  }

  @override
  Future<Response<ListSparePart>> _apiSparePartListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withRequest,
    bool? withSupplier,
  }) {
    final Uri $url = Uri.parse('/api/spare_part/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_request': withRequest,
      'with_supplier': withSupplier,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListSparePart, ListSparePart>($request);
  }

  @override
  Future<Response<TotalCount>> _apiSparePartTotalGet() {
    final Uri $url = Uri.parse('/api/spare_part/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<SparePartRequestResponse>> _apiSparePartRequestPost(
      {required Object? sparePartRequestModel}) {
    final Uri $url = Uri.parse('/api/spare_part_request');
    final $body = sparePartRequestModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SparePartRequestResponse, SparePartRequestResponse>($request);
  }

  @override
  Future<Response<String>> _apiSparePartRequestIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/spare_part_request/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<SparePartRequestResponse>> _apiSparePartRequestIdGet({
    required int? id,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
    bool? withRequestBy,
  }) {
    final Uri $url = Uri.parse('/api/spare_part_request/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_spare_parts': withSpareParts,
      'with_spare_parts_request': withSparePartsRequest,
      'with_spare_parts_supplier': withSparePartsSupplier,
      'with_request_by': withRequestBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<SparePartRequestResponse, SparePartRequestResponse>($request);
  }

  @override
  Future<Response<SparePartRequestResponse>> _apiSparePartRequestIdPatch({
    required int? id,
    required Object? sparePartRequestModel,
  }) {
    final Uri $url = Uri.parse('/api/spare_part_request/${id}');
    final $body = sparePartRequestModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SparePartRequestResponse, SparePartRequestResponse>($request);
  }

  @override
  Future<Response<List<SparePartRequestAudit>>> _apiSparePartRequestIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/spare_part_request/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<SparePartRequestAudit>, SparePartRequestAudit>($request);
  }

  @override
  Future<Response<List<SparePartRequestResponse>>>
      _apiSparePartRequestImportPost(
          {required List<CreateSparePartRequest>? sparePartRequestModel}) {
    final Uri $url = Uri.parse('/api/spare_part_request/import');
    final $body = sparePartRequestModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<SparePartRequestResponse>,
        SparePartRequestResponse>($request);
  }

  @override
  Future<Response<ListSparePartRequest>> _apiSparePartRequestListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
    bool? withRequestBy,
  }) {
    final Uri $url = Uri.parse('/api/spare_part_request/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_spare_parts': withSpareParts,
      'with_spare_parts_request': withSparePartsRequest,
      'with_spare_parts_supplier': withSparePartsSupplier,
      'with_request_by': withRequestBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListSparePartRequest, ListSparePartRequest>($request);
  }

  @override
  Future<Response<TotalCount>> _apiSparePartRequestTotalGet() {
    final Uri $url = Uri.parse('/api/spare_part_request/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<SubTaskResponse>> _apiSubTaskPost(
      {required Object? subTaskModel}) {
    final Uri $url = Uri.parse('/api/sub_task');
    final $body = subTaskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SubTaskResponse, SubTaskResponse>($request);
  }

  @override
  Future<Response<String>> _apiSubTaskIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/sub_task/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<SubTaskResponse>> _apiSubTaskIdGet({
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
    final Uri $url = Uri.parse('/api/sub_task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_attached_to': withAttachedTo,
      'with_attached_to_activities': withAttachedToActivities,
      'with_attached_to_task': withAttachedToTask,
      'with_attached_to_created_by': withAttachedToCreatedBy,
      'with_attached_to_assigned_to': withAttachedToAssignedTo,
      'with_attached_to_deleted_by': withAttachedToDeletedBy,
      'with_attached_to_updated_by': withAttachedToUpdatedBy,
      'with_attached_to_vehicle': withAttachedToVehicle,
      'with_attached_to_sub_task': withAttachedToSubTask,
      'with_parent_task': withParentTask,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SubTaskResponse, SubTaskResponse>($request);
  }

  @override
  Future<Response<SubTaskResponse>> _apiSubTaskIdPatch({
    required int? id,
    required Object? subTaskModel,
  }) {
    final Uri $url = Uri.parse('/api/sub_task/${id}');
    final $body = subTaskModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SubTaskResponse, SubTaskResponse>($request);
  }

  @override
  Future<Response<List<SubTaskAudit>>> _apiSubTaskIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/sub_task/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<SubTaskAudit>, SubTaskAudit>($request);
  }

  @override
  Future<Response<List<SubTaskResponse>>> _apiSubTaskImportPost(
      {required List<CreateSubTask>? subTaskModel}) {
    final Uri $url = Uri.parse('/api/sub_task/import');
    final $body = subTaskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<SubTaskResponse>, SubTaskResponse>($request);
  }

  @override
  Future<Response<ListSubTask>> _apiSubTaskListGet({
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
    final Uri $url = Uri.parse('/api/sub_task/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_attached_to': withAttachedTo,
      'with_attached_to_activities': withAttachedToActivities,
      'with_attached_to_task': withAttachedToTask,
      'with_attached_to_created_by': withAttachedToCreatedBy,
      'with_attached_to_assigned_to': withAttachedToAssignedTo,
      'with_attached_to_deleted_by': withAttachedToDeletedBy,
      'with_attached_to_updated_by': withAttachedToUpdatedBy,
      'with_attached_to_vehicle': withAttachedToVehicle,
      'with_attached_to_sub_task': withAttachedToSubTask,
      'with_parent_task': withParentTask,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListSubTask, ListSubTask>($request);
  }

  @override
  Future<Response<TotalCount>> _apiSubTaskTotalGet() {
    final Uri $url = Uri.parse('/api/sub_task/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<SupplierResponse>> _apiSupplierPost(
      {required Object? supplierModel}) {
    final Uri $url = Uri.parse('/api/supplier');
    final $body = supplierModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SupplierResponse, SupplierResponse>($request);
  }

  @override
  Future<Response<String>> _apiSupplierIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<SupplierResponse>> _apiSupplierIdGet({
    required int? id,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
  }) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_spare_parts': withSpareParts,
      'with_spare_parts_request': withSparePartsRequest,
      'with_spare_parts_supplier': withSparePartsSupplier,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SupplierResponse, SupplierResponse>($request);
  }

  @override
  Future<Response<SupplierResponse>> _apiSupplierIdPatch({
    required int? id,
    required Object? supplierModel,
  }) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final $body = supplierModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SupplierResponse, SupplierResponse>($request);
  }

  @override
  Future<Response<List<SupplierAudit>>> _apiSupplierIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/supplier/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<SupplierAudit>, SupplierAudit>($request);
  }

  @override
  Future<Response<List<SupplierResponse>>> _apiSupplierImportPost(
      {required List<CreateSupplier>? supplierModel}) {
    final Uri $url = Uri.parse('/api/supplier/import');
    final $body = supplierModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<SupplierResponse>, SupplierResponse>($request);
  }

  @override
  Future<Response<ListSupplier>> _apiSupplierListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withSpareParts,
    bool? withSparePartsRequest,
    bool? withSparePartsSupplier,
  }) {
    final Uri $url = Uri.parse('/api/supplier/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_spare_parts': withSpareParts,
      'with_spare_parts_request': withSparePartsRequest,
      'with_spare_parts_supplier': withSparePartsSupplier,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListSupplier, ListSupplier>($request);
  }

  @override
  Future<Response<TotalCount>> _apiSupplierTotalGet() {
    final Uri $url = Uri.parse('/api/supplier/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<TaskResponse>> _apiTaskPost({required Object? taskModel}) {
    final Uri $url = Uri.parse('/api/task');
    final $body = taskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TaskResponse, TaskResponse>($request);
  }

  @override
  Future<Response<String>> _apiTaskIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/task/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<TaskResponse>> _apiTaskIdGet({
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
    final Uri $url = Uri.parse('/api/task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_sub_tasks': withSubTasks,
      'with_sub_tasks_attached_to': withSubTasksAttachedTo,
      'with_sub_tasks_parent_task': withSubTasksParentTask,
      'with_attached_to': withAttachedTo,
      'with_attached_to_activities': withAttachedToActivities,
      'with_attached_to_task': withAttachedToTask,
      'with_attached_to_created_by': withAttachedToCreatedBy,
      'with_attached_to_assigned_to': withAttachedToAssignedTo,
      'with_attached_to_deleted_by': withAttachedToDeletedBy,
      'with_attached_to_updated_by': withAttachedToUpdatedBy,
      'with_attached_to_vehicle': withAttachedToVehicle,
      'with_attached_to_sub_task': withAttachedToSubTask,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TaskResponse, TaskResponse>($request);
  }

  @override
  Future<Response<TaskResponse>> _apiTaskIdPatch({
    required int? id,
    required Object? taskModel,
  }) {
    final Uri $url = Uri.parse('/api/task/${id}');
    final $body = taskModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TaskResponse, TaskResponse>($request);
  }

  @override
  Future<Response<List<TaskAudit>>> _apiTaskIdAuditGet({required int? id}) {
    final Uri $url = Uri.parse('/api/task/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TaskAudit>, TaskAudit>($request);
  }

  @override
  Future<Response<List<TaskResponse>>> _apiTaskImportPost(
      {required List<CreateTask>? taskModel}) {
    final Uri $url = Uri.parse('/api/task/import');
    final $body = taskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<TaskResponse>, TaskResponse>($request);
  }

  @override
  Future<Response<ListTask>> _apiTaskListGet({
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
    final Uri $url = Uri.parse('/api/task/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_sub_tasks': withSubTasks,
      'with_sub_tasks_attached_to': withSubTasksAttachedTo,
      'with_sub_tasks_parent_task': withSubTasksParentTask,
      'with_attached_to': withAttachedTo,
      'with_attached_to_activities': withAttachedToActivities,
      'with_attached_to_task': withAttachedToTask,
      'with_attached_to_created_by': withAttachedToCreatedBy,
      'with_attached_to_assigned_to': withAttachedToAssignedTo,
      'with_attached_to_deleted_by': withAttachedToDeletedBy,
      'with_attached_to_updated_by': withAttachedToUpdatedBy,
      'with_attached_to_vehicle': withAttachedToVehicle,
      'with_attached_to_sub_task': withAttachedToSubTask,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListTask, ListTask>($request);
  }

  @override
  Future<Response<TotalCount>> _apiTaskTotalGet() {
    final Uri $url = Uri.parse('/api/task/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<Object>> _apiTasksSeedPost() {
    final Uri $url = Uri.parse('/api/tasks_seed');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<VehicleResponse>> _apiVehiclePost(
      {required Object? vehicleModel}) {
    final Uri $url = Uri.parse('/api/vehicle');
    final $body = vehicleModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleResponse, VehicleResponse>($request);
  }

  @override
  Future<Response<String>> _apiVehicleIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VehicleResponse>> _apiVehicleIdGet({
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
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_vehicle_tasks': withVehicleTasks,
      'with_vehicle_tasks_activities': withVehicleTasksActivities,
      'with_vehicle_tasks_task': withVehicleTasksTask,
      'with_vehicle_tasks_created_by': withVehicleTasksCreatedBy,
      'with_vehicle_tasks_assigned_to': withVehicleTasksAssignedTo,
      'with_vehicle_tasks_deleted_by': withVehicleTasksDeletedBy,
      'with_vehicle_tasks_updated_by': withVehicleTasksUpdatedBy,
      'with_vehicle_tasks_vehicle': withVehicleTasksVehicle,
      'with_vehicle_tasks_sub_task': withVehicleTasksSubTask,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
      'with_owner': withOwner,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<VehicleResponse, VehicleResponse>($request);
  }

  @override
  Future<Response<VehicleResponse>> _apiVehicleIdPatch({
    required int? id,
    required Object? vehicleModel,
  }) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final $body = vehicleModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleResponse, VehicleResponse>($request);
  }

  @override
  Future<Response<List<VehicleAudit>>> _apiVehicleIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/vehicle/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<VehicleAudit>, VehicleAudit>($request);
  }

  @override
  Future<Response<List<VehicleResponse>>> _apiVehicleImportPost(
      {required List<CreateVehicle>? vehicleModel}) {
    final Uri $url = Uri.parse('/api/vehicle/import');
    final $body = vehicleModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<VehicleResponse>, VehicleResponse>($request);
  }

  @override
  Future<Response<ListVehicle>> _apiVehicleListGet({
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
    final Uri $url = Uri.parse('/api/vehicle/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_vehicle_tasks': withVehicleTasks,
      'with_vehicle_tasks_activities': withVehicleTasksActivities,
      'with_vehicle_tasks_task': withVehicleTasksTask,
      'with_vehicle_tasks_created_by': withVehicleTasksCreatedBy,
      'with_vehicle_tasks_assigned_to': withVehicleTasksAssignedTo,
      'with_vehicle_tasks_deleted_by': withVehicleTasksDeletedBy,
      'with_vehicle_tasks_updated_by': withVehicleTasksUpdatedBy,
      'with_vehicle_tasks_vehicle': withVehicleTasksVehicle,
      'with_vehicle_tasks_sub_task': withVehicleTasksSubTask,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_deleted_by': withDeletedBy,
      'with_owner': withOwner,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListVehicle, ListVehicle>($request);
  }

  @override
  Future<Response<TotalCount>> _apiVehicleTotalGet() {
    final Uri $url = Uri.parse('/api/vehicle/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<VehicleTaskResponse>> _apiVehicleTaskPost(
      {required Object? vehicleTaskModel}) {
    final Uri $url = Uri.parse('/api/vehicle_task');
    final $body = vehicleTaskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleTaskResponse, VehicleTaskResponse>($request);
  }

  @override
  Future<Response<String>> _apiVehicleTaskIdDelete({required int? id}) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VehicleTaskResponse>> _apiVehicleTaskIdGet({
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
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_activities': withActivities,
      'with_activities_vehicle_tasks': withActivitiesVehicleTasks,
      'with_activities_created_by': withActivitiesCreatedBy,
      'with_activities_updated_by': withActivitiesUpdatedBy,
      'with_activities_deleted_by': withActivitiesDeletedBy,
      'with_task': withTask,
      'with_created_by': withCreatedBy,
      'with_assigned_to': withAssignedTo,
      'with_deleted_by': withDeletedBy,
      'with_updated_by': withUpdatedBy,
      'with_vehicle': withVehicle,
      'with_sub_task': withSubTask,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<VehicleTaskResponse, VehicleTaskResponse>($request);
  }

  @override
  Future<Response<VehicleTaskResponse>> _apiVehicleTaskIdPatch({
    required int? id,
    required Object? vehicleTaskModel,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final $body = vehicleTaskModel;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<VehicleTaskResponse, VehicleTaskResponse>($request);
  }

  @override
  Future<Response<List<VehicleTaskAudit>>> _apiVehicleTaskIdAuditGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}/audit');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<VehicleTaskAudit>, VehicleTaskAudit>($request);
  }

  @override
  Future<Response<List<VehicleTaskResponse>>> _apiVehicleTaskImportPost(
      {required List<CreateVehicleTask>? vehicleTaskModel}) {
    final Uri $url = Uri.parse('/api/vehicle_task/import');
    final $body = vehicleTaskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<VehicleTaskResponse>, VehicleTaskResponse>($request);
  }

  @override
  Future<Response<ListVehicleTask>> _apiVehicleTaskListGet({
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
    final Uri $url = Uri.parse('/api/vehicle_task/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_activities': withActivities,
      'with_activities_vehicle_tasks': withActivitiesVehicleTasks,
      'with_activities_created_by': withActivitiesCreatedBy,
      'with_activities_updated_by': withActivitiesUpdatedBy,
      'with_activities_deleted_by': withActivitiesDeletedBy,
      'with_task': withTask,
      'with_created_by': withCreatedBy,
      'with_assigned_to': withAssignedTo,
      'with_deleted_by': withDeletedBy,
      'with_updated_by': withUpdatedBy,
      'with_vehicle': withVehicle,
      'with_sub_task': withSubTask,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ListVehicleTask, ListVehicleTask>($request);
  }

  @override
  Future<Response<TotalCount>> _apiVehicleTaskTotalGet() {
    final Uri $url = Uri.parse('/api/vehicle_task/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TotalCount, TotalCount>($request);
  }

  @override
  Future<Response<Object>> _apiVehiclesSeedPost({required String? count}) {
    final Uri $url = Uri.parse('/api/vehicles_seed');
    final Map<String, dynamic> $params = <String, dynamic>{'count': count};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<String>> _healthGet() {
    final Uri $url = Uri.parse('/health');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }
}
