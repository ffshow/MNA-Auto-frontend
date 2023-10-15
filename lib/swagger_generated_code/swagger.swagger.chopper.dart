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
  Future<Response<AccountResponse>> _apiAccountIdGet({
    required int? id,
    bool? withHistory,
    bool? withEmployee,
    bool? withHistoryEmployee,
  }) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_employee': withEmployee,
      'with_history_employee': withHistoryEmployee,
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
    bool? withHistory,
    bool? withEmployee,
    bool? withHistoryEmployee,
  }) {
    final Uri $url = Uri.parse('/api/account/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_employee': withEmployee,
      'with_history_employee': withHistoryEmployee,
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
  Future<Response<CityResponse>> _apiCityIdGet({
    required int? id,
    bool? withHistory,
    bool? withGarages,
    bool? withGaragesOwners,
  }) {
    final Uri $url = Uri.parse('/api/city/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_garages': withGarages,
      'with_garages_owners': withGaragesOwners,
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
    bool? withHistory,
    bool? withGarages,
    bool? withGaragesOwners,
  }) {
    final Uri $url = Uri.parse('/api/city/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_garages': withGarages,
      'with_garages_owners': withGaragesOwners,
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
  Future<Response<EmployeeResponse>> _apiEmployeeIdGet({
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
    final Uri $url = Uri.parse('/api/employee/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_created_vehicles': withCreatedVehicles,
      'with_created_vehicles_vehicle_tasks': withCreatedVehiclesVehicleTasks,
      'with_updated_vehicles': withUpdatedVehicles,
      'with_updated_vehicles_vehicle_tasks': withUpdatedVehiclesVehicleTasks,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_deleted_vehicles_vehicle_tasks': withDeletedVehiclesVehicleTasks,
      'with_created_garages': withCreatedGarages,
      'with_created_garages_owners': withCreatedGaragesOwners,
      'with_created_tasks': withCreatedTasks,
      'with_created_tasks_sub_tasks': withCreatedTasksSubTasks,
      'with_created_tasks_attached_to': withCreatedTasksAttachedTo,
      'with_updated_tasks': withUpdatedTasks,
      'with_updated_tasks_sub_tasks': withUpdatedTasksSubTasks,
      'with_updated_tasks_attached_to': withUpdatedTasksAttachedTo,
      'with_created_vehicle_tasks': withCreatedVehicleTasks,
      'with_assigned_tasks': withAssignedTasks,
      'with_permission': withPermission,
      'with_requests': withRequests,
      'with_requests_spare_parts': withRequestsSpareParts,
      'with_account': withAccount,
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
    final Uri $url = Uri.parse('/api/employee/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_created_vehicles': withCreatedVehicles,
      'with_created_vehicles_vehicle_tasks': withCreatedVehiclesVehicleTasks,
      'with_updated_vehicles': withUpdatedVehicles,
      'with_updated_vehicles_vehicle_tasks': withUpdatedVehiclesVehicleTasks,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_deleted_vehicles_vehicle_tasks': withDeletedVehiclesVehicleTasks,
      'with_created_garages': withCreatedGarages,
      'with_created_garages_owners': withCreatedGaragesOwners,
      'with_created_tasks': withCreatedTasks,
      'with_created_tasks_sub_tasks': withCreatedTasksSubTasks,
      'with_created_tasks_attached_to': withCreatedTasksAttachedTo,
      'with_updated_tasks': withUpdatedTasks,
      'with_updated_tasks_sub_tasks': withUpdatedTasksSubTasks,
      'with_updated_tasks_attached_to': withUpdatedTasksAttachedTo,
      'with_created_vehicle_tasks': withCreatedVehicleTasks,
      'with_assigned_tasks': withAssignedTasks,
      'with_permission': withPermission,
      'with_requests': withRequests,
      'with_requests_spare_parts': withRequestsSpareParts,
      'with_account': withAccount,
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
  Future<Response<GarageResponse>> _apiGarageIdGet({
    required int? id,
    bool? withHistory,
    bool? withOwners,
    bool? withOwnersVehicles,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withCity,
    bool? withHistoryCity,
  }) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_owners': withOwners,
      'with_owners_vehicles': withOwnersVehicles,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_city': withCity,
      'with_history_city': withHistoryCity,
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
    bool? withHistory,
    bool? withOwners,
    bool? withOwnersVehicles,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withCity,
    bool? withHistoryCity,
  }) {
    final Uri $url = Uri.parse('/api/garage/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_owners': withOwners,
      'with_owners_vehicles': withOwnersVehicles,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_city': withCity,
      'with_history_city': withHistoryCity,
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
  Future<Response<OwnerResponse>> _apiOwnerIdGet({
    required int? id,
    bool? withHistory,
    bool? withVehicles,
    bool? withVehiclesVehicleTasks,
    bool? withGarage,
    bool? withHistoryGarage,
  }) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_vehicles': withVehicles,
      'with_vehicles_vehicle_tasks': withVehiclesVehicleTasks,
      'with_garage': withGarage,
      'with_history_garage': withHistoryGarage,
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
    bool? withHistory,
    bool? withVehicles,
    bool? withVehiclesVehicleTasks,
    bool? withGarage,
    bool? withHistoryGarage,
  }) {
    final Uri $url = Uri.parse('/api/owner/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_vehicles': withVehicles,
      'with_vehicles_vehicle_tasks': withVehiclesVehicleTasks,
      'with_garage': withGarage,
      'with_history_garage': withHistoryGarage,
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
  Future<Response<PermissionResponse>> _apiPermissionIdGet({
    required int? id,
    bool? withHistory,
    bool? withEmployees,
    bool? withHistoryEmployees,
  }) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_employees': withEmployees,
      'with_history_employees': withHistoryEmployees,
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
    bool? withHistory,
    bool? withEmployees,
    bool? withHistoryEmployees,
  }) {
    final Uri $url = Uri.parse('/api/permission/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_employees': withEmployees,
      'with_history_employees': withHistoryEmployees,
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
  Future<Response<SparePartResponse>> _apiSparePartIdGet({
    required int? id,
    bool? withHistory,
    bool? withRequest,
    bool? withHistoryRequest,
    bool? withSupplier,
    bool? withHistorySupplier,
  }) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_request': withRequest,
      'with_history_request': withHistoryRequest,
      'with_supplier': withSupplier,
      'with_history_supplier': withHistorySupplier,
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
    bool? withHistory,
    bool? withRequest,
    bool? withHistoryRequest,
    bool? withSupplier,
    bool? withHistorySupplier,
  }) {
    final Uri $url = Uri.parse('/api/spare_part/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_request': withRequest,
      'with_history_request': withHistoryRequest,
      'with_supplier': withSupplier,
      'with_history_supplier': withHistorySupplier,
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
  Future<Response<SparePartRequestResponse>> _apiSparePartRequestIdGet({
    required int? id,
    bool? withHistory,
    bool? withSpareParts,
    bool? withRequestBy,
    bool? withHistoryRequestBy,
  }) {
    final Uri $url = Uri.parse('/api/spare_part_request/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_spare_parts': withSpareParts,
      'with_request_by': withRequestBy,
      'with_history_request_by': withHistoryRequestBy,
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
    bool? withHistory,
    bool? withSpareParts,
    bool? withRequestBy,
    bool? withHistoryRequestBy,
  }) {
    final Uri $url = Uri.parse('/api/spare_part_request/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_spare_parts': withSpareParts,
      'with_request_by': withRequestBy,
      'with_history_request_by': withHistoryRequestBy,
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
  Future<Response<SupplierResponse>> _apiSupplierIdGet({
    required int? id,
    bool? withHistory,
    bool? withSpareParts,
  }) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_spare_parts': withSpareParts,
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
    bool? withHistory,
    bool? withSpareParts,
  }) {
    final Uri $url = Uri.parse('/api/supplier/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_spare_parts': withSpareParts,
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
  Future<Response<TaskResponse>> _apiTaskIdGet({
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
    final Uri $url = Uri.parse('/api/task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_sub_tasks': withSubTasks,
      'with_sub_tasks_sub_tasks': withSubTasksSubTasks,
      'with_sub_tasks_attached_to': withSubTasksAttachedTo,
      'with_attached_to': withAttachedTo,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_history_updated_by': withHistoryUpdatedBy,
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
    final Uri $url = Uri.parse('/api/task/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_sub_tasks': withSubTasks,
      'with_sub_tasks_sub_tasks': withSubTasksSubTasks,
      'with_sub_tasks_attached_to': withSubTasksAttachedTo,
      'with_attached_to': withAttachedTo,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_history_updated_by': withHistoryUpdatedBy,
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
  Future<Response<VehicleResponse>> _apiVehicleIdGet({
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
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_vehicle_tasks': withVehicleTasks,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_history_updated_by': withHistoryUpdatedBy,
      'with_deleted_by': withDeletedBy,
      'with_history_deleted_by': withHistoryDeletedBy,
      'with_owner': withOwner,
      'with_history_owner': withHistoryOwner,
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
    final Uri $url = Uri.parse('/api/vehicle/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_vehicle_tasks': withVehicleTasks,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_history_updated_by': withHistoryUpdatedBy,
      'with_deleted_by': withDeletedBy,
      'with_history_deleted_by': withHistoryDeletedBy,
      'with_owner': withOwner,
      'with_history_owner': withHistoryOwner,
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
  Future<Response<VehicleTaskResponse>> _apiVehicleTaskIdGet({
    required int? id,
    bool? withHistory,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withAssignedTo,
    bool? withHistoryAssignedTo,
    bool? withTask,
    bool? withHistoryTask,
    bool? withVehicle,
    bool? withHistoryVehicle,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_assigned_to': withAssignedTo,
      'with_history_assigned_to': withHistoryAssignedTo,
      'with_task': withTask,
      'with_history_task': withHistoryTask,
      'with_vehicle': withVehicle,
      'with_history_vehicle': withHistoryVehicle,
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
    bool? withHistory,
    bool? withCreatedBy,
    bool? withHistoryCreatedBy,
    bool? withAssignedTo,
    bool? withHistoryAssignedTo,
    bool? withTask,
    bool? withHistoryTask,
    bool? withVehicle,
    bool? withHistoryVehicle,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task/list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_history': withHistory,
      'with_created_by': withCreatedBy,
      'with_history_created_by': withHistoryCreatedBy,
      'with_assigned_to': withAssignedTo,
      'with_history_assigned_to': withHistoryAssignedTo,
      'with_task': withTask,
      'with_history_task': withHistoryTask,
      'with_vehicle': withVehicle,
      'with_history_vehicle': withHistoryVehicle,
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
