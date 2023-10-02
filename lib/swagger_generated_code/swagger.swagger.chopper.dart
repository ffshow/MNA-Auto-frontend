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
      {required Object? account}) {
    final Uri $url = Uri.parse('/api/account');
    final $body = account;
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
      {required String? id}) {
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
  Future<Response<ModelsAccountModelResponse>> _apiAccountIdPut({
    required String? id,
    required Object? account,
  }) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final $body = account;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateAccountModel>? account}) {
    final Uri $url = Uri.parse('/api/account_import');
    final $body = account;
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
      {required Object? employee}) {
    final Uri $url = Uri.parse('/api/employee');
    final $body = employee;
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
  Future<Response<ModelsEmployeeModelResponse>> _apiEmployeeIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/employee/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsEmployeeModelResponse,
        ModelsEmployeeModelResponse>($request);
  }

  @override
  Future<Response<ModelsEmployeeModelResponse>> _apiEmployeeIdPut({
    required String? id,
    required Object? employee,
  }) {
    final Uri $url = Uri.parse('/api/employee/${id}');
    final $body = employee;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateEmployeeModel>? employee}) {
    final Uri $url = Uri.parse('/api/employee_import');
    final $body = employee;
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
  }) {
    final Uri $url = Uri.parse('/api/employee_list');
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
        .send<ModelsListEmployeeModel, ModelsListEmployeeModel>($request);
  }

  @override
  Future<Response<ModelsGarageModelResponse>> _apiGaragePost(
      {required Object? garage}) {
    final Uri $url = Uri.parse('/api/garage');
    final $body = garage;
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
      {required String? id}) {
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
  Future<Response<ModelsGarageModelResponse>> _apiGarageIdPut({
    required String? id,
    required Object? garage,
  }) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final $body = garage;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateGarageModel>? garage}) {
    final Uri $url = Uri.parse('/api/garage_import');
    final $body = garage;
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
      {required Object? owner}) {
    final Uri $url = Uri.parse('/api/owner');
    final $body = owner;
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
  Future<Response<ModelsOwnerModelResponse>> _apiOwnerIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ModelsOwnerModelResponse, ModelsOwnerModelResponse>($request);
  }

  @override
  Future<Response<ModelsOwnerModelResponse>> _apiOwnerIdPut({
    required String? id,
    required Object? owner,
  }) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final $body = owner;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateOwnerModel>? owner}) {
    final Uri $url = Uri.parse('/api/owner_import');
    final $body = owner;
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
  }) {
    final Uri $url = Uri.parse('/api/owner_list');
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
    return client.send<ModelsListOwnerModel, ModelsListOwnerModel>($request);
  }

  @override
  Future<Response<ModelsPermissionModelResponse>> _apiPermissionPost(
      {required Object? permission}) {
    final Uri $url = Uri.parse('/api/permission');
    final $body = permission;
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
      {required String? id}) {
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
  Future<Response<ModelsPermissionModelResponse>> _apiPermissionIdPut({
    required String? id,
    required Object? permission,
  }) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final $body = permission;
    final Request $request = Request(
      'PUT',
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
          {required List<ModelsCreatePermissionModel>? permission}) {
    final Uri $url = Uri.parse('/api/permission_import');
    final $body = permission;
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
      {required Object? sparePart}) {
    final Uri $url = Uri.parse('/api/spare_part');
    final $body = sparePart;
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
      {required String? id}) {
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
  Future<Response<ModelsSparePartModelResponse>> _apiSparePartIdPut({
    required String? id,
    required Object? sparePart,
  }) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final $body = sparePart;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateSparePartModel>? sparePart}) {
    final Uri $url = Uri.parse('/api/spare_part_import');
    final $body = sparePart;
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
      {required Object? supplier}) {
    final Uri $url = Uri.parse('/api/supplier');
    final $body = supplier;
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
      {required String? id}) {
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
  Future<Response<ModelsSupplierModelResponse>> _apiSupplierIdPut({
    required String? id,
    required Object? supplier,
  }) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final $body = supplier;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateSupplierModel>? supplier}) {
    final Uri $url = Uri.parse('/api/supplier_import');
    final $body = supplier;
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
      {required Object? task}) {
    final Uri $url = Uri.parse('/api/task');
    final $body = task;
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
    required String? id,
    bool? withSubTasks,
    bool? withSubTasksSubTasks,
  }) {
    final Uri $url = Uri.parse('/api/task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_sub_tasks': withSubTasks,
      'with_sub_tasks_sub_tasks': withSubTasksSubTasks,
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
  Future<Response<ModelsTaskModelResponse>> _apiTaskIdPut({
    required String? id,
    required Object? task,
  }) {
    final Uri $url = Uri.parse('/api/task/${id}');
    final $body = task;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateTaskModel>? task}) {
    final Uri $url = Uri.parse('/api/task_import');
    final $body = task;
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
    bool? withSubTasksSubTasks,
  }) {
    final Uri $url = Uri.parse('/api/task_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_sub_tasks': withSubTasks,
      'with_sub_tasks_sub_tasks': withSubTasksSubTasks,
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
      {required Object? vehicle}) {
    final Uri $url = Uri.parse('/api/vehicle');
    final $body = vehicle;
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
    required String? id,
    bool? withOwner,
    bool? withVehicleTask,
    bool? withVehicleTaskEmployee,
    bool? withVehicleTaskTask,
    bool? withVehicleTaskVehicle,
    bool? withCreatedBy,
  }) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_owner': withOwner,
      'with_vehicle_task': withVehicleTask,
      'with_vehicle_task_employee': withVehicleTaskEmployee,
      'with_vehicle_task_task': withVehicleTaskTask,
      'with_vehicle_task_vehicle': withVehicleTaskVehicle,
      'with_created_by': withCreatedBy,
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
  Future<Response<ModelsVehicleModelResponse>> _apiVehicleIdPut({
    required String? id,
    required Object? vehicle,
  }) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final $body = vehicle;
    final Request $request = Request(
      'PUT',
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
      {required List<ModelsCreateVehicleModel>? vehicle}) {
    final Uri $url = Uri.parse('/api/vehicle_import');
    final $body = vehicle;
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
    bool? withOwner,
    bool? withVehicleTask,
    bool? withVehicleTaskEmployee,
    bool? withVehicleTaskTask,
    bool? withVehicleTaskVehicle,
    bool? withCreatedBy,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_owner': withOwner,
      'with_vehicle_task': withVehicleTask,
      'with_vehicle_task_employee': withVehicleTaskEmployee,
      'with_vehicle_task_task': withVehicleTaskTask,
      'with_vehicle_task_vehicle': withVehicleTaskVehicle,
      'with_created_by': withCreatedBy,
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
      {required Object? vehicleTask}) {
    final Uri $url = Uri.parse('/api/vehicle_task');
    final $body = vehicleTask;
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
  Future<Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskIdGet({
    required String? id,
    bool? withEmployee,
    bool? withTask,
    bool? withTaskSubTasks,
    bool? withVehicle,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_employee': withEmployee,
      'with_task': withTask,
      'with_task_sub_tasks': withTaskSubTasks,
      'with_vehicle': withVehicle,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ModelsVehicleTaskModelResponse,
        ModelsVehicleTaskModelResponse>($request);
  }

  @override
  Future<Response<ModelsVehicleTaskModelResponse>> _apiVehicleTaskIdPut({
    required String? id,
    required Object? vehicleTask,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task/${id}');
    final $body = vehicleTask;
    final Request $request = Request(
      'PUT',
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
          {required List<ModelsCreateVehicleTaskModel>? vehicleTask}) {
    final Uri $url = Uri.parse('/api/vehicle_task_import');
    final $body = vehicleTask;
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
    bool? withEmployee,
    bool? withTask,
    bool? withTaskSubTasks,
    bool? withVehicle,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_task_list');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'per_page': perPage,
      'sort_by': sortBy,
      'descending': descending,
      'with_employee': withEmployee,
      'with_task': withTask,
      'with_task_sub_tasks': withTaskSubTasks,
      'with_vehicle': withVehicle,
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
