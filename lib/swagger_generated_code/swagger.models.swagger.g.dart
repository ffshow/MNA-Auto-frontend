// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GormDeletedAt _$GormDeletedAtFromJson(Map<String, dynamic> json) =>
    GormDeletedAt(
      time: json['time'] as String?,
      valid: json['valid'] as bool?,
    );

Map<String, dynamic> _$GormDeletedAtToJson(GormDeletedAt instance) =>
    <String, dynamic>{
      'time': instance.time,
      'valid': instance.valid,
    };

ModelsAccountModelResponse _$ModelsAccountModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsAccountModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsAccountModelResponseToJson(
        ModelsAccountModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsCreateAccountModel _$ModelsCreateAccountModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateAccountModel(
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsCreateAccountModelToJson(
        ModelsCreateAccountModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
    };

ModelsCreateEmployeeModel _$ModelsCreateEmployeeModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateEmployeeModel(
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => ModelsCreateVehicleTaskModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsCreateVehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsCreateVehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsCreateEmployeeModelToJson(
        ModelsCreateEmployeeModel instance) =>
    <String, dynamic>{
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'name': instance.name,
    };

ModelsCreateGarageModel _$ModelsCreateGarageModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateGarageModel(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$ModelsCreateGarageModelToJson(
        ModelsCreateGarageModel instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

ModelsCreateOwnerModel _$ModelsCreateOwnerModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateOwnerModel(
      address: json['address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsCreateVehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsCreateOwnerModelToJson(
        ModelsCreateOwnerModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

ModelsCreatePermissionModel _$ModelsCreatePermissionModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreatePermissionModel(
      available: json['available'] as bool?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$ModelsCreatePermissionModelToJson(
        ModelsCreatePermissionModel instance) =>
    <String, dynamic>{
      'available': instance.available,
      'label': instance.label,
    };

ModelsCreateSparePartModel _$ModelsCreateSparePartModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateSparePartModel(
      barcode: json['barcode'] as String?,
      reference: json['reference'] as String?,
    );

Map<String, dynamic> _$ModelsCreateSparePartModelToJson(
        ModelsCreateSparePartModel instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'reference': instance.reference,
    };

ModelsCreateSupplierModel _$ModelsCreateSupplierModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateSupplierModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsCreateSupplierModelToJson(
        ModelsCreateSupplierModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ModelsCreateTaskModel _$ModelsCreateTaskModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateTaskModel(
      label: json['label'] as String?,
      parentTaskId: json['parent_task_id'] as int?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsCreateTaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => ModelsCreateVehicleTaskModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsCreateTaskModelToJson(
        ModelsCreateTaskModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'parent_task_id': instance.parentTaskId,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

ModelsCreateVehicleModel _$ModelsCreateVehicleModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateVehicleModel(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      commercialName: json['commercial_name'] as String?,
      createdById: json['created_by_id'] as int?,
      deletedById: json['deleted_by_id'] as int?,
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => ModelsCreateVehicleTaskModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsCreateVehicleModelToJson(
        ModelsCreateVehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate?.toIso8601String(),
      'commercial_name': instance.commercialName,
      'created_by_id': instance.createdById,
      'deleted_by_id': instance.deletedById,
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation?.toIso8601String(),
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.ownerId,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt?.toIso8601String(),
      'tasks': instance.tasks?.map((e) => e.toJson()).toList(),
    };

ModelsCreateVehicleTaskModel _$ModelsCreateVehicleTaskModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateVehicleTaskModel(
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      finishdedAt: json['finishded_at'] == null
          ? null
          : DateTime.parse(json['finishded_at'] as String),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      tasksId: json['tasks_id'] as int?,
      vehiclesId: json['vehicles_id'] as int?,
    );

Map<String, dynamic> _$ModelsCreateVehicleTaskModelToJson(
        ModelsCreateVehicleTaskModel instance) =>
    <String, dynamic>{
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
      'tasks_id': instance.tasksId,
      'vehicles_id': instance.vehiclesId,
    };

ModelsEmployeeModel _$ModelsEmployeeModelFromJson(Map<String, dynamic> json) =>
    ModelsEmployeeModel(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsVehicleTaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map(
                  (e) => ModelsVehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map(
                  (e) => ModelsVehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsEmployeeModelToJson(
        ModelsEmployeeModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsEmployeeModelResponse _$ModelsEmployeeModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsEmployeeModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleTaskModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsEmployeeModelResponseToJson(
        ModelsEmployeeModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsGarageModelResponse _$ModelsGarageModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsGarageModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsGarageModelResponseToJson(
        ModelsGarageModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsListAccountModel _$ModelsListAccountModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListAccountModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ModelsAccountModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListAccountModelToJson(
        ModelsListAccountModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListEmployeeModel _$ModelsListEmployeeModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListEmployeeModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ModelsEmployeeModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListEmployeeModelToJson(
        ModelsListEmployeeModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListGarageModel _$ModelsListGarageModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListGarageModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsGarageModelResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListGarageModelToJson(
        ModelsListGarageModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListOwnerModel _$ModelsListOwnerModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListOwnerModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsOwnerModelResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListOwnerModelToJson(
        ModelsListOwnerModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListPermissionModel _$ModelsListPermissionModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListPermissionModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ModelsPermissionModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListPermissionModelToJson(
        ModelsListPermissionModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListSparePartModel _$ModelsListSparePartModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListSparePartModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ModelsSparePartModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListSparePartModelToJson(
        ModelsListSparePartModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListSupplierModel _$ModelsListSupplierModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListSupplierModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ModelsSupplierModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListSupplierModelToJson(
        ModelsListSupplierModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListTaskModel _$ModelsListTaskModelFromJson(Map<String, dynamic> json) =>
    ModelsListTaskModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsTaskModelResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListTaskModelToJson(
        ModelsListTaskModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListVehicleModel _$ModelsListVehicleModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListVehicleModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListVehicleModelToJson(
        ModelsListVehicleModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsListVehicleTaskModel _$ModelsListVehicleTaskModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListVehicleTaskModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleTaskModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ModelsListVehicleTaskModelToJson(
        ModelsListVehicleTaskModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsOwnerModel _$ModelsOwnerModelFromJson(Map<String, dynamic> json) =>
    ModelsOwnerModel(
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map(
                  (e) => ModelsVehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsOwnerModelToJson(ModelsOwnerModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

ModelsOwnerModelResponse _$ModelsOwnerModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsOwnerModelResponse(
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsOwnerModelResponseToJson(
        ModelsOwnerModelResponse instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

ModelsPermissionModelResponse _$ModelsPermissionModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsPermissionModelResponse(
      available: json['available'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsPermissionModelResponseToJson(
        ModelsPermissionModelResponse instance) =>
    <String, dynamic>{
      'available': instance.available,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsSparePartModelResponse _$ModelsSparePartModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsSparePartModelResponse(
      barcode: json['barcode'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      reference: json['reference'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsSparePartModelResponseToJson(
        ModelsSparePartModelResponse instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'reference': instance.reference,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsSupplierModelResponse _$ModelsSupplierModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsSupplierModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsSupplierModelResponseToJson(
        ModelsSupplierModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsTaskModel _$ModelsTaskModelFromJson(Map<String, dynamic> json) =>
    ModelsTaskModel(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      label: json['label'] as String?,
      parentTaskId: json['parent_task_id'] as int?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => ModelsTaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsVehicleTaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsTaskModelToJson(ModelsTaskModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'label': instance.label,
      'parent_task_id': instance.parentTaskId,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

ModelsTaskModelResponse _$ModelsTaskModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsTaskModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      label: json['label'] as String?,
      parentTask: json['parent_task'] == null
          ? null
          : ModelsTaskModel.fromJson(
              json['parent_task'] as Map<String, dynamic>),
      parentTaskId: json['parent_task_id'] as int?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsTaskModelResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleTaskModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsTaskModelResponseToJson(
        ModelsTaskModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'label': instance.label,
      'parent_task': instance.parentTask?.toJson(),
      'parent_task_id': instance.parentTaskId,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

ModelsTotalCount _$ModelsTotalCountFromJson(Map<String, dynamic> json) =>
    ModelsTotalCount(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$ModelsTotalCountToJson(ModelsTotalCount instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

ModelsUpdateAccountModel _$ModelsUpdateAccountModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateAccountModel(
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateAccountModelToJson(
        ModelsUpdateAccountModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
    };

ModelsUpdateEmployeeModel _$ModelsUpdateEmployeeModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateEmployeeModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateEmployeeModelToJson(
        ModelsUpdateEmployeeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ModelsUpdateGarageModel _$ModelsUpdateGarageModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateGarageModel(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateGarageModelToJson(
        ModelsUpdateGarageModel instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

ModelsUpdateOwnerModel _$ModelsUpdateOwnerModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateOwnerModel(
      address: json['address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateOwnerModelToJson(
        ModelsUpdateOwnerModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
    };

ModelsUpdatePermissionModel _$ModelsUpdatePermissionModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdatePermissionModel(
      available: json['available'] as bool?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$ModelsUpdatePermissionModelToJson(
        ModelsUpdatePermissionModel instance) =>
    <String, dynamic>{
      'available': instance.available,
      'label': instance.label,
    };

ModelsUpdateSparePartModel _$ModelsUpdateSparePartModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateSparePartModel(
      barcode: json['barcode'] as String?,
      reference: json['reference'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateSparePartModelToJson(
        ModelsUpdateSparePartModel instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'reference': instance.reference,
    };

ModelsUpdateSupplierModel _$ModelsUpdateSupplierModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateSupplierModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateSupplierModelToJson(
        ModelsUpdateSupplierModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ModelsUpdateTaskModel _$ModelsUpdateTaskModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateTaskModel(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateTaskModelToJson(
        ModelsUpdateTaskModel instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

ModelsUpdateVehicleModel _$ModelsUpdateVehicleModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateVehicleModel(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      commercialName: json['commercial_name'] as String?,
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
    );

Map<String, dynamic> _$ModelsUpdateVehicleModelToJson(
        ModelsUpdateVehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate?.toIso8601String(),
      'commercial_name': instance.commercialName,
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation?.toIso8601String(),
      'mileage': instance.mileage,
      'note': instance.note,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt?.toIso8601String(),
    };

ModelsUpdateVehicleTaskModel _$ModelsUpdateVehicleTaskModelFromJson(
        Map<String, dynamic> json) =>
    ModelsUpdateVehicleTaskModel(
      deleted: json['deleted'] as bool?,
      finishdedAt: json['finishded_at'] == null
          ? null
          : DateTime.parse(json['finishded_at'] as String),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
    );

Map<String, dynamic> _$ModelsUpdateVehicleTaskModelToJson(
        ModelsUpdateVehicleTaskModel instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
    };

ModelsVehicleModel _$ModelsVehicleModelFromJson(Map<String, dynamic> json) =>
    ModelsVehicleModel(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      commercialName: json['commercial_name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      id: json['id'] as int?,
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsVehicleTaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsVehicleModelToJson(ModelsVehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate?.toIso8601String(),
      'commercial_name': instance.commercialName,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by_id': instance.deletedById,
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation?.toIso8601String(),
      'id': instance.id,
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.ownerId,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt?.toIso8601String(),
      'tasks': instance.tasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsVehicleModelResponse _$ModelsVehicleModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsVehicleModelResponse(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      commercialName: json['commercial_name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : ModelsEmployeeModel.fromJson(
              json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : ModelsEmployeeModel.fromJson(
              json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      id: json['id'] as int?,
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      owner: json['owner'] == null
          ? null
          : ModelsOwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleTaskModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsVehicleModelResponseToJson(
        ModelsVehicleModelResponse instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate?.toIso8601String(),
      'commercial_name': instance.commercialName,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation?.toIso8601String(),
      'id': instance.id,
      'mileage': instance.mileage,
      'note': instance.note,
      'owner': instance.owner?.toJson(),
      'owner_id': instance.ownerId,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt?.toIso8601String(),
      'tasks': instance.tasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsVehicleTaskModel _$ModelsVehicleTaskModelFromJson(
        Map<String, dynamic> json) =>
    ModelsVehicleTaskModel(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      finishdedAt: json['finishded_at'] == null
          ? null
          : DateTime.parse(json['finishded_at'] as String),
      id: json['id'] as int?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      tasksId: json['tasks_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehiclesId: json['vehicles_id'] as int?,
    );

Map<String, dynamic> _$ModelsVehicleTaskModelToJson(
        ModelsVehicleTaskModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_at': instance.deletedAt?.toJson(),
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'id': instance.id,
      'started_at': instance.startedAt?.toIso8601String(),
      'tasks_id': instance.tasksId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles_id': instance.vehiclesId,
    };

ModelsVehicleTaskModelResponse _$ModelsVehicleTaskModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsVehicleTaskModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : ModelsEmployeeModel.fromJson(
              json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      finishdedAt: json['finishded_at'] == null
          ? null
          : DateTime.parse(json['finishded_at'] as String),
      id: json['id'] as int?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      tasks: json['tasks'] == null
          ? null
          : ModelsTaskModel.fromJson(json['tasks'] as Map<String, dynamic>),
      tasksId: json['tasks_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: json['vehicles'] == null
          ? null
          : ModelsVehicleModel.fromJson(
              json['vehicles'] as Map<String, dynamic>),
      vehiclesId: json['vehicles_id'] as int?,
    );

Map<String, dynamic> _$ModelsVehicleTaskModelResponseToJson(
        ModelsVehicleTaskModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_at': instance.deletedAt?.toJson(),
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'id': instance.id,
      'started_at': instance.startedAt?.toIso8601String(),
      'tasks': instance.tasks?.toJson(),
      'tasks_id': instance.tasksId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.toJson(),
      'vehicles_id': instance.vehiclesId,
    };

UtilsResponseError _$UtilsResponseErrorFromJson(Map<String, dynamic> json) =>
    UtilsResponseError(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UtilsResponseErrorToJson(UtilsResponseError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
