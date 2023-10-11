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
  Future<Response<Object>> _get() {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

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
  }) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory
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
  Future<Response<List<AccountResponse>>> _apiAccountImportPost(
      {required List<CreateAccount>? accountModel}) {
    final Uri $url = Uri.parse('/api/account_import');
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
  }) {
    final Uri $url = Uri.parse('/api/account_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
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
    bool? withUpdatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedVehicleTasks,
    bool? withCreatedGarages,
    bool? withCreatedTasks,
    bool? withUpdatedTasts,
  }) {
    final Uri $url = Uri.parse('/api/employee/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_created_vehicles': withCreatedVehicles,
      'with_updated_vehicles': withUpdatedVehicles,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_created_vehicle_tasks': withCreatedVehicleTasks,
      'with_created_garages': withCreatedGarages,
      'with_created_tasks': withCreatedTasks,
      'with_updated_tasts': withUpdatedTasts,
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
  Future<Response<List<EmployeeResponse>>> _apiEmployeeImportPost(
      {required List<CreateEmployee>? employeeModel}) {
    final Uri $url = Uri.parse('/api/employee_import');
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
    bool? withUpdatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedVehicleTasks,
    bool? withCreatedGarages,
    bool? withCreatedTasks,
    bool? withUpdatedTasts,
  }) {
    final Uri $url = Uri.parse('/api/employee_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_created_vehicles': withCreatedVehicles,
      'with_updated_vehicles': withUpdatedVehicles,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_created_vehicle_tasks': withCreatedVehicleTasks,
      'with_created_garages': withCreatedGarages,
      'with_created_tasks': withCreatedTasks,
      'with_updated_tasts': withUpdatedTasts,
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
    bool? withCreatedBy,
  }) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_created_by': withCreatedBy,
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
  Future<Response<List<GarageResponse>>> _apiGarageImportPost(
      {required List<CreateGarage>? garageModel}) {
    final Uri $url = Uri.parse('/api/garage_import');
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
  }) {
    final Uri $url = Uri.parse('/api/garage_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
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
  }) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_vehicles': withVehicles,
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
  Future<Response<List<OwnerResponse>>> _apiOwnerImportPost(
      {required List<CreateOwner>? ownerModel}) {
    final Uri $url = Uri.parse('/api/owner_import');
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
  }) {
    final Uri $url = Uri.parse('/api/owner_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_vehicles': withVehicles,
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
  }) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory
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
  Future<Response<List<PermissionResponse>>> _apiPermissionImportPost(
      {required List<CreatePermission>? permissionModel}) {
    final Uri $url = Uri.parse('/api/permission_import');
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
  }) {
    final Uri $url = Uri.parse('/api/permission_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
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
  }) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory
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
  Future<Response<List<SparePartResponse>>> _apiSparePartImportPost(
      {required List<CreateSparePart>? sparePartModel}) {
    final Uri $url = Uri.parse('/api/spare_part_import');
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
  }) {
    final Uri $url = Uri.parse('/api/spare_part_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
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
  }) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory
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
  Future<Response<List<SupplierResponse>>> _apiSupplierImportPost(
      {required List<CreateSupplier>? supplierModel}) {
    final Uri $url = Uri.parse('/api/supplier_import');
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
  }) {
    final Uri $url = Uri.parse('/api/supplier_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
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
    bool? withVehicleTasks,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withParentTask,
  }) {
    final Uri $url = Uri.parse('/api/task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_sub_tasks': withSubTasks,
      'with_vehicle_tasks': withVehicleTasks,
      'with_created_by': withCreatedBy,
      'with_updated_by': withUpdatedBy,
      'with_parent_task': withParentTask,
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
  Future<Response<List<TaskResponse>>> _apiTaskImportPost(
      {required List<CreateTask>? taskModel}) {
    final Uri $url = Uri.parse('/api/task_import');
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
    bool? withVehicleTasks,
  }) {
    final Uri $url = Uri.parse('/api/task_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_sub_tasks': withSubTasks,
      'with_vehicle_tasks': withVehicleTasks,
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
    bool? withTasks,
    bool? withOwner,
    bool? withCreatedBy,
    bool? withUpdatedBy,
    bool? withDeletedBy,
  }) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_tasks': withTasks,
      'with_owner': withOwner,
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
  Future<Response<List<VehicleResponse>>> _apiVehicleImportPost(
      {required List<CreateVehicle>? vehicleModel}) {
    final Uri $url = Uri.parse('/api/vehicle_import');
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
    bool? withTasks,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_tasks': withTasks,
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
    bool? withVehicles,
    bool? withCreatedBy,
    bool? withTasks,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_history': withHistory,
      'with_vehicles': withVehicles,
      'with_created_by': withCreatedBy,
      'with_tasks': withTasks,
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
  Future<Response<List<VehicleTaskResponse>>> _apiVehicleTaskImportPost(
      {required List<CreateVehicleTask>? vehicleTaskModel}) {
    final Uri $url = Uri.parse('/api/vehicle_task_import');
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
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
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
}
