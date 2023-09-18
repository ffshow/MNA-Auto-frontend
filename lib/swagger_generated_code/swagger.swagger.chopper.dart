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
  Future<Response<ModelsAccountModel>> _apiAccountPost(
      {required ModelsCreateAccountModel? account}) {
    final Uri $url = Uri.parse('/api/account');
    final $body = account;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsAccountModel, ModelsAccountModel>($request);
  }

  @override
  Future<Response<ModelsAccountModel>> _apiAccountIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsAccountModel, ModelsAccountModel>($request);
  }

  @override
  Future<Response<ModelsAccountModel>> _apiAccountIdPut({
    required String? id,
    required ModelsAccountModel? account,
  }) {
    final Uri $url = Uri.parse('/api/account/${id}');
    final $body = account;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsAccountModel, ModelsAccountModel>($request);
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
  Future<Response<List<dynamic>>> _apiAccountImportPost(
      {required List<ModelsAccountModel>? account}) {
    final Uri $url = Uri.parse('/api/account_import');
    final $body = account;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
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
  Future<Response<ModelsGarageModel>> _apiGaragePost(
      {required ModelsCreateGarageModel? garage}) {
    final Uri $url = Uri.parse('/api/garage');
    final $body = garage;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsGarageModel, ModelsGarageModel>($request);
  }

  @override
  Future<Response<ModelsGarageModel>> _apiGarageIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsGarageModel, ModelsGarageModel>($request);
  }

  @override
  Future<Response<ModelsGarageModel>> _apiGarageIdPut({
    required String? id,
    required ModelsGarageModel? garage,
  }) {
    final Uri $url = Uri.parse('/api/garage/${id}');
    final $body = garage;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsGarageModel, ModelsGarageModel>($request);
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
  Future<Response<List<dynamic>>> _apiGarageImportPost(
      {required List<ModelsGarageModel>? garage}) {
    final Uri $url = Uri.parse('/api/garage_import');
    final $body = garage;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
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
  Future<Response<ModelsOwnerModel>> _apiOwnerPost(
      {required ModelsCreateOwnerModel? owner}) {
    final Uri $url = Uri.parse('/api/owner');
    final $body = owner;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsOwnerModel, ModelsOwnerModel>($request);
  }

  @override
  Future<Response<ModelsOwnerModel>> _apiOwnerIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsOwnerModel, ModelsOwnerModel>($request);
  }

  @override
  Future<Response<ModelsOwnerModel>> _apiOwnerIdPut({
    required String? id,
    required ModelsOwnerModel? owner,
  }) {
    final Uri $url = Uri.parse('/api/owner/${id}');
    final $body = owner;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsOwnerModel, ModelsOwnerModel>($request);
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
  Future<Response<List<dynamic>>> _apiOwnerImportPost(
      {required List<ModelsOwnerModel>? owner}) {
    final Uri $url = Uri.parse('/api/owner_import');
    final $body = owner;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
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
  Future<Response<ModelsPermissionModel>> _apiPermissionPost(
      {required ModelsCreatePermissionModel? permission}) {
    final Uri $url = Uri.parse('/api/permission');
    final $body = permission;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsPermissionModel, ModelsPermissionModel>($request);
  }

  @override
  Future<Response<ModelsPermissionModel>> _apiPermissionIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsPermissionModel, ModelsPermissionModel>($request);
  }

  @override
  Future<Response<ModelsPermissionModel>> _apiPermissionIdPut({
    required String? id,
    required ModelsPermissionModel? permission,
  }) {
    final Uri $url = Uri.parse('/api/permission/${id}');
    final $body = permission;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsPermissionModel, ModelsPermissionModel>($request);
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
  Future<Response<List<dynamic>>> _apiPermissionImportPost(
      {required List<ModelsPermissionModel>? permission}) {
    final Uri $url = Uri.parse('/api/permission_import');
    final $body = permission;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
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
  Future<Response<ModelsSparePartModel>> _apiSparePartPost(
      {required ModelsCreateSparePartModel? sparePart}) {
    final Uri $url = Uri.parse('/api/spare_part');
    final $body = sparePart;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsSparePartModel, ModelsSparePartModel>($request);
  }

  @override
  Future<Response<ModelsSparePartModel>> _apiSparePartIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsSparePartModel, ModelsSparePartModel>($request);
  }

  @override
  Future<Response<ModelsSparePartModel>> _apiSparePartIdPut({
    required String? id,
    required ModelsSparePartModel? sparePart,
  }) {
    final Uri $url = Uri.parse('/api/spare_part/${id}');
    final $body = sparePart;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsSparePartModel, ModelsSparePartModel>($request);
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
  Future<Response<List<dynamic>>> _apiSparePartImportPost(
      {required List<ModelsSparePartModel>? sparePart}) {
    final Uri $url = Uri.parse('/api/spare_part_import');
    final $body = sparePart;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
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
  Future<Response<ModelsSupplierModel>> _apiSupplierPost(
      {required ModelsCreateSupplierModel? supplier}) {
    final Uri $url = Uri.parse('/api/supplier');
    final $body = supplier;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsSupplierModel, ModelsSupplierModel>($request);
  }

  @override
  Future<Response<ModelsSupplierModel>> _apiSupplierIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsSupplierModel, ModelsSupplierModel>($request);
  }

  @override
  Future<Response<ModelsSupplierModel>> _apiSupplierIdPut({
    required String? id,
    required ModelsSupplierModel? supplier,
  }) {
    final Uri $url = Uri.parse('/api/supplier/${id}');
    final $body = supplier;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsSupplierModel, ModelsSupplierModel>($request);
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
  Future<Response<List<dynamic>>> _apiSupplierImportPost(
      {required List<ModelsSupplierModel>? supplier}) {
    final Uri $url = Uri.parse('/api/supplier_import');
    final $body = supplier;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
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
  Future<Response<ModelsVehicleModel>> _apiVehiclePost(
      {required ModelsCreateVehicleModel? vehicle}) {
    final Uri $url = Uri.parse('/api/vehicle');
    final $body = vehicle;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsVehicleModel, ModelsVehicleModel>($request);
  }

  @override
  Future<Response<ModelsVehicleModel>> _apiVehicleIdGet({required String? id}) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ModelsVehicleModel, ModelsVehicleModel>($request);
  }

  @override
  Future<Response<ModelsVehicleModel>> _apiVehicleIdPut({
    required String? id,
    required ModelsVehicleModel? vehicle,
  }) {
    final Uri $url = Uri.parse('/api/vehicle/${id}');
    final $body = vehicle;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ModelsVehicleModel, ModelsVehicleModel>($request);
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
  Future<Response<List<dynamic>>> _apiVehicleImportPost(
      {required List<ModelsVehicleModel>? vehicle}) {
    final Uri $url = Uri.parse('/api/vehicle_import');
    final $body = vehicle;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<List<dynamic>, List<dynamic>>($request);
  }

  @override
  Future<Response<ModelsListVehicleModel>> _apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    final Uri $url = Uri.parse('/api/vehicle_list');
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
        .send<ModelsListVehicleModel, ModelsListVehicleModel>($request);
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
