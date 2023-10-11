// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountAudit _$AccountAuditFromJson(Map<String, dynamic> json) => AccountAudit(
      accountModelID: json['accountModelID'] as int?,
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$AccountAuditToJson(AccountAudit instance) =>
    <String, dynamic>{
      'accountModelID': instance.accountModelID,
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'email': instance.email,
      'name': instance.name,
      'updatedAt': instance.updatedAt,
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => AccountAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

CreateAccount _$CreateAccountFromJson(Map<String, dynamic> json) =>
    CreateAccount(
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CreateAccountToJson(CreateAccount instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
    };

CreateEmployee _$CreateEmployeeFromJson(Map<String, dynamic> json) =>
    CreateEmployee(
      createdGarages: (json['created_garages'] as List<dynamic>?)
              ?.map((e) => CreateGarage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => CreateTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicleTasks: (json['created_vehicle_tasks'] as List<dynamic>?)
              ?.map(
                  (e) => CreateVehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) => CreateVehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => CreateVehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      name: json['name'] as String?,
      updatedTasts: (json['updated_tasts'] as List<dynamic>?)
              ?.map((e) => CreateTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicles: (json['updated_vehicles'] as List<dynamic>?)
              ?.map((e) => CreateVehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateEmployeeToJson(CreateEmployee instance) =>
    <String, dynamic>{
      'created_garages':
          instance.createdGarages?.map((e) => e.toJson()).toList(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicle_tasks':
          instance.createdVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'updated_tasts': instance.updatedTasts?.map((e) => e.toJson()).toList(),
      'updated_vehicles':
          instance.updatedVehicles?.map((e) => e.toJson()).toList(),
    };

CreateGarage _$CreateGarageFromJson(Map<String, dynamic> json) => CreateGarage(
      createdById: json['created_by_id'] as int?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$CreateGarageToJson(CreateGarage instance) =>
    <String, dynamic>{
      'created_by_id': instance.createdById,
      'label': instance.label,
    };

CreateOwner _$CreateOwnerFromJson(Map<String, dynamic> json) => CreateOwner(
      address: json['address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => CreateVehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateOwnerToJson(CreateOwner instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

CreatePermission _$CreatePermissionFromJson(Map<String, dynamic> json) =>
    CreatePermission(
      available: json['available'] as bool?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$CreatePermissionToJson(CreatePermission instance) =>
    <String, dynamic>{
      'available': instance.available,
      'label': instance.label,
    };

CreateSparePart _$CreateSparePartFromJson(Map<String, dynamic> json) =>
    CreateSparePart(
      barcode: json['barcode'] as String?,
      reference: json['reference'] as String?,
    );

Map<String, dynamic> _$CreateSparePartToJson(CreateSparePart instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'reference': instance.reference,
    };

CreateSupplier _$CreateSupplierFromJson(Map<String, dynamic> json) =>
    CreateSupplier(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CreateSupplierToJson(CreateSupplier instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

CreateTask _$CreateTaskFromJson(Map<String, dynamic> json) => CreateTask(
      createdById: json['created_by_id'] as int?,
      label: json['label'] as String?,
      parentTaskId: json['parent_task_id'] as int?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => CreateTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map(
                  (e) => CreateVehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateTaskToJson(CreateTask instance) =>
    <String, dynamic>{
      'created_by_id': instance.createdById,
      'label': instance.label,
      'parent_task_id': instance.parentTaskId,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

CreateVehicle _$CreateVehicleFromJson(Map<String, dynamic> json) =>
    CreateVehicle(
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
              ?.map(
                  (e) => CreateVehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$CreateVehicleToJson(CreateVehicle instance) =>
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
      'updated_by_id': instance.updatedById,
    };

CreateVehicleTask _$CreateVehicleTaskFromJson(Map<String, dynamic> json) =>
    CreateVehicleTask(
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

Map<String, dynamic> _$CreateVehicleTaskToJson(CreateVehicleTask instance) =>
    <String, dynamic>{
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
      'tasks_id': instance.tasksId,
      'vehicles_id': instance.vehiclesId,
    };

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
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
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => EmployeeAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedTasts: (json['updated_tasts'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicles: (json['updated_vehicles'] as List<dynamic>?)
              ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_garages':
          instance.createdGarages?.map((e) => e.toJson()).toList(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicle_tasks':
          instance.createdVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_tasts': instance.updatedTasts?.map((e) => e.toJson()).toList(),
      'updated_vehicles':
          instance.updatedVehicles?.map((e) => e.toJson()).toList(),
    };

EmployeeAudit _$EmployeeAuditFromJson(Map<String, dynamic> json) =>
    EmployeeAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      employeeModelID: json['employeeModelID'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$EmployeeAuditToJson(EmployeeAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'employeeModelID': instance.employeeModelID,
      'name': instance.name,
      'updatedAt': instance.updatedAt,
    };

EmployeeResponse _$EmployeeResponseFromJson(Map<String, dynamic> json) =>
    EmployeeResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdGarages: (json['created_garages'] as List<dynamic>?)
              ?.map((e) => GarageResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdTasks: (json['created_tasks'] as List<dynamic>?)
              ?.map((e) => TaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicleTasks: (json['created_vehicle_tasks'] as List<dynamic>?)
              ?.map((e) =>
                  VehicleTaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      createdVehicles: (json['created_vehicles'] as List<dynamic>?)
              ?.map((e) => VehicleResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      deletedVehicles: (json['deleted_vehicles'] as List<dynamic>?)
              ?.map((e) => VehicleResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => EmployeeAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedTasts: (json['updated_tasts'] as List<dynamic>?)
              ?.map((e) => TaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedVehicles: (json['updated_vehicles'] as List<dynamic>?)
              ?.map((e) => VehicleResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$EmployeeResponseToJson(EmployeeResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_garages':
          instance.createdGarages?.map((e) => e.toJson()).toList(),
      'created_tasks': instance.createdTasks?.map((e) => e.toJson()).toList(),
      'created_vehicle_tasks':
          instance.createdVehicleTasks?.map((e) => e.toJson()).toList(),
      'created_vehicles':
          instance.createdVehicles?.map((e) => e.toJson()).toList(),
      'deleted_at': instance.deletedAt?.toJson(),
      'deleted_vehicles':
          instance.deletedVehicles?.map((e) => e.toJson()).toList(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_tasts': instance.updatedTasts?.map((e) => e.toJson()).toList(),
      'updated_vehicles':
          instance.updatedVehicles?.map((e) => e.toJson()).toList(),
    };

Garage _$GarageFromJson(Map<String, dynamic> json) => Garage(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => GarageAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$GarageToJson(Garage instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

GarageAudit _$GarageAuditFromJson(Map<String, dynamic> json) => GarageAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      garageModelID: json['garageModelID'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$GarageAuditToJson(GarageAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'garageModelID': instance.garageModelID,
      'label': instance.label,
      'updatedAt': instance.updatedAt,
    };

GarageResponse _$GarageResponseFromJson(Map<String, dynamic> json) =>
    GarageResponse(
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => GarageAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      label: json['label'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$GarageResponseToJson(GarageResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updatedAt?.toIso8601String(),
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => OwnerAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

OwnerAudit _$OwnerAuditFromJson(Map<String, dynamic> json) => OwnerAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      address: json['address'] as String?,
      email: json['email'] as String?,
      ownerModelID: json['ownerModelID'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postalCode'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$OwnerAuditToJson(OwnerAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'address': instance.address,
      'email': instance.email,
      'ownerModelID': instance.ownerModelID,
      'phone': instance.phone,
      'photo': instance.photo,
      'postalCode': instance.postalCode,
      'updatedAt': instance.updatedAt,
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => OwnerAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      postalCode: json['postal_code'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: (json['vehicles'] as List<dynamic>?)
              ?.map((e) => VehicleResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OwnerResponseToJson(OwnerResponse instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'email': instance.email,
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postalCode,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.map((e) => e.toJson()).toList(),
    };

PermissionAudit _$PermissionAuditFromJson(Map<String, dynamic> json) =>
    PermissionAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      available: json['available'] as bool?,
      label: json['label'] as String?,
      permissionModelID: json['permissionModelID'] as int?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$PermissionAuditToJson(PermissionAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'available': instance.available,
      'label': instance.label,
      'permissionModelID': instance.permissionModelID,
      'updatedAt': instance.updatedAt,
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => PermissionAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
      'history': instance.history?.map((e) => e.toJson()).toList(),
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

SparePartAudit _$SparePartAuditFromJson(Map<String, dynamic> json) =>
    SparePartAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      barcode: json['barcode'] as String?,
      reference: json['reference'] as String?,
      sparePartModelID: json['sparePartModelID'] as int?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$SparePartAuditToJson(SparePartAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'barcode': instance.barcode,
      'reference': instance.reference,
      'sparePartModelID': instance.sparePartModelID,
      'updatedAt': instance.updatedAt,
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => SparePartAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      reference: json['reference'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SparePartResponseToJson(SparePartResponse instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'reference': instance.reference,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

SupplierAudit _$SupplierAuditFromJson(Map<String, dynamic> json) =>
    SupplierAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      name: json['name'] as String?,
      supplierModelID: json['supplierModelID'] as int?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$SupplierAuditToJson(SupplierAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'name': instance.name,
      'supplierModelID': instance.supplierModelID,
      'updatedAt': instance.updatedAt,
    };

SupplierResponse _$SupplierResponseFromJson(Map<String, dynamic> json) =>
    SupplierResponse(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => SupplierAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      name: json['name'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SupplierResponseToJson(SupplierResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toJson(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdById: json['created_by_id'] as int?,
      deletedAt: json['deleted_at'] == null
          ? null
          : GormDeletedAt.fromJson(json['deleted_at'] as Map<String, dynamic>),
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => TaskAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      label: json['label'] as String?,
      parentTaskId: json['parent_task_id'] as int?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'label': instance.label,
      'parent_task_id': instance.parentTaskId,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
    };

TaskAudit _$TaskAuditFromJson(Map<String, dynamic> json) => TaskAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      label: json['label'] as String?,
      parentTask: json['parent_task'] == null
          ? null
          : Task.fromJson(json['parent_task'] as Map<String, dynamic>),
      parentTaskId: json['parent_task_id'] as int?,
      taskModelID: json['taskModelID'] as int?,
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$TaskAuditToJson(TaskAudit instance) => <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'label': instance.label,
      'parent_task': instance.parentTask?.toJson(),
      'parent_task_id': instance.parentTaskId,
      'taskModelID': instance.taskModelID,
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'updatedAt': instance.updatedAt,
    };

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) => TaskResponse(
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => TaskAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      label: json['label'] as String?,
      parentTask: json['parent_task'] == null
          ? null
          : Task.fromJson(json['parent_task'] as Map<String, dynamic>),
      parentTaskId: json['parent_task_id'] as int?,
      subTasks: (json['sub_tasks'] as List<dynamic>?)
              ?.map((e) => TaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      vehicleTasks: (json['vehicle_tasks'] as List<dynamic>?)
              ?.map((e) =>
                  VehicleTaskResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskResponseToJson(TaskResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_at': instance.deletedAt?.toJson(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'label': instance.label,
      'parent_task': instance.parentTask?.toJson(),
      'parent_task_id': instance.parentTaskId,
      'sub_tasks': instance.subTasks?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'vehicle_tasks': instance.vehicleTasks?.map((e) => e.toJson()).toList(),
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

UpdateEmployee _$UpdateEmployeeFromJson(Map<String, dynamic> json) =>
    UpdateEmployee(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UpdateEmployeeToJson(UpdateEmployee instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

UpdateGarage _$UpdateGarageFromJson(Map<String, dynamic> json) => UpdateGarage(
      createdById: json['created_by_id'] as int?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$UpdateGarageToJson(UpdateGarage instance) =>
    <String, dynamic>{
      'created_by_id': instance.createdById,
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

UpdateSupplier _$UpdateSupplierFromJson(Map<String, dynamic> json) =>
    UpdateSupplier(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UpdateSupplierToJson(UpdateSupplier instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

UpdateTask _$UpdateTaskFromJson(Map<String, dynamic> json) => UpdateTask(
      createdById: json['created_by_id'] as int?,
      label: json['label'] as String?,
      parentTaskId: json['parent_task_id'] as int?,
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$UpdateTaskToJson(UpdateTask instance) =>
    <String, dynamic>{
      'created_by_id': instance.createdById,
      'label': instance.label,
      'parent_task_id': instance.parentTaskId,
      'updated_by_id': instance.updatedById,
    };

UpdateVehicle _$UpdateVehicleFromJson(Map<String, dynamic> json) =>
    UpdateVehicle(
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
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$UpdateVehicleToJson(UpdateVehicle instance) =>
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
      'updated_by_id': instance.updatedById,
    };

UpdateVehicleTask _$UpdateVehicleTaskFromJson(Map<String, dynamic> json) =>
    UpdateVehicleTask(
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

Map<String, dynamic> _$UpdateVehicleTaskToJson(UpdateVehicleTask instance) =>
    <String, dynamic>{
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
      'tasks_id': instance.tasksId,
      'vehicles_id': instance.vehiclesId,
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => VehicleAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
              ?.map((e) => VehicleTask.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedById: json['updated_by_id'] as int?,
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
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
      'history': instance.history?.map((e) => e.toJson()).toList(),
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
      'updated_by_id': instance.updatedById,
    };

VehicleAudit _$VehicleAuditFromJson(Map<String, dynamic> json) => VehicleAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      chrono: json['chrono'] as String?,
      collectionDate: json['collectionDate'] as String?,
      commercialName: json['commercialName'] as String?,
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deletedBy: json['deleted_by'] == null
          ? null
          : Employee.fromJson(json['deleted_by'] as Map<String, dynamic>),
      deletedById: json['deleted_by_id'] as int?,
      deliveryDate: json['deliveryDate'] as String?,
      expertise: json['expertise'] as bool?,
      firstCirculation: json['firstCirculation'] as String?,
      mileage: json['mileage'] as int?,
      note: json['note'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int?,
      procedureVe: json['procedureVe'] as bool?,
      registration: json['registration'] as String?,
      serialNumber: json['serialNumber'] as String?,
      soldAt: json['soldAt'] as String?,
      updatedBy: json['updated_by'] == null
          ? null
          : Employee.fromJson(json['updated_by'] as Map<String, dynamic>),
      updatedById: json['updated_by_id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      vehicleModelID: json['vehicleModelID'] as int?,
    );

Map<String, dynamic> _$VehicleAuditToJson(VehicleAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'chrono': instance.chrono,
      'collectionDate': instance.collectionDate,
      'commercialName': instance.commercialName,
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted_by': instance.deletedBy?.toJson(),
      'deleted_by_id': instance.deletedById,
      'deliveryDate': instance.deliveryDate,
      'expertise': instance.expertise,
      'firstCirculation': instance.firstCirculation,
      'mileage': instance.mileage,
      'note': instance.note,
      'owner': instance.owner?.toJson(),
      'owner_id': instance.ownerId,
      'procedureVe': instance.procedureVe,
      'registration': instance.registration,
      'serialNumber': instance.serialNumber,
      'soldAt': instance.soldAt,
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
      'updatedAt': instance.updatedAt,
      'vehicleModelID': instance.vehicleModelID,
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => VehicleAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) =>
                  VehicleTaskResponse.fromJson(e as Map<String, dynamic>))
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
      'history': instance.history?.map((e) => e.toJson()).toList(),
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
      'updated_by': instance.updatedBy?.toJson(),
      'updated_by_id': instance.updatedById,
    };

VehicleTask _$VehicleTaskFromJson(Map<String, dynamic> json) => VehicleTask(
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
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => VehicleTaskAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
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

Map<String, dynamic> _$VehicleTaskToJson(VehicleTask instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_at': instance.deletedAt?.toJson(),
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'started_at': instance.startedAt?.toIso8601String(),
      'tasks_id': instance.tasksId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles_id': instance.vehiclesId,
    };

VehicleTaskAudit _$VehicleTaskAuditFromJson(Map<String, dynamic> json) =>
    VehicleTaskAudit(
      action: json['action'] as String?,
      actionAt: json['actionAt'] as String?,
      actionID: json['actionID'] as int?,
      createdBy: json['created_by'] == null
          ? null
          : Employee.fromJson(json['created_by'] as Map<String, dynamic>),
      createdById: json['created_by_id'] as int?,
      deleted: json['deleted'] as bool?,
      finishdedAt: json['finishdedAt'] as String?,
      startedAt: json['startedAt'] as String?,
      tasks: json['tasks'] == null
          ? null
          : Task.fromJson(json['tasks'] as Map<String, dynamic>),
      tasksId: json['tasks_id'] as int?,
      updatedAt: json['updatedAt'] as String?,
      vehicleTaskModelID: json['vehicleTaskModelID'] as int?,
      vehicles: json['vehicles'] == null
          ? null
          : Vehicle.fromJson(json['vehicles'] as Map<String, dynamic>),
      vehiclesId: json['vehicles_id'] as int?,
    );

Map<String, dynamic> _$VehicleTaskAuditToJson(VehicleTaskAudit instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionAt': instance.actionAt,
      'actionID': instance.actionID,
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'finishdedAt': instance.finishdedAt,
      'startedAt': instance.startedAt,
      'tasks': instance.tasks?.toJson(),
      'tasks_id': instance.tasksId,
      'updatedAt': instance.updatedAt,
      'vehicleTaskModelID': instance.vehicleTaskModelID,
      'vehicles': instance.vehicles?.toJson(),
      'vehicles_id': instance.vehiclesId,
    };

VehicleTaskResponse _$VehicleTaskResponseFromJson(Map<String, dynamic> json) =>
    VehicleTaskResponse(
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
      finishdedAt: json['finishded_at'] == null
          ? null
          : DateTime.parse(json['finishded_at'] as String),
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => VehicleTaskAudit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      tasks: json['tasks'] == null
          ? null
          : Task.fromJson(json['tasks'] as Map<String, dynamic>),
      tasksId: json['tasks_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicles: json['vehicles'] == null
          ? null
          : Vehicle.fromJson(json['vehicles'] as Map<String, dynamic>),
      vehiclesId: json['vehicles_id'] as int?,
    );

Map<String, dynamic> _$VehicleTaskResponseToJson(
        VehicleTaskResponse instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy?.toJson(),
      'created_by_id': instance.createdById,
      'deleted': instance.deleted,
      'deleted_at': instance.deletedAt?.toJson(),
      'finishded_at': instance.finishdedAt?.toIso8601String(),
      'history': instance.history?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'started_at': instance.startedAt?.toIso8601String(),
      'tasks': instance.tasks?.toJson(),
      'tasks_id': instance.tasksId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicles': instance.vehicles?.toJson(),
      'vehicles_id': instance.vehiclesId,
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
