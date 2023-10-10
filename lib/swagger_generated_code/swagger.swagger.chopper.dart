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
  Future<Response<ModelsAccountModelResponse>> _apiAccountPost(
      {required Object? accountModel}) {
    final Uri $url = Uri.parse('/api/account');
    final $body = accountModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ModelsAccountModelResponse, ModelsAccountModelResponse>($request);
  }

  @override
  Future<Response<ModelsAccountModelResponse>> _apiAccountIdGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ModelsAccountModelResponse, ModelsAccountModelResponse>($request);
  }

  @override
  Future<Response<ModelsAccountModelResponse>> _apiAccountIdPatch({
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
    return client
        .send<ModelsAccountModelResponse, ModelsAccountModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiAccountTotalGet() {
    final Uri $url = Uri.parse('/api/account/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsAccountModelResponse>>> _apiAccountImportPost(
      {required List<ModelsCreateAccountModel>? accountModel}) {
    final Uri $url = Uri.parse('/api/account_import');
    final $body = accountModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsAccountModelResponse>,
        ModelsAccountModelResponse>($request);
  }

  @override
  Future<Response<ModelsListAccountModel>> _apiAccountListGet({
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
    return client
        .send<ModelsListAccountModel, ModelsListAccountModel>($request);
  }

  @override
  Future<Response<ModelsEmployeeModelResponse>> _apiEmployeePost(
      {required Object? employeeModel}) {
    final Uri $url = Uri.parse('/api/employee');
    final $body = employeeModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsEmployeeModelResponse,
        ModelsEmployeeModelResponse>($request);
  }

  @override
  Future<Response<ModelsEmployeeModelResponse>> _apiEmployeeIdGet({
    required int? id,
    bool? withCreatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedTasks,
  }) {
    final Uri $url = Uri.parse('/api/employee/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_created_vehicles': withCreatedVehicles,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_created_tasks': withCreatedTasks,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ModelsEmployeeModelResponse,
        ModelsEmployeeModelResponse>($request);
  }

  @override
  Future<Response<ModelsEmployeeModelResponse>> _apiEmployeeIdPatch({
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
    return client.send<ModelsEmployeeModelResponse,
        ModelsEmployeeModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiEmployeeTotalGet() {
    final Uri $url = Uri.parse('/api/employee/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsEmployeeModelResponse>>> _apiEmployeeImportPost(
      {required List<ModelsCreateEmployeeModel>? employeeModel}) {
    final Uri $url = Uri.parse('/api/employee_import');
    final $body = employeeModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsEmployeeModelResponse>,
        ModelsEmployeeModelResponse>($request);
  }

  @override
  Future<Response<ModelsListEmployeeModel>> _apiEmployeeListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? withCreatedVehicles,
    bool? withDeletedVehicles,
    bool? withCreatedTasks,
  }) {
    final Uri $url = Uri.parse('/api/employee_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_created_vehicles': withCreatedVehicles,
      'with_deleted_vehicles': withDeletedVehicles,
      'with_created_tasks': withCreatedTasks,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ModelsListEmployeeModel, ModelsListEmployeeModel>($request);
  }

  @override
  Future<Response<ModelsGarageModelResponse>> _apiGaragePost(
      {required Object? garageModel}) {
    final Uri $url = Uri.parse('/api/garage');
    final $body = garageModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ModelsGarageModelResponse, ModelsGarageModelResponse>($request);
  }

  @override
  Future<Response<ModelsGarageModelResponse>> _apiGarageIdGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ModelsGarageModelResponse, ModelsGarageModelResponse>($request);
  }

  @override
  Future<Response<ModelsGarageModelResponse>> _apiGarageIdPatch({
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
    return client
        .send<ModelsGarageModelResponse, ModelsGarageModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiGarageTotalGet() {
    final Uri $url = Uri.parse('/api/garage/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsGarageModelResponse>>> _apiGarageImportPost(
      {required List<ModelsCreateGarageModel>? garageModel}) {
    final Uri $url = Uri.parse('/api/garage_import');
    final $body = garageModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsGarageModelResponse>,
        ModelsGarageModelResponse>($request);
  }

  @override
  Future<Response<ModelsListGarageModel>> _apiGarageListGet({
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
    return client.send<ModelsListGarageModel, ModelsListGarageModel>($request);
  }

  @override
  Future<Response<ModelsOwnerModelResponse>> _apiOwnerPost(
      {required Object? ownerModel}) {
    final Uri $url = Uri.parse('/api/owner');
    final $body = ownerModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ModelsOwnerModelResponse, ModelsOwnerModelResponse>($request);
  }

  @override
  Future<Response<ModelsOwnerModelResponse>> _apiOwnerIdGet({
    required int? id,
    bool? withVehicles,
  }) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_vehicles': withVehicles
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ModelsOwnerModelResponse, ModelsOwnerModelResponse>($request);
  }

  @override
  Future<Response<ModelsOwnerModelResponse>> _apiOwnerIdPatch({
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
    return client
        .send<ModelsOwnerModelResponse, ModelsOwnerModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiOwnerTotalGet() {
    final Uri $url = Uri.parse('/api/owner/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsOwnerModelResponse>>> _apiOwnerImportPost(
      {required List<ModelsCreateOwnerModel>? ownerModel}) {
    final Uri $url = Uri.parse('/api/owner_import');
    final $body = ownerModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsOwnerModelResponse>,
        ModelsOwnerModelResponse>($request);
  }

  @override
  Future<Response<ModelsListOwnerModel>> _apiOwnerListGet({
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
    return client.send<ModelsListOwnerModel, ModelsListOwnerModel>($request);
  }

  @override
  Future<Response<ModelsPermissionModelResponse>> _apiPermissionPost(
      {required Object? permissionModel}) {
    final Uri $url = Uri.parse('/api/permission');
    final $body = permissionModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsPermissionModelResponse,
        ModelsPermissionModelResponse>($request);
  }

  @override
  Future<Response<ModelsPermissionModelResponse>> _apiPermissionIdGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsPermissionModelResponse,
        ModelsPermissionModelResponse>($request);
  }

  @override
  Future<Response<ModelsPermissionModelResponse>> _apiPermissionIdPatch({
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
    return client.send<ModelsPermissionModelResponse,
        ModelsPermissionModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiPermissionTotalGet() {
    final Uri $url = Uri.parse('/api/permission/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsPermissionModelResponse>>>
      _apiPermissionImportPost(
          {required List<ModelsCreatePermissionModel>? permissionModel}) {
    final Uri $url = Uri.parse('/api/permission_import');
    final $body = permissionModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsPermissionModelResponse>,
        ModelsPermissionModelResponse>($request);
  }

  @override
  Future<Response<ModelsListPermissionModel>> _apiPermissionListGet({
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
    return client
        .send<ModelsListPermissionModel, ModelsListPermissionModel>($request);
  }

  @override
  Future<Response<ModelsSparePartModelResponse>> _apiSparePartPost(
      {required Object? sparePartModel}) {
    final Uri $url = Uri.parse('/api/spare_part');
    final $body = sparePartModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsSparePartModelResponse,
        ModelsSparePartModelResponse>($request);
  }

  @override
  Future<Response<ModelsSparePartModelResponse>> _apiSparePartIdGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsSparePartModelResponse,
        ModelsSparePartModelResponse>($request);
  }

  @override
  Future<Response<ModelsSparePartModelResponse>> _apiSparePartIdPatch({
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
    return client.send<ModelsSparePartModelResponse,
        ModelsSparePartModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiSparePartTotalGet() {
    final Uri $url = Uri.parse('/api/spare_part/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsSparePartModelResponse>>> _apiSparePartImportPost(
      {required List<ModelsCreateSparePartModel>? sparePartModel}) {
    final Uri $url = Uri.parse('/api/spare_part_import');
    final $body = sparePartModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsSparePartModelResponse>,
        ModelsSparePartModelResponse>($request);
  }

  @override
  Future<Response<ModelsListSparePartModel>> _apiSparePartListGet({
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
    return client
        .send<ModelsListSparePartModel, ModelsListSparePartModel>($request);
  }

  @override
  Future<Response<ModelsSupplierModelResponse>> _apiSupplierPost(
      {required Object? supplierModel}) {
    final Uri $url = Uri.parse('/api/supplier');
    final $body = supplierModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsSupplierModelResponse,
        ModelsSupplierModelResponse>($request);
  }

  @override
  Future<Response<ModelsSupplierModelResponse>> _apiSupplierIdGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsSupplierModelResponse,
        ModelsSupplierModelResponse>($request);
  }

  @override
  Future<Response<ModelsSupplierModelResponse>> _apiSupplierIdPatch({
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
    return client.send<ModelsSupplierModelResponse,
        ModelsSupplierModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiSupplierTotalGet() {
    final Uri $url = Uri.parse('/api/supplier/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsSupplierModelResponse>>> _apiSupplierImportPost(
      {required List<ModelsCreateSupplierModel>? supplierModel}) {
    final Uri $url = Uri.parse('/api/supplier_import');
    final $body = supplierModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsSupplierModelResponse>,
        ModelsSupplierModelResponse>($request);
  }

  @override
  Future<Response<ModelsListSupplierModel>> _apiSupplierListGet({
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
    return client
        .send<ModelsListSupplierModel, ModelsListSupplierModel>($request);
  }

  @override
  Future<Response<ModelsTaskModelResponse>> _apiTaskPost(
      {required Object? taskModel}) {
    final Uri $url = Uri.parse('/api/task');
    final $body = taskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ModelsTaskModelResponse, ModelsTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsTaskModelResponse>> _apiTaskIdGet({
    required int? id,
    bool? withSubTasks,
    bool? withVehicleTasks,
  }) {
    final Uri $url = Uri.parse('/api/task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_sub_tasks': withSubTasks,
      'with_vehicle_tasks': withVehicleTasks,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ModelsTaskModelResponse, ModelsTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsTaskModelResponse>> _apiTaskIdPatch({
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
    return client
        .send<ModelsTaskModelResponse, ModelsTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiTaskTotalGet() {
    final Uri $url = Uri.parse('/api/task/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsTaskModelResponse>>> _apiTaskImportPost(
      {required List<ModelsCreateTaskModel>? taskModel}) {
    final Uri $url = Uri.parse('/api/task_import');
    final $body = taskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<ModelsTaskModelResponse>, ModelsTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsListTaskModel>> _apiTaskListGet({
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
    return client.send<ModelsListTaskModel, ModelsListTaskModel>($request);
  }

  @override
  Future<Response<ModelsVehicleModelResponse>> _apiVehiclePost(
      {required Object? vehicleModel}) {
    final Uri $url = Uri.parse('/api/vehicle');
    final $body = vehicleModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ModelsVehicleModelResponse, ModelsVehicleModelResponse>($request);
  }

  @override
  Future<Response<ModelsVehicleModelResponse>> _apiVehicleIdGet({
    required int? id,
    bool? withTasks,
  }) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_tasks': withTasks
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<ModelsVehicleModelResponse, ModelsVehicleModelResponse>($request);
  }

  @override
  Future<Response<ModelsVehicleModelResponse>> _apiVehicleIdPatch({
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
    return client
        .send<ModelsVehicleModelResponse, ModelsVehicleModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiVehicleTotalGet() {
    final Uri $url = Uri.parse('/api/vehicle/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsVehicleModelResponse>>> _apiVehicleImportPost(
      {required List<ModelsCreateVehicleModel>? vehicleModel}) {
    final Uri $url = Uri.parse('/api/vehicle_import');
    final $body = vehicleModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsVehicleModelResponse>,
        ModelsVehicleModelResponse>($request);
  }

  @override
  Future<Response<ModelsListVehicleModel>> _apiVehicleListGet({
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
    return client
        .send<ModelsListVehicleModel, ModelsListVehicleModel>($request);
  }

  @override
  Future<Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskPost(
      {required Object? vehicleTaskModel}) {
    final Uri $url = Uri.parse('/api/vehicle_task');
    final $body = vehicleTaskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsVehicleTaskModelResponse,
        ModelsVehicleTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskIdGet(
      {required int? id}) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsVehicleTaskModelResponse,
        ModelsVehicleTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskIdPatch({
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
    return client.send<ModelsVehicleTaskModelResponse,
        ModelsVehicleTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsTotalCount>> _apiVehicleTaskTotalGet() {
    final Uri $url = Uri.parse('/api/vehicle_task/total');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsTotalCount, ModelsTotalCount>($request);
  }

  @override
  Future<Response<List<ModelsVehicleTaskModelResponse>>>
      _apiVehicleTaskImportPost(
          {required List<ModelsCreateVehicleTaskModel>? vehicleTaskModel}) {
    final Uri $url = Uri.parse('/api/vehicle_task_import');
    final $body = vehicleTaskModel;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<ModelsVehicleTaskModelResponse>,
        ModelsVehicleTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsListVehicleTaskModel>> _apiVehicleTaskListGet({
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
    return client
        .send<ModelsListVehicleTaskModel, ModelsListVehicleTaskModel>($request);
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
