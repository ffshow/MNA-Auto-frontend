// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelsAccountModel _$ModelsAccountModelFromJson(Map<String, dynamic> json) =>
    ModelsAccountModel(
      createdAt: json['created_at'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ModelsAccountModelToJson(ModelsAccountModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt,
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

ModelsCreateVehicleModel _$ModelsCreateVehicleModelFromJson(
        Map<String, dynamic> json) =>
    ModelsCreateVehicleModel(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] as String?,
      commercialName: json['commercial_name'] as String?,
      currentStatus: json['current_status'] as String?,
      deliveryDate: json['delivery_date'] as String?,
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] as String?,
      info: json['info'] == null
          ? null
          : ModelsInfoModel.fromJson(json['info'] as Map<String, dynamic>),
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      ownerId: json['owner_id'] as String?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] as String?,
    );

Map<String, dynamic> _$ModelsCreateVehicleModelToJson(
        ModelsCreateVehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate,
      'commercial_name': instance.commercialName,
      'current_status': instance.currentStatus,
      'delivery_date': instance.deliveryDate,
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation,
      'info': instance.info?.toJson(),
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.ownerId,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt,
    };

ModelsGarageModel _$ModelsGarageModelFromJson(Map<String, dynamic> json) =>
    ModelsGarageModel(
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ModelsGarageModelToJson(ModelsGarageModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt,
    };

ModelsInfoModel _$ModelsInfoModelFromJson(Map<String, dynamic> json) =>
    ModelsInfoModel(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$ModelsInfoModelToJson(ModelsInfoModel instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

ModelsListAccountModel _$ModelsListAccountModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListAccountModel(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => ModelsAccountModel.fromJson(e as Map<String, dynamic>))
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

ModelsListGarageModel _$ModelsListGarageModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListGarageModel(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => ModelsGarageModel.fromJson(e as Map<String, dynamic>))
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
              ?.map((e) => ModelsOwnerModel.fromJson(e as Map<String, dynamic>))
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
              ?.map((e) =>
                  ModelsPermissionModel.fromJson(e as Map<String, dynamic>))
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
              ?.map((e) =>
                  ModelsSparePartModel.fromJson(e as Map<String, dynamic>))
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
              ?.map((e) =>
                  ModelsSupplierModel.fromJson(e as Map<String, dynamic>))
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

ModelsListVehicleModel _$ModelsListVehicleModelFromJson(
        Map<String, dynamic> json) =>
    ModelsListVehicleModel(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => ModelsVehicleModel.fromJson(e as Map<String, dynamic>))
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

ModelsOwnerModel _$ModelsOwnerModelFromJson(Map<String, dynamic> json) =>
    ModelsOwnerModel(
      address: json['address'] as String?,
      createdAt: json['created_at'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ModelsOwnerModelToJson(ModelsOwnerModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': instance.createdAt,
      'email': instance.email,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt,
    };

ModelsPermissionModel _$ModelsPermissionModelFromJson(
        Map<String, dynamic> json) =>
    ModelsPermissionModel(
      available: json['available'] as bool?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ModelsPermissionModelToJson(
        ModelsPermissionModel instance) =>
    <String, dynamic>{
      'available': instance.available,
      'created_at': instance.createdAt,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt,
    };

ModelsSparePartModel _$ModelsSparePartModelFromJson(
        Map<String, dynamic> json) =>
    ModelsSparePartModel(
      barcode: json['barcode'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      reference: json['reference'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ModelsSparePartModelToJson(
        ModelsSparePartModel instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'created_at': instance.createdAt,
      'id': instance.id,
      'reference': instance.reference,
      'updated_at': instance.updatedAt,
    };

ModelsSupplierModel _$ModelsSupplierModelFromJson(Map<String, dynamic> json) =>
    ModelsSupplierModel(
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ModelsSupplierModelToJson(
        ModelsSupplierModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt,
    };

ModelsTotalCount _$ModelsTotalCountFromJson(Map<String, dynamic> json) =>
    ModelsTotalCount(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$ModelsTotalCountToJson(ModelsTotalCount instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

ModelsVehicleModel _$ModelsVehicleModelFromJson(Map<String, dynamic> json) =>
    ModelsVehicleModel(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] as String?,
      commercialName: json['commercial_name'] as String?,
      createdAt: json['created_at'] as String?,
      currentStatus: json['current_status'] as String?,
      deliveryDate: json['delivery_date'] as String?,
      expertise: json['expertise'] as bool?,
      firstCirculation: json['first_circulation'] as String?,
      id: json['id'] as String?,
      info: json['info'] == null
          ? null
          : ModelsInfoModel.fromJson(json['info'] as Map<String, dynamic>),
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      ownerId: json['owner_id'] as String?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ModelsVehicleModelToJson(ModelsVehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate,
      'commercial_name': instance.commercialName,
      'created_at': instance.createdAt,
      'current_status': instance.currentStatus,
      'delivery_date': instance.deliveryDate,
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation,
      'id': instance.id,
      'info': instance.info?.toJson(),
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.ownerId,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt,
      'updated_at': instance.updatedAt,
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
