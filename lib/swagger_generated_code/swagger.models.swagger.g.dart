// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      employeeId: json['employee_id'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'employee_id': instance.employeeId,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

AccountAudit _$AccountAuditFromJson(Map<String, dynamic> json) => AccountAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      employeeId: json['employee_id'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AccountAuditToJson(AccountAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'employee_id': instance.employeeId,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

AccountResponse _$AccountResponseFromJson(Map<String, dynamic> json) =>
    AccountResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      employeeId: json['employee_id'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AccountResponseToJson(AccountResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'employee_id': instance.employeeId,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

ActivityAudit _$ActivityAuditFromJson(Map<String, dynamic> json) =>
    ActivityAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$ActivityAuditToJson(ActivityAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

ActivityResponse _$ActivityResponseFromJson(Map<String, dynamic> json) =>
    ActivityResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ActivityResponseToJson(ActivityResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      garages: (json['garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'garages': instance.garages?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

CityAudit _$CityAuditFromJson(Map<String, dynamic> json) => CityAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      garages: (json['garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CityAuditToJson(CityAudit instance) => <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'garages': instance.garages?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) => CityResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      garages: (json['garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CityResponseToJson(CityResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'garages': instance.garages?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

CreateAccount _$CreateAccountFromJson(Map<String, dynamic> json) =>
    CreateAccount(
      email: json['email'] as String?,
      employeeId: json['employee_id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CreateAccountToJson(CreateAccount instance) =>
    <String, dynamic>{
      'email': instance.email,
      'employee_id': instance.employeeId,
      'name': instance.name,
    };

CreateActivity _$CreateActivityFromJson(Map<String, dynamic> json) =>
    CreateActivity(
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      label: json['label'] as String?,
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateActivityToJson(CreateActivity instance) =>
    <String, dynamic>{
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'label': instance.label,
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

CreateCity _$CreateCityFromJson(Map<String, dynamic> json) => CreateCity(
      garages: (json['garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      label: json['label'] as String?,
    );

Map<String, dynamic> _$CreateCityToJson(CreateCity instance) =>
    <String, dynamic>{
      'garages': instance.garages?.map((e) => e.toJson()).toList(),
      'label': instance.label,
    };

CreateEmployee _$CreateEmployeeFromJson(Map<String, dynamic> json) =>
    CreateEmployee(
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
      assignedVehicleTasks: (json['assigned_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdActivities: (json['created_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdGarages: (json['created_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicleTasks: (json['created_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedActivities: (json['deleted_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedGarages: (json['deleted_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedTasks: (json['deleted_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicleTasks: (json['deleted_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String?,
      permission: (json['permission'] as List<dynamic>?)
              ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => SparePartRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedActivities: (json['updated_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedGarages: (json['updated_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedTasks: (json['updated_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicleTasks: (json['updated_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicles: (json['updated_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateEmployeeToJson(CreateEmployee instance) =>
    <String, dynamic>{
      'account': instance.account?.toJson(),
      'assigned_vehicle_tasks':
          instance.assignedVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_activities':
          instance.createdActivities?.map((e) => e.toJson()).toList(),
      'created_garages':
          instance.createdGarages?.map((e) => e.toJson()).toList(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicle_tasks':
          instance.createdVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_activities':
          instance.deletedActivities?.map((e) => e.toJson()).toList(),
      'deleted_garages':
          instance.deletedGarages?.map((e) => e.toJson()).toList(),
      'deleted_tasks': instance.deletedTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicle_tasks':
          instance.deletedVehicleTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'permission': instance.permission?.map((e) => e.toJson()).toList(),
      'requests': instance.requests?.map((e) => e.toJson()).toList(),
      'updated_activities':
          instance.updatedActivities?.map((e) => e.toJson()).toList(),
      'updated_garages':
          instance.updatedGarages?.map((e) => e.toJson()).toList(),
      'updated_tasks': instance.updatedTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicle_tasks':
          instance.updatedVehicleTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicles':
          instance.updatedVehicles?.map((e) => e.toJson()).toList(),
    };

CreateGarage _$CreateGarageFromJson(Map<String, dynamic> json) => CreateGarage(
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      cityId: json['city_id'] as int?,
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      label: json['label'] as String?,
      owners: (json['owners'] as List<dynamic>?)
              ?.map((e) => Owner.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$CreateGarageToJson(CreateGarage instance) =>
    <String, dynamic>{
      'city': instance.city?.toJson(),
      'city_id': instance.cityId,
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'label': instance.label,
      'owners': instance.owners?.map((e) => e.toJson()).toList(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

CreateOwner _$CreateOwnerFromJson(Map<String, dynamic> json) => CreateOwner(
      address: json['address'] as String?,
      email: json['email'] as String?,
      garage: json['garage'] == null
          ? null
          : Garage.fromJson(json['garage'] as Map<String, dynamic>),
      garageId: json['garage_id'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateOwnerToJson(CreateOwner instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'garage': instance.garage?.toJson(),
      'garage_id': instance.garageId,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

CreatePermission _$CreatePermissionFromJson(Map<String, dynamic> json) =>
    CreatePermission(
      available: json['available'] as bool?,
      employees: json['employees'] == null
          ? null
          : Employee.fromJson(json['employees'] as Map<String, dynamic>),
      employeesId: json['employees_id'] as int?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$CreatePermissionToJson(CreatePermission instance) =>
    <String, dynamic>{
      'available': instance.available,
      'employees': instance.employees?.toJson(),
      'employees_id': instance.employeesId,
      'label': instance.label,
    };

CreateSparePart _$CreateSparePartFromJson(Map<String, dynamic> json) =>
    CreateSparePart(
      barcode: json['barcode'] as String?,
      reference: json['reference'] as String?,
      request: json['request'] == null
          ? null
          : SparePartRequest.fromJson(json['request'] as Map<String, dynamic>),
      requestId: json['request_id'] as int?,
      supplier: json['supplier'] == null
          ? null
          : Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      supplierId: json['supplier_id'] as int?,
    );

Map<String, dynamic> _$CreateSparePartToJson(CreateSparePart instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'reference': instance.reference,
      'request': instance.request?.toJson(),
      'request_id': instance.requestId,
      'supplier': instance.supplier?.toJson(),
      'supplier_id': instance.supplierId,
    };

CreateSparePartRequest _$CreateSparePartRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSparePartRequest(
      requestBy: json['request_by'] == null
          ? null
          : Employee.fromJson(json['request_by'] as Map<String, dynamic>),
      requestById: json['request_by_id'] as int?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateSparePartRequestToJson(
        CreateSparePartRequest instance) =>
    <String, dynamic>{
      'request_by': instance.requestBy?.toJson(),
      'request_by_id': instance.requestById,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
    };

CreateSubTask _$CreateSubTaskFromJson(Map<String, dynamic> json) =>
    CreateSubTask(
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      label: json['label'] as String?,
      parentTask: json['parent_task'] == null
          ? null
          : Task.fromJson(json['parent_task'] as Map<String, dynamic>),
      parentTaskId: json['parent_task_id'] as int?,
    );

Map<String, dynamic> _$CreateSubTaskToJson(CreateSubTask instance) =>
    <String, dynamic>{
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'label': instance.label,
      'parent_task': instance.parentTask?.toJson(),
      'parent_task_id': instance.parentTaskId,
    };

CreateSupplier _$CreateSupplierFromJson(Map<String, dynamic> json) =>
    CreateSupplier(
      name: json['name'] as String?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateSupplierToJson(CreateSupplier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
    };

CreateTask _$CreateTaskFromJson(Map<String, dynamic> json) => CreateTask(
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      label: json['label'] as String?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => SubTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$CreateTaskToJson(CreateTask instance) =>
    <String, dynamic>{
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'label': instance.label,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

CreateVehicle _$CreateVehicleFromJson(Map<String, dynamic> json) =>
    CreateVehicle(
      chrono: json['chrono'] as String?,
      collectionDate: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      commercialName: json['commercial_name'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
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
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateVehicleToJson(CreateVehicle instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'collection_date': instance.collectionDate?.toIso8601String(),
      'commercial_name': instance.commercialName,
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'delivery_date': instance.deliveryDate?.toIso8601String(),
      'expertise': instance.expertise,
      'first_circulation': instance.firstCirculation?.toIso8601String(),
      'mileage': instance.mileage,
      'note': instance.note,
      'owner': instance.owner?.toJson(),
      'owner_id': instance.ownerId,
      'procedure_ve': instance.procedureVe,
      'registration': instance.registration,
      'serial_number': instance.serialNumber,
      'sold_at': instance.soldAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

CreateVehicleTask _$CreateVehicleTaskFromJson(Map<String, dynamic> json) =>
    CreateVehicleTask(
      activities: (json['activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      assignedTo: json['assigned_to'] == null
          ? null
          : Employee.fromJson(json['assigned_to'] as Map<String, dynamic>),
      assignedToId: json['assigned_to_id'] as int?,
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      note: json['note'] as String?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      subTask: json['sub_task'] == null
          ? null
          : SubTask.fromJson(json['sub_task'] as Map<String, dynamic>),
      subTaskId: json['sub_task_id'] as int?,
      task: json['task'] == null
          ? null
          : Task.fromJson(json['task'] as Map<String, dynamic>),
      taskId: json['task_id'] as int?,
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      vehicleId: json['vehicle_id'] as int?,
    );

Map<String, dynamic> _$CreateVehicleTaskToJson(CreateVehicleTask instance) =>
    <String, dynamic>{
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'assigned_to': instance.assignedTo?.toJson(),
      'assigned_to_id': instance.assignedToId,
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'note': instance.note,
      'started_at': instance.startedAt?.toIso8601String(),
      'sub_task': instance.subTask?.toJson(),
      'sub_task_id': instance.subTaskId,
      'task': instance.task?.toJson(),
      'task_id': instance.taskId,
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle': instance.vehicle?.toJson(),
      'vehicle_id': instance.vehicleId,
    };

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
      assignedVehicleTasks: (json['assigned_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdActivities: (json['created_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdGarages: (json['created_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicleTasks: (json['created_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedActivities: (json['deleted_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedGarages: (json['deleted_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedTasks: (json['deleted_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicleTasks: (json['deleted_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      permission: (json['permission'] as List<dynamic>?)
              ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => SparePartRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedActivities: (json['updated_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedGarages: (json['updated_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedTasks: (json['updated_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicleTasks: (json['updated_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicles: (json['updated_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'account': instance.account?.toJson(),
      'assigned_vehicle_tasks':
          instance.assignedVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_activities':
          instance.createdActivities?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'created_garages':
          instance.createdGarages?.map((e) => e.toJson()).toList(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicle_tasks':
          instance.createdVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_activities':
          instance.deletedActivities?.map((e) => e.toJson()).toList(),
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_garages':
          instance.deletedGarages?.map((e) => e.toJson()).toList(),
      'deleted_tasks': instance.deletedTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicle_tasks':
          instance.deletedVehicleTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'permission': instance.permission?.map((e) => e.toJson()).toList(),
      'requests': instance.requests?.map((e) => e.toJson()).toList(),
      'updated_activities':
          instance.updatedActivities?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_garages':
          instance.updatedGarages?.map((e) => e.toJson()).toList(),
      'updated_tasks': instance.updatedTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicle_tasks':
          instance.updatedVehicleTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicles':
          instance.updatedVehicles?.map((e) => e.toJson()).toList(),
    };

EmployeeAudit _$EmployeeAuditFromJson(Map<String, dynamic> json) =>
    EmployeeAudit(
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      assignedVehicleTasks: (json['assigned_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdActivities: (json['created_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdGarages: (json['created_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicleTasks: (json['created_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedActivities: (json['deleted_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedGarages: (json['deleted_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedTasks: (json['deleted_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicleTasks: (json['deleted_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      permission: (json['permission'] as List<dynamic>?)
              ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => SparePartRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedActivities: (json['updated_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedGarages: (json['updated_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedTasks: (json['updated_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicleTasks: (json['updated_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicles: (json['updated_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EmployeeAuditToJson(EmployeeAudit instance) =>
    <String, dynamic>{
      'account': instance.account?.toJson(),
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'assigned_vehicle_tasks':
          instance.assignedVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_activities':
          instance.createdActivities?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'created_garages':
          instance.createdGarages?.map((e) => e.toJson()).toList(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicle_tasks':
          instance.createdVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_activities':
          instance.deletedActivities?.map((e) => e.toJson()).toList(),
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_garages':
          instance.deletedGarages?.map((e) => e.toJson()).toList(),
      'deleted_tasks': instance.deletedTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicle_tasks':
          instance.deletedVehicleTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'permission': instance.permission?.map((e) => e.toJson()).toList(),
      'requests': instance.requests?.map((e) => e.toJson()).toList(),
      'updated_activities':
          instance.updatedActivities?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_garages':
          instance.updatedGarages?.map((e) => e.toJson()).toList(),
      'updated_tasks': instance.updatedTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicle_tasks':
          instance.updatedVehicleTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicles':
          instance.updatedVehicles?.map((e) => e.toJson()).toList(),
    };

EmployeeResponse _$EmployeeResponseFromJson(Map<String, dynamic> json) =>
    EmployeeResponse(
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
      assignedVehicleTasks: (json['assigned_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdActivities: (json['created_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdGarages: (json['created_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicleTasks: (json['created_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedActivities: (json['deleted_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedGarages: (json['deleted_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedTasks: (json['deleted_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicleTasks: (json['deleted_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      permission: (json['permission'] as List<dynamic>?)
              ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => SparePartRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedActivities: (json['updated_activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedGarages: (json['updated_garages'] as List<dynamic>?)
              ?.map((e) => Garage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedTasks: (json['updated_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicleTasks: (json['updated_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicles: (json['updated_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EmployeeResponseToJson(EmployeeResponse instance) =>
    <String, dynamic>{
      'account': instance.account?.toJson(),
      'assigned_vehicle_tasks':
          instance.assignedVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_activities':
          instance.createdActivities?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'created_garages':
          instance.createdGarages?.map((e) => e.toJson()).toList(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicle_tasks':
          instance.createdVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_activities':
          instance.deletedActivities?.map((e) => e.toJson()).toList(),
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_garages':
          instance.deletedGarages?.map((e) => e.toJson()).toList(),
      'deleted_tasks': instance.deletedTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicle_tasks':
          instance.deletedVehicleTasks?.map((e) => e.toJson()).toList(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'permission': instance.permission?.map((e) => e.toJson()).toList(),
      'requests': instance.requests?.map((e) => e.toJson()).toList(),
      'updated_activities':
          instance.updatedActivities?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_garages':
          instance.updatedGarages?.map((e) => e.toJson()).toList(),
      'updated_tasks': instance.updatedTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicle_tasks':
          instance.updatedVehicleTasks?.map((e) => e.toJson()).toList(),
      'updated_vehicles':
          instance.updatedVehicles?.map((e) => e.toJson()).toList(),
    };

Garage _$GarageFromJson(Map<String, dynamic> json) => Garage(
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      cityId: json['city_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      owners: (json['owners'] as List<dynamic>?)
              ?.map((e) => Owner.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$GarageToJson(Garage instance) => <String, dynamic>{
      'city': instance.city?.toJson(),
      'city_id': instance.cityId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'owners': instance.owners?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

GarageAudit _$GarageAuditFromJson(Map<String, dynamic> json) => GarageAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      cityId: json['city_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      owners: (json['owners'] as List<dynamic>?)
              ?.map((e) => Owner.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$GarageAuditToJson(GarageAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'city': instance.city?.toJson(),
      'city_id': instance.cityId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'owners': instance.owners?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

GarageResponse _$GarageResponseFromJson(Map<String, dynamic> json) =>
    GarageResponse(
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      cityId: json['city_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      owners: (json['owners'] as List<dynamic>?)
              ?.map((e) => Owner.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$GarageResponseToJson(GarageResponse instance) =>
    <String, dynamic>{
      'city': instance.city?.toJson(),
      'city_id': instance.cityId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'owners': instance.owners?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

ListAccount _$ListAccountFromJson(Map<String, dynamic> json) => ListAccount(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AccountResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListAccountToJson(ListAccount instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListActivity _$ListActivityFromJson(Map<String, dynamic> json) => ListActivity(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ActivityResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListActivityToJson(ListActivity instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListCity _$ListCityFromJson(Map<String, dynamic> json) => ListCity(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CityResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListCityToJson(ListCity instance) => <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListEmployee _$ListEmployeeFromJson(Map<String, dynamic> json) => ListEmployee(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => EmployeeResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListEmployeeToJson(ListEmployee instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListGarage _$ListGarageFromJson(Map<String, dynamic> json) => ListGarage(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => GarageResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListGarageToJson(ListGarage instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListOwner _$ListOwnerFromJson(Map<String, dynamic> json) => ListOwner(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => OwnerResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListOwnerToJson(ListOwner instance) => <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListPermission _$ListPermissionFromJson(Map<String, dynamic> json) =>
    ListPermission(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => PermissionResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListPermissionToJson(ListPermission instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListSparePart _$ListSparePartFromJson(Map<String, dynamic> json) =>
    ListSparePart(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => SparePartResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListSparePartToJson(ListSparePart instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListSparePartRequest _$ListSparePartRequestFromJson(
        Map<String, dynamic> json) =>
    ListSparePartRequest(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  SparePartRequestResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListSparePartRequestToJson(
        ListSparePartRequest instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListSubTask _$ListSubTaskFromJson(Map<String, dynamic> json) => ListSubTask(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SubTaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListSubTaskToJson(ListSubTask instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListSupplier _$ListSupplierFromJson(Map<String, dynamic> json) => ListSupplier(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SupplierResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListSupplierToJson(ListSupplier instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListTask _$ListTaskFromJson(Map<String, dynamic> json) => ListTask(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListTaskToJson(ListTask instance) => <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListVehicle _$ListVehicleFromJson(Map<String, dynamic> json) => ListVehicle(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => VehicleResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListVehicleToJson(ListVehicle instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ListVehicleTask _$ListVehicleTaskFromJson(Map<String, dynamic> json) =>
    ListVehicleTask(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  VehicleTaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ListVehicleTaskToJson(ListVehicleTask instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      garage: json['garage'] == null
          ? null
          : Garage.fromJson(json['garage'] as Map<String, dynamic>),
      garageId: json['garage_id'] as int?,
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'garage': instance.garage?.toJson(),
      'garage_id': instance.garageId,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

OwnerAudit _$OwnerAuditFromJson(Map<String, dynamic> json) => OwnerAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      garage: json['garage'] == null
          ? null
          : Garage.fromJson(json['garage'] as Map<String, dynamic>),
      garageId: json['garage_id'] as int?,
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OwnerAuditToJson(OwnerAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'garage': instance.garage?.toJson(),
      'garage_id': instance.garageId,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

OwnerResponse _$OwnerResponseFromJson(Map<String, dynamic> json) =>
    OwnerResponse(
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      email: json['email'] as String?,
      garage: json['garage'] == null
          ? null
          : Garage.fromJson(json['garage'] as Map<String, dynamic>),
      garageId: json['garage_id'] as int?,
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OwnerResponseToJson(OwnerResponse instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'garage': instance.garage?.toJson(),
      'garage_id': instance.garageId,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

Permission _$PermissionFromJson(Map<String, dynamic> json) => Permission(
      available: json['available'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      employees: json['employees'] == null
          ? null
          : Employee.fromJson(json['employees'] as Map<String, dynamic>),
      employeesId: json['employees_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PermissionToJson(Permission instance) =>
    <String, dynamic>{
      'available': instance.available,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'employees': instance.employees?.toJson(),
      'employees_id': instance.employeesId,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

PermissionAudit _$PermissionAuditFromJson(Map<String, dynamic> json) =>
    PermissionAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      available: json['available'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      employees: json['employees'] == null
          ? null
          : Employee.fromJson(json['employees'] as Map<String, dynamic>),
      employeesId: json['employees_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PermissionAuditToJson(PermissionAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'available': instance.available,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'employees': instance.employees?.toJson(),
      'employees_id': instance.employeesId,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

PermissionResponse _$PermissionResponseFromJson(Map<String, dynamic> json) =>
    PermissionResponse(
      available: json['available'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      employees: json['employees'] == null
          ? null
          : Employee.fromJson(json['employees'] as Map<String, dynamic>),
      employeesId: json['employees_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PermissionResponseToJson(PermissionResponse instance) =>
    <String, dynamic>{
      'available': instance.available,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'employees': instance.employees?.toJson(),
      'employees_id': instance.employeesId,
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ResponseError _$ResponseErrorFromJson(Map<String, dynamic> json) =>
    ResponseError(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResponseErrorToJson(ResponseError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

SparePart _$SparePartFromJson(Map<String, dynamic> json) => SparePart(
      barcode: json['barcode'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      reference: json['reference'] as String?,
      request: json['request'] == null
          ? null
          : SparePartRequest.fromJson(json['request'] as Map<String, dynamic>),
      requestId: json['request_id'] as int?,
      supplier: json['supplier'] == null
          ? null
          : Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      supplierId: json['supplier_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SparePartToJson(SparePart instance) => <String, dynamic>{
      'barcode': instance.barcode,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'reference': instance.reference,
      'request': instance.request?.toJson(),
      'request_id': instance.requestId,
      'supplier': instance.supplier?.toJson(),
      'supplier_id': instance.supplierId,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SparePartAudit _$SparePartAuditFromJson(Map<String, dynamic> json) =>
    SparePartAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      barcode: json['barcode'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      reference: json['reference'] as String?,
      request: json['request'] == null
          ? null
          : SparePartRequest.fromJson(json['request'] as Map<String, dynamic>),
      requestId: json['request_id'] as int?,
      supplier: json['supplier'] == null
          ? null
          : Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      supplierId: json['supplier_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SparePartAuditToJson(SparePartAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'barcode': instance.barcode,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'reference': instance.reference,
      'request': instance.request?.toJson(),
      'request_id': instance.requestId,
      'supplier': instance.supplier?.toJson(),
      'supplier_id': instance.supplierId,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SparePartRequest _$SparePartRequestFromJson(Map<String, dynamic> json) =>
    SparePartRequest(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      requestBy: json['request_by'] == null
          ? null
          : Employee.fromJson(json['request_by'] as Map<String, dynamic>),
      requestById: json['request_by_id'] as int?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SparePartRequestToJson(SparePartRequest instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'request_by': instance.requestBy?.toJson(),
      'request_by_id': instance.requestById,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SparePartRequestAudit _$SparePartRequestAuditFromJson(
        Map<String, dynamic> json) =>
    SparePartRequestAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      requestBy: json['request_by'] == null
          ? null
          : Employee.fromJson(json['request_by'] as Map<String, dynamic>),
      requestById: json['request_by_id'] as int?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SparePartRequestAuditToJson(
        SparePartRequestAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'request_by': instance.requestBy?.toJson(),
      'request_by_id': instance.requestById,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SparePartRequestResponse _$SparePartRequestResponseFromJson(
        Map<String, dynamic> json) =>
    SparePartRequestResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      requestBy: json['request_by'] == null
          ? null
          : Employee.fromJson(json['request_by'] as Map<String, dynamic>),
      requestById: json['request_by_id'] as int?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SparePartRequestResponseToJson(
        SparePartRequestResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'request_by': instance.requestBy?.toJson(),
      'request_by_id': instance.requestById,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SparePartResponse _$SparePartResponseFromJson(Map<String, dynamic> json) =>
    SparePartResponse(
      barcode: json['barcode'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      reference: json['reference'] as String?,
      request: json['request'] == null
          ? null
          : SparePartRequest.fromJson(json['request'] as Map<String, dynamic>),
      requestId: json['request_id'] as int?,
      supplier: json['supplier'] == null
          ? null
          : Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      supplierId: json['supplier_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SparePartResponseToJson(SparePartResponse instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'reference': instance.reference,
      'request': instance.request?.toJson(),
      'request_id': instance.requestId,
      'supplier': instance.supplier?.toJson(),
      'supplier_id': instance.supplierId,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SubTask _$SubTaskFromJson(Map<String, dynamic> json) => SubTask(
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
          : Task.fromJson(json['parent_task'] as Map<String, dynamic>),
      parentTaskId: json['parent_task_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SubTaskToJson(SubTask instance) => <String, dynamic>{
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'label': instance.label,
      'parent_task': instance.parentTask?.toJson(),
      'parent_task_id': instance.parentTaskId,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SubTaskAudit _$SubTaskAuditFromJson(Map<String, dynamic> json) => SubTaskAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
          : Task.fromJson(json['parent_task'] as Map<String, dynamic>),
      parentTaskId: json['parent_task_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SubTaskAuditToJson(SubTaskAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'label': instance.label,
      'parent_task': instance.parentTask?.toJson(),
      'parent_task_id': instance.parentTaskId,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SubTaskResponse _$SubTaskResponseFromJson(Map<String, dynamic> json) =>
    SubTaskResponse(
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
          : Task.fromJson(json['parent_task'] as Map<String, dynamic>),
      parentTaskId: json['parent_task_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SubTaskResponseToJson(SubTaskResponse instance) =>
    <String, dynamic>{
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'label': instance.label,
      'parent_task': instance.parentTask?.toJson(),
      'parent_task_id': instance.parentTaskId,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

Supplier _$SupplierFromJson(Map<String, dynamic> json) => Supplier(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SupplierToJson(Supplier instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'name': instance.name,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SupplierAudit _$SupplierAuditFromJson(Map<String, dynamic> json) =>
    SupplierAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SupplierAuditToJson(SupplierAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'name': instance.name,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SupplierResponse _$SupplierResponseFromJson(Map<String, dynamic> json) =>
    SupplierResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
      spareParts: (json['spare_parts'] as List<dynamic>?)
              ?.map((e) => SparePart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SupplierResponseToJson(SupplierResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'id': instance.id,
      'name': instance.name,
      'spare_parts': instance.spareParts?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => SubTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

TaskAudit _$TaskAuditFromJson(Map<String, dynamic> json) => TaskAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => SubTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$TaskAuditToJson(TaskAudit instance) => <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) => TaskResponse(
      attachedTo: (json['attached_to'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => SubTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$TaskResponseToJson(TaskResponse instance) =>
    <String, dynamic>{
      'attached_to': instance.attachedTo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'id': instance.id,
      'label': instance.label,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

TotalCount _$TotalCountFromJson(Map<String, dynamic> json) => TotalCount(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$TotalCountToJson(TotalCount instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

UpdateAccount _$UpdateAccountFromJson(Map<String, dynamic> json) =>
    UpdateAccount(
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UpdateAccountToJson(UpdateAccount instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
    };

UpdateActivity _$UpdateActivityFromJson(Map<String, dynamic> json) =>
    UpdateActivity(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UpdateActivityToJson(UpdateActivity instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

UpdateCity _$UpdateCityFromJson(Map<String, dynamic> json) => UpdateCity(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UpdateCityToJson(UpdateCity instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

UpdateEmployee _$UpdateEmployeeFromJson(Map<String, dynamic> json) =>
    UpdateEmployee(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UpdateEmployeeToJson(UpdateEmployee instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

UpdateGarage _$UpdateGarageFromJson(Map<String, dynamic> json) => UpdateGarage(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UpdateGarageToJson(UpdateGarage instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

UpdateOwner _$UpdateOwnerFromJson(Map<String, dynamic> json) => UpdateOwner(
      address: json['address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$UpdateOwnerToJson(UpdateOwner instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
    };

UpdatePermission _$UpdatePermissionFromJson(Map<String, dynamic> json) =>
    UpdatePermission(
      available: json['available'] as bool?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UpdatePermissionToJson(UpdatePermission instance) =>
    <String, dynamic>{
      'available': instance.available,
      'label': instance.label,
    };

UpdateSparePart _$UpdateSparePartFromJson(Map<String, dynamic> json) =>
    UpdateSparePart(
      barcode: json['barcode'] as String?,
      reference: json['reference'] as String?,
    );

Map<String, dynamic> _$UpdateSparePartToJson(UpdateSparePart instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'reference': instance.reference,
    };

UpdateSparePartRequest _$UpdateSparePartRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSparePartRequest();

Map<String, dynamic> _$UpdateSparePartRequestToJson(
        UpdateSparePartRequest instance) =>
    <String, dynamic>{};

UpdateSubTask _$UpdateSubTaskFromJson(Map<String, dynamic> json) =>
    UpdateSubTask(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UpdateSubTaskToJson(UpdateSubTask instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

UpdateSupplier _$UpdateSupplierFromJson(Map<String, dynamic> json) =>
    UpdateSupplier(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UpdateSupplierToJson(UpdateSupplier instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

UpdateTask _$UpdateTaskFromJson(Map<String, dynamic> json) => UpdateTask(
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UpdateTaskToJson(UpdateTask instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

UpdateVehicle _$UpdateVehicleFromJson(Map<String, dynamic> json) =>
    UpdateVehicle(
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

Map<String, dynamic> _$UpdateVehicleToJson(UpdateVehicle instance) =>
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

UpdateVehicleTask _$UpdateVehicleTaskFromJson(Map<String, dynamic> json) =>
    UpdateVehicleTask(
      deleted: json['deleted'] as bool?,
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      note: json['note'] as String?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
    );

Map<String, dynamic> _$UpdateVehicleTaskToJson(UpdateVehicleTask instance) =>
    <String, dynamic>{
      'deleted': instance.deleted,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'note': instance.note,
      'started_at': instance.startedAt?.toIso8601String(),
    };

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
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
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
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
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
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
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

VehicleAudit _$VehicleAuditFromJson(Map<String, dynamic> json) => VehicleAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
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
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
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
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleAuditToJson(VehicleAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
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
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

VehicleResponse _$VehicleResponseFromJson(Map<String, dynamic> json) =>
    VehicleResponse(
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
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
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
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedure_ve'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serial_number'] as String?,
      soldAt: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VehicleResponseToJson(VehicleResponse instance) =>
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
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

VehicleTask _$VehicleTaskFromJson(Map<String, dynamic> json) => VehicleTask(
      activities: (json['activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      assignedTo: json['assigned_to'] == null
          ? null
          : Employee.fromJson(json['assigned_to'] as Map<String, dynamic>),
      assignedToId: json['assigned_to_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      id: json['id'] as int?,
      note: json['note'] as String?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      subTask: json['sub_task'] == null
          ? null
          : SubTask.fromJson(json['sub_task'] as Map<String, dynamic>),
      subTaskId: json['sub_task_id'] as int?,
      task: json['task'] == null
          ? null
          : Task.fromJson(json['task'] as Map<String, dynamic>),
      taskId: json['task_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      vehicleId: json['vehicle_id'] as int?,
    );

Map<String, dynamic> _$VehicleTaskToJson(VehicleTask instance) =>
    <String, dynamic>{
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'assigned_to': instance.assignedTo?.toJson(),
      'assigned_to_id': instance.assignedToId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'id': instance.id,
      'note': instance.note,
      'started_at': instance.startedAt?.toIso8601String(),
      'sub_task': instance.subTask?.toJson(),
      'sub_task_id': instance.subTaskId,
      'task': instance.task?.toJson(),
      'task_id': instance.taskId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle': instance.vehicle?.toJson(),
      'vehicle_id': instance.vehicleId,
    };

VehicleTaskAudit _$VehicleTaskAuditFromJson(Map<String, dynamic> json) =>
    VehicleTaskAudit(
      action: json['action'] as String?,
      actionAt: json['action_at'] == null
          ? null
          : DateTime.parse(json['action_at'] as String),
      actionId: json['action_id'] as int?,
      assignedTo: json['assigned_to'] == null
          ? null
          : Employee.fromJson(json['assigned_to'] as Map<String, dynamic>),
      assignedToId: json['assigned_to_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      id: json['id'] as int?,
      note: json['note'] as String?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      subTask: json['sub_task'] == null
          ? null
          : SubTask.fromJson(json['sub_task'] as Map<String, dynamic>),
      subTaskId: json['sub_task_id'] as int?,
      task: json['task'] == null
          ? null
          : Task.fromJson(json['task'] as Map<String, dynamic>),
      taskId: json['task_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      vehicleId: json['vehicle_id'] as int?,
    );

Map<String, dynamic> _$VehicleTaskAuditToJson(VehicleTaskAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'action_at': instance.actionAt?.toIso8601String(),
      'action_id': instance.actionId,
      'assigned_to': instance.assignedTo?.toJson(),
      'assigned_to_id': instance.assignedToId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'id': instance.id,
      'note': instance.note,
      'started_at': instance.startedAt?.toIso8601String(),
      'sub_task': instance.subTask?.toJson(),
      'sub_task_id': instance.subTaskId,
      'task': instance.task?.toJson(),
      'task_id': instance.taskId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle': instance.vehicle?.toJson(),
      'vehicle_id': instance.vehicleId,
    };

VehicleTaskResponse _$VehicleTaskResponseFromJson(Map<String, dynamic> json) =>
    VehicleTaskResponse(
      activities: (json['activities'] as List<dynamic>?)
              ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      assignedTo: json['assigned_to'] == null
          ? null
          : Employee.fromJson(json['assigned_to'] as Map<String, dynamic>),
      assignedToId: json['assigned_to_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      id: json['id'] as int?,
      note: json['note'] as String?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      subTask: json['sub_task'] == null
          ? null
          : SubTask.fromJson(json['sub_task'] as Map<String, dynamic>),
      subTaskId: json['sub_task_id'] as int?,
      task: json['task'] == null
          ? null
          : Task.fromJson(json['task'] as Map<String, dynamic>),
      taskId: json['task_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      vehicleId: json['vehicle_id'] as int?,
    );

Map<String, dynamic> _$VehicleTaskResponseToJson(
        VehicleTaskResponse instance) =>
    <String, dynamic>{
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'assigned_to': instance.assignedTo?.toJson(),
      'assigned_to_id': instance.assignedToId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'finished_at': instance.finishedAt?.toIso8601String(),
      'id': instance.id,
      'note': instance.note,
      'started_at': instance.startedAt?.toIso8601String(),
      'sub_task': instance.subTask?.toJson(),
      'sub_task_id': instance.subTaskId,
      'task': instance.task?.toJson(),
      'task_id': instance.taskId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle': instance.vehicle?.toJson(),
      'vehicle_id': instance.vehicleId,
    };

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
