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
  ///@param account Register account
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountPost(
      {required ModelsCreateAccountModel? account}) {
    generatedMapping.putIfAbsent(ModelsCreateAccountModel,
        () => ModelsCreateAccountModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountPost(account: account);
  }

  ///Create a new account
  ///@param account Register account
  @Post(path: '/api/account')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountPost(
      {@Body() required ModelsCreateAccountModel? account});

  ///Get account by ID
  ///@param id Account ID
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountIdGet(id: id);
  }

  ///Get account by ID
  ///@param id Account ID
  @Get(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountIdGet(
      {@Path('id') required String? id});

  ///Update a account
  ///@param id Account ID
  ///@param account Register account
  Future<chopper.Response<ModelsAccountModelResponse>> apiAccountIdPut({
    required String? id,
    required ModelsUpdateAccountModel? account,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateAccountModel,
        () => ModelsUpdateAccountModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsAccountModelResponse,
        () => ModelsAccountModelResponse.fromJsonFactory);

    return _apiAccountIdPut(id: id, account: account);
  }

  ///Update a account
  ///@param id Account ID
  ///@param account Register account
  @Put(path: '/api/account/{id}')
  Future<chopper.Response<ModelsAccountModelResponse>> _apiAccountIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdateAccountModel? account,
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
  ///@param account Register account
  Future<chopper.Response<List<dynamic>>> apiAccountImportPost(
      {required List<ModelsCreateAccountModel>? account}) {
    return _apiAccountImportPost(account: account);
  }

  ///Create many account
  ///@param account Register account
  @Post(path: '/api/account_import')
  Future<chopper.Response<List<dynamic>>> _apiAccountImportPost(
      {@Body() required List<ModelsCreateAccountModel>? account});

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

  ///Create a new garage
  ///@param garage Register garage
  Future<chopper.Response<ModelsGarageModelResponse>> apiGaragePost(
      {required ModelsCreateGarageModel? garage}) {
    generatedMapping.putIfAbsent(
        ModelsCreateGarageModel, () => ModelsCreateGarageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGaragePost(garage: garage);
  }

  ///Create a new garage
  ///@param garage Register garage
  @Post(path: '/api/garage')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGaragePost(
      {@Body() required ModelsCreateGarageModel? garage});

  ///Get garage by ID
  ///@param id Garage ID
  Future<chopper.Response<ModelsGarageModelResponse>> apiGarageIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageIdGet(id: id);
  }

  ///Get garage by ID
  ///@param id Garage ID
  @Get(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGarageIdGet(
      {@Path('id') required String? id});

  ///Update a garage
  ///@param id Garage ID
  ///@param garage Register garage
  Future<chopper.Response<ModelsGarageModelResponse>> apiGarageIdPut({
    required String? id,
    required ModelsUpdateGarageModel? garage,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateGarageModel, () => ModelsUpdateGarageModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsGarageModelResponse,
        () => ModelsGarageModelResponse.fromJsonFactory);

    return _apiGarageIdPut(id: id, garage: garage);
  }

  ///Update a garage
  ///@param id Garage ID
  ///@param garage Register garage
  @Put(path: '/api/garage/{id}')
  Future<chopper.Response<ModelsGarageModelResponse>> _apiGarageIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdateGarageModel? garage,
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
  ///@param garage Register garage
  Future<chopper.Response<List<dynamic>>> apiGarageImportPost(
      {required List<ModelsCreateGarageModel>? garage}) {
    return _apiGarageImportPost(garage: garage);
  }

  ///Create many garage
  ///@param garage Register garage
  @Post(path: '/api/garage_import')
  Future<chopper.Response<List<dynamic>>> _apiGarageImportPost(
      {@Body() required List<ModelsCreateGarageModel>? garage});

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
  ///@param owner Register owner
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerPost(
      {required ModelsCreateOwnerModel? owner}) {
    generatedMapping.putIfAbsent(
        ModelsCreateOwnerModel, () => ModelsCreateOwnerModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerPost(owner: owner);
  }

  ///Create a new owner
  ///@param owner Register owner
  @Post(path: '/api/owner')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerPost(
      {@Body() required ModelsCreateOwnerModel? owner});

  ///Get owner by ID
  ///@param id Owner ID
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerIdGet(id: id);
  }

  ///Get owner by ID
  ///@param id Owner ID
  @Get(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerIdGet(
      {@Path('id') required String? id});

  ///Update a owner
  ///@param id Owner ID
  ///@param owner Register owner
  Future<chopper.Response<ModelsOwnerModelResponse>> apiOwnerIdPut({
    required String? id,
    required ModelsUpdateOwnerModel? owner,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateOwnerModel, () => ModelsUpdateOwnerModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsOwnerModelResponse,
        () => ModelsOwnerModelResponse.fromJsonFactory);

    return _apiOwnerIdPut(id: id, owner: owner);
  }

  ///Update a owner
  ///@param id Owner ID
  ///@param owner Register owner
  @Put(path: '/api/owner/{id}')
  Future<chopper.Response<ModelsOwnerModelResponse>> _apiOwnerIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdateOwnerModel? owner,
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
  ///@param owner Register owner
  Future<chopper.Response<List<dynamic>>> apiOwnerImportPost(
      {required List<ModelsCreateOwnerModel>? owner}) {
    return _apiOwnerImportPost(owner: owner);
  }

  ///Create many owner
  ///@param owner Register owner
  @Post(path: '/api/owner_import')
  Future<chopper.Response<List<dynamic>>> _apiOwnerImportPost(
      {@Body() required List<ModelsCreateOwnerModel>? owner});

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListOwnerModel>> apiOwnerListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListOwnerModel, () => ModelsListOwnerModel.fromJsonFactory);

    return _apiOwnerListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List owner
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/owner_list')
  Future<chopper.Response<ModelsListOwnerModel>> _apiOwnerListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new permission
  ///@param permission Register permission
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionPost(
      {required ModelsCreatePermissionModel? permission}) {
    generatedMapping.putIfAbsent(ModelsCreatePermissionModel,
        () => ModelsCreatePermissionModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionPost(permission: permission);
  }

  ///Create a new permission
  ///@param permission Register permission
  @Post(path: '/api/permission')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionPost(
      {@Body() required ModelsCreatePermissionModel? permission});

  ///Get permission by ID
  ///@param id Permission ID
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionIdGet(id: id);
  }

  ///Get permission by ID
  ///@param id Permission ID
  @Get(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionIdGet(
      {@Path('id') required String? id});

  ///Update a permission
  ///@param id Permission ID
  ///@param permission Register permission
  Future<chopper.Response<ModelsPermissionModelResponse>> apiPermissionIdPut({
    required String? id,
    required ModelsUpdatePermissionModel? permission,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdatePermissionModel,
        () => ModelsUpdatePermissionModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsPermissionModelResponse,
        () => ModelsPermissionModelResponse.fromJsonFactory);

    return _apiPermissionIdPut(id: id, permission: permission);
  }

  ///Update a permission
  ///@param id Permission ID
  ///@param permission Register permission
  @Put(path: '/api/permission/{id}')
  Future<chopper.Response<ModelsPermissionModelResponse>> _apiPermissionIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdatePermissionModel? permission,
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
  ///@param permission Register permission
  Future<chopper.Response<List<dynamic>>> apiPermissionImportPost(
      {required List<ModelsCreatePermissionModel>? permission}) {
    return _apiPermissionImportPost(permission: permission);
  }

  ///Create many permission
  ///@param permission Register permission
  @Post(path: '/api/permission_import')
  Future<chopper.Response<List<dynamic>>> _apiPermissionImportPost(
      {@Body() required List<ModelsCreatePermissionModel>? permission});

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
  ///@param spare_part Register spare_part
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartPost(
      {required ModelsCreateSparePartModel? sparePart}) {
    generatedMapping.putIfAbsent(ModelsCreateSparePartModel,
        () => ModelsCreateSparePartModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartPost(sparePart: sparePart);
  }

  ///Create a new spare_part
  ///@param spare_part Register spare_part
  @Post(path: '/api/spare_part')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartPost(
      {@Body() required ModelsCreateSparePartModel? sparePart});

  ///Get spare_part by ID
  ///@param id SparePart ID
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartIdGet(id: id);
  }

  ///Get spare_part by ID
  ///@param id SparePart ID
  @Get(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartIdGet(
      {@Path('id') required String? id});

  ///Update a spare_part
  ///@param id SparePart ID
  ///@param spare_part Register spare_part
  Future<chopper.Response<ModelsSparePartModelResponse>> apiSparePartIdPut({
    required String? id,
    required ModelsUpdateSparePartModel? sparePart,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateSparePartModel,
        () => ModelsUpdateSparePartModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSparePartModelResponse,
        () => ModelsSparePartModelResponse.fromJsonFactory);

    return _apiSparePartIdPut(id: id, sparePart: sparePart);
  }

  ///Update a spare_part
  ///@param id SparePart ID
  ///@param spare_part Register spare_part
  @Put(path: '/api/spare_part/{id}')
  Future<chopper.Response<ModelsSparePartModelResponse>> _apiSparePartIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdateSparePartModel? sparePart,
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
  ///@param spare_part Register spare_part
  Future<chopper.Response<List<dynamic>>> apiSparePartImportPost(
      {required List<ModelsCreateSparePartModel>? sparePart}) {
    return _apiSparePartImportPost(sparePart: sparePart);
  }

  ///Create many spare_part
  ///@param spare_part Register spare_part
  @Post(path: '/api/spare_part_import')
  Future<chopper.Response<List<dynamic>>> _apiSparePartImportPost(
      {@Body() required List<ModelsCreateSparePartModel>? sparePart});

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
  ///@param supplier Register supplier
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierPost(
      {required ModelsCreateSupplierModel? supplier}) {
    generatedMapping.putIfAbsent(ModelsCreateSupplierModel,
        () => ModelsCreateSupplierModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierPost(supplier: supplier);
  }

  ///Create a new supplier
  ///@param supplier Register supplier
  @Post(path: '/api/supplier')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierPost(
      {@Body() required ModelsCreateSupplierModel? supplier});

  ///Get supplier by ID
  ///@param id Supplier ID
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierIdGet(id: id);
  }

  ///Get supplier by ID
  ///@param id Supplier ID
  @Get(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierIdGet(
      {@Path('id') required String? id});

  ///Update a supplier
  ///@param id Supplier ID
  ///@param supplier Register supplier
  Future<chopper.Response<ModelsSupplierModelResponse>> apiSupplierIdPut({
    required String? id,
    required ModelsUpdateSupplierModel? supplier,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateSupplierModel,
        () => ModelsUpdateSupplierModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsSupplierModelResponse,
        () => ModelsSupplierModelResponse.fromJsonFactory);

    return _apiSupplierIdPut(id: id, supplier: supplier);
  }

  ///Update a supplier
  ///@param id Supplier ID
  ///@param supplier Register supplier
  @Put(path: '/api/supplier/{id}')
  Future<chopper.Response<ModelsSupplierModelResponse>> _apiSupplierIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdateSupplierModel? supplier,
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
  ///@param supplier Register supplier
  Future<chopper.Response<List<dynamic>>> apiSupplierImportPost(
      {required List<ModelsCreateSupplierModel>? supplier}) {
    return _apiSupplierImportPost(supplier: supplier);
  }

  ///Create many supplier
  ///@param supplier Register supplier
  @Post(path: '/api/supplier_import')
  Future<chopper.Response<List<dynamic>>> _apiSupplierImportPost(
      {@Body() required List<ModelsCreateSupplierModel>? supplier});

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
  ///@param task Register task
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskPost(
      {required ModelsCreateTaskModel? task}) {
    generatedMapping.putIfAbsent(
        ModelsCreateTaskModel, () => ModelsCreateTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskPost(task: task);
  }

  ///Create a new task
  ///@param task Register task
  @Post(path: '/api/task')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskPost(
      {@Body() required ModelsCreateTaskModel? task});

  ///Get task by ID
  ///@param id Task ID
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskIdGet(id: id);
  }

  ///Get task by ID
  ///@param id Task ID
  @Get(path: '/api/task/{id}')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskIdGet(
      {@Path('id') required String? id});

  ///Update a task
  ///@param id Task ID
  ///@param task Register task
  Future<chopper.Response<ModelsTaskModelResponse>> apiTaskIdPut({
    required String? id,
    required ModelsUpdateTaskModel? task,
  }) {
    generatedMapping.putIfAbsent(
        ModelsUpdateTaskModel, () => ModelsUpdateTaskModel.fromJsonFactory);
    generatedMapping.putIfAbsent(
        ModelsTaskModelResponse, () => ModelsTaskModelResponse.fromJsonFactory);

    return _apiTaskIdPut(id: id, task: task);
  }

  ///Update a task
  ///@param id Task ID
  ///@param task Register task
  @Put(path: '/api/task/{id}')
  Future<chopper.Response<ModelsTaskModelResponse>> _apiTaskIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdateTaskModel? task,
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
  ///@param task Register task
  Future<chopper.Response<List<dynamic>>> apiTaskImportPost(
      {required List<ModelsCreateTaskModel>? task}) {
    return _apiTaskImportPost(task: task);
  }

  ///Create many task
  ///@param task Register task
  @Post(path: '/api/task_import')
  Future<chopper.Response<List<dynamic>>> _apiTaskImportPost(
      {@Body() required List<ModelsCreateTaskModel>? task});

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  Future<chopper.Response<ModelsListTaskModel>> apiTaskListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListTaskModel, () => ModelsListTaskModel.fromJsonFactory);

    return _apiTaskListGet(
        page: page, perPage: perPage, sortBy: sortBy, descending: descending);
  }

  ///List task
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  @Get(path: '/api/task_list')
  Future<chopper.Response<ModelsListTaskModel>> _apiTaskListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
  });

  ///Create a new vehicle
  ///@param vehicle Register vehicle
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehiclePost(
      {required ModelsCreateVehicleModel? vehicle}) {
    generatedMapping.putIfAbsent(ModelsCreateVehicleModel,
        () => ModelsCreateVehicleModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehiclePost(vehicle: vehicle);
  }

  ///Create a new vehicle
  ///@param vehicle Register vehicle
  @Post(path: '/api/vehicle')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehiclePost(
      {@Body() required ModelsCreateVehicleModel? vehicle});

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param owner with owner data
  ///@param task with task data
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehicleIdGet({
    required String? id,
    bool? owner,
    bool? task,
  }) {
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleIdGet(id: id, owner: owner, task: task);
  }

  ///Get vehicle by ID
  ///@param id Vehicle ID
  ///@param owner with owner data
  ///@param task with task data
  @Get(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehicleIdGet({
    @Path('id') required String? id,
    @Query('owner') bool? owner,
    @Query('task') bool? task,
  });

  ///Update a vehicle
  ///@param id Vehicle ID
  ///@param vehicle Register vehicle
  Future<chopper.Response<ModelsVehicleModelResponse>> apiVehicleIdPut({
    required String? id,
    required ModelsUpdateVehicleModel? vehicle,
  }) {
    generatedMapping.putIfAbsent(ModelsUpdateVehicleModel,
        () => ModelsUpdateVehicleModel.fromJsonFactory);
    generatedMapping.putIfAbsent(ModelsVehicleModelResponse,
        () => ModelsVehicleModelResponse.fromJsonFactory);

    return _apiVehicleIdPut(id: id, vehicle: vehicle);
  }

  ///Update a vehicle
  ///@param id Vehicle ID
  ///@param vehicle Register vehicle
  @Put(path: '/api/vehicle/{id}')
  Future<chopper.Response<ModelsVehicleModelResponse>> _apiVehicleIdPut({
    @Path('id') required String? id,
    @Body() required ModelsUpdateVehicleModel? vehicle,
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
  ///@param vehicle Register vehicle
  Future<chopper.Response<List<dynamic>>> apiVehicleImportPost(
      {required List<ModelsCreateVehicleModel>? vehicle}) {
    return _apiVehicleImportPost(vehicle: vehicle);
  }

  ///Create many vehicle
  ///@param vehicle Register vehicle
  @Post(path: '/api/vehicle_import')
  Future<chopper.Response<List<dynamic>>> _apiVehicleImportPost(
      {@Body() required List<ModelsCreateVehicleModel>? vehicle});

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param owner with owner data
  ///@param task with task data
  Future<chopper.Response<ModelsListVehicleModel>> apiVehicleListGet({
    int? page,
    int? perPage,
    String? sortBy,
    bool? descending,
    bool? owner,
    bool? task,
  }) {
    generatedMapping.putIfAbsent(
        ModelsListVehicleModel, () => ModelsListVehicleModel.fromJsonFactory);

    return _apiVehicleListGet(
        page: page,
        perPage: perPage,
        sortBy: sortBy,
        descending: descending,
        owner: owner,
        task: task);
  }

  ///List vehicle
  ///@param page page
  ///@param per_page page size
  ///@param sort_by sort field
  ///@param descending order
  ///@param owner with owner data
  ///@param task with task data
  @Get(path: '/api/vehicle_list')
  Future<chopper.Response<ModelsListVehicleModel>> _apiVehicleListGet({
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('sort_by') String? sortBy,
    @Query('descending') bool? descending,
    @Query('owner') bool? owner,
    @Query('task') bool? task,
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
