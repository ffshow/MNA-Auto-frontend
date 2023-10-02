// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelsAccountModelResponse _$ModelsAccountModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsAccountModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      email: json['email'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsAccountModelResponseToJson(
        ModelsAccountModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
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
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsCreateEmployeeModelToJson(
        ModelsCreateEmployeeModel instance) =>
    <String, dynamic>{
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
    );

Map<String, dynamic> _$ModelsCreateOwnerModelToJson(
        ModelsCreateOwnerModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
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
      parentId: json['parent_id'] as String?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsCreateTaskModelToJson(
        ModelsCreateTaskModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'parent_id': instance.parentId,
      'sub_tasks': instance.subTasks,
    };

ModelsCreateVehicleModel _$ModelsCreateVehicleModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateVehicleModel(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      commercialName: json['commercial_name'] as String?,
      createdBy: json['created_by'] as String?,
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      owner: json['owner'] as String?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      vehicleTask: (json['vehicle_task'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsCreateVehicleModelToJson(
        ModelsCreateVehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate?.toIso8601String(),
      'commercial_name': instance.commercialName,
      'created_by': instance.createdBy,
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation?.toIso8601String(),
      'mileage': instance.mileage,
      'note': instance.note,
      'owner': instance.owner,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt?.toIso8601String(),
      'vehicle_task': instance.vehicleTask,
    };

ModelsCreateVehicleTaskModel _$ModelsCreateVehicleTaskModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateVehicleTaskModel(
      deleted: json['deleted'] as bool?,
      employee: json['employee'] as String?,
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      task: json['task'] as String?,
      vehicle: json['vehicle'] as String?,
    );

Map<String, dynamic> _$ModelsCreateVehicleTaskModelToJson(
        ModelsCreateVehicleTaskModel instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
      'employee': instance.employee,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
      'task': instance.task,
      'vehicle': instance.vehicle,
    };

ModelsEmployeeModelResponse _$ModelsEmployeeModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsEmployeeModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as String?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsEmployeeModelResponseToJson(
        ModelsEmployeeModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
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
      id: json['id'] as String?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsGarageModelResponseToJson(
        ModelsGarageModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
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

ModelsOwnerModelResponse _$ModelsOwnerModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsOwnerModelResponse(
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      email: json['email'] as String?,
      id: json['id'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsOwnerModelResponseToJson(
        ModelsOwnerModelResponse instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'email': instance.email,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsPermissionModelResponse _$ModelsPermissionModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsPermissionModelResponse(
      available: json['available'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as String?,
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
      id: json['id'] as String?,
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsSupplierModelResponseToJson(
        ModelsSupplierModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ModelsTaskModelResponse _$ModelsTaskModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsTaskModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as String?,
      label: json['label'] as String?,
      parentId: json['parent_id'] as String?,
      task: (json['task'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsTaskModelResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      taskIds: (json['task_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ModelsTaskModelResponseToJson(
        ModelsTaskModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'label': instance.label,
      'parent_id': instance.parentId,
      'task': instance.task?.map((e) => e.toJson()).toList(),
      'task_ids': instance.taskIds,
      'updated_at': instance.updatedAt?.toIso8601String(),
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
      parentId: json['parent_id'] as String?,
    );

Map<String, dynamic> _$ModelsUpdateTaskModelToJson(
        ModelsUpdateTaskModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'parent_id': instance.parentId,
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
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
    );

Map<String, dynamic> _$ModelsUpdateVehicleTaskModelToJson(
        ModelsUpdateVehicleTaskModel instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
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
      deliveryDate: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      employee: json['employee'] == null
          ? null
          : ModelsEmployeeModelResponse.fromJson(
              json['employee'] as Map<String, dynamic>),
      employeeId: json['employee_id'] as String?,
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      id: json['id'] as String?,
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      owner: json['owner'] == null
          ? null
          : ModelsOwnerModelResponse.fromJson(
              json['owner'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as String?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicleTask: (json['vehicle_task'] as List<dynamic>?)
              ?.map((e) => ModelsVehicleTaskModelResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      vehicleTaskIds: (json['vehicle_task_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ModelsVehicleModelResponseToJson(
        ModelsVehicleModelResponse instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate?.toIso8601String(),
      'commercial_name': instance.commercialName,
      'created_at': instance.createdAt?.toIso8601String(),
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'employee': instance.employee?.toJson(),
      'employee_id': instance.employeeId,
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
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicle_task': instance.vehicleTask?.map((e) => e.toJson()).toList(),
      'vehicle_task_ids': instance.vehicleTaskIds,
    };

ModelsVehicleTaskModelResponse _$ModelsVehicleTaskModelResponseFromJson(
        Map<String, dynamic> json) =>
    ModelsVehicleTaskModelResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deleted: json['deleted'] as bool?,
      employee: json['employee'] == null
          ? null
          : ModelsEmployeeModelResponse.fromJson(
              json['employee'] as Map<String, dynamic>),
      employeeId: json['employee_id'] as String?,
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      id: json['id'] as String?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      task: json['task'] == null
          ? null
          : ModelsTaskModelResponse.fromJson(
              json['task'] as Map<String, dynamic>),
      taskId: json['task_id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicle: json['vehicle'] == null
          ? null
          : ModelsVehicleModelResponse.fromJson(
              json['vehicle'] as Map<String, dynamic>),
      vehicleId: json['vehicle_id'] as String?,
    );

Map<String, dynamic> _$ModelsVehicleTaskModelResponseToJson(
        ModelsVehicleTaskModelResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted': instance.deleted,
      'employee': instance.employee?.toJson(),
      'employee_id': instance.employeeId,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'id': instance.id,
      'started_at': instance.startedAt?.toIso8601String(),
      'task': instance.task?.toJson(),
      'task_id': instance.taskId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicle': instance.vehicle?.toJson(),
      'vehicle_id': instance.vehicleId,
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
