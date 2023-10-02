// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class ModelsAccountModelResponse {
  const ModelsAccountModelResponse({
    this.createdAt,
    this.email,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory ModelsAccountModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsAccountModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsAccountModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsAccountModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsAccountModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsAccountModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsAccountModelResponseExtension on ModelsAccountModelResponse {
  ModelsAccountModelResponse copyWith(
      {DateTime? createdAt,
      String? email,
      String? id,
      String? name,
      DateTime? updatedAt}) {
    return ModelsAccountModelResponse(
        createdAt: createdAt ?? this.createdAt,
        email: email ?? this.email,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsAccountModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? email,
      Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsAccountModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        email: (email != null ? email.value : this.email),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateAccountModel {
  const ModelsCreateAccountModel({
    this.email,
    this.name,
  });

  factory ModelsCreateAccountModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateAccountModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateAccountModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateAccountModelToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsCreateAccountModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateAccountModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ModelsCreateAccountModelExtension on ModelsCreateAccountModel {
  ModelsCreateAccountModel copyWith({String? email, String? name}) {
    return ModelsCreateAccountModel(
        email: email ?? this.email, name: name ?? this.name);
  }

  ModelsCreateAccountModel copyWithWrapped(
      {Wrapped<String?>? email, Wrapped<String?>? name}) {
    return ModelsCreateAccountModel(
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateEmployeeModel {
  const ModelsCreateEmployeeModel({
    this.name,
  });

  factory ModelsCreateEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateEmployeeModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateEmployeeModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateEmployeeModelToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsCreateEmployeeModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateEmployeeModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $ModelsCreateEmployeeModelExtension on ModelsCreateEmployeeModel {
  ModelsCreateEmployeeModel copyWith({String? name}) {
    return ModelsCreateEmployeeModel(name: name ?? this.name);
  }

  ModelsCreateEmployeeModel copyWithWrapped({Wrapped<String?>? name}) {
    return ModelsCreateEmployeeModel(
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateGarageModel {
  const ModelsCreateGarageModel({
    this.label,
  });

  factory ModelsCreateGarageModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateGarageModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateGarageModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateGarageModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsCreateGarageModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateGarageModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $ModelsCreateGarageModelExtension on ModelsCreateGarageModel {
  ModelsCreateGarageModel copyWith({String? label}) {
    return ModelsCreateGarageModel(label: label ?? this.label);
  }

  ModelsCreateGarageModel copyWithWrapped({Wrapped<String?>? label}) {
    return ModelsCreateGarageModel(
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateOwnerModel {
  const ModelsCreateOwnerModel({
    this.address,
    this.email,
    this.phone,
    this.photo,
    this.postalCode,
  });

  factory ModelsCreateOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateOwnerModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateOwnerModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateOwnerModelToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  static const fromJsonFactory = _$ModelsCreateOwnerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateOwnerModel &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      runtimeType.hashCode;
}

extension $ModelsCreateOwnerModelExtension on ModelsCreateOwnerModel {
  ModelsCreateOwnerModel copyWith(
      {String? address,
      String? email,
      String? phone,
      String? photo,
      String? postalCode}) {
    return ModelsCreateOwnerModel(
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode);
  }

  ModelsCreateOwnerModel copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode}) {
    return ModelsCreateOwnerModel(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreatePermissionModel {
  const ModelsCreatePermissionModel({
    this.available,
    this.label,
  });

  factory ModelsCreatePermissionModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreatePermissionModelFromJson(json);

  static const toJsonFactory = _$ModelsCreatePermissionModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreatePermissionModelToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsCreatePermissionModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreatePermissionModel &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $ModelsCreatePermissionModelExtension on ModelsCreatePermissionModel {
  ModelsCreatePermissionModel copyWith({bool? available, String? label}) {
    return ModelsCreatePermissionModel(
        available: available ?? this.available, label: label ?? this.label);
  }

  ModelsCreatePermissionModel copyWithWrapped(
      {Wrapped<bool?>? available, Wrapped<String?>? label}) {
    return ModelsCreatePermissionModel(
        available: (available != null ? available.value : this.available),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateSparePartModel {
  const ModelsCreateSparePartModel({
    this.barcode,
    this.reference,
  });

  factory ModelsCreateSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateSparePartModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateSparePartModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateSparePartModelToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'reference')
  final String? reference;
  static const fromJsonFactory = _$ModelsCreateSparePartModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateSparePartModel &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(reference) ^
      runtimeType.hashCode;
}

extension $ModelsCreateSparePartModelExtension on ModelsCreateSparePartModel {
  ModelsCreateSparePartModel copyWith({String? barcode, String? reference}) {
    return ModelsCreateSparePartModel(
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference);
  }

  ModelsCreateSparePartModel copyWithWrapped(
      {Wrapped<String?>? barcode, Wrapped<String?>? reference}) {
    return ModelsCreateSparePartModel(
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateSupplierModel {
  const ModelsCreateSupplierModel({
    this.name,
  });

  factory ModelsCreateSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateSupplierModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateSupplierModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateSupplierModelToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsCreateSupplierModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateSupplierModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $ModelsCreateSupplierModelExtension on ModelsCreateSupplierModel {
  ModelsCreateSupplierModel copyWith({String? name}) {
    return ModelsCreateSupplierModel(name: name ?? this.name);
  }

  ModelsCreateSupplierModel copyWithWrapped({Wrapped<String?>? name}) {
    return ModelsCreateSupplierModel(
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateTaskModel {
  const ModelsCreateTaskModel({
    this.label,
    this.parentId,
    this.subTasksIds,
    this.task,
  });

  factory ModelsCreateTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateTaskModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @JsonKey(name: 'sub_tasks_ids', defaultValue: <String>[])
  final List<String>? subTasksIds;
  @JsonKey(name: 'task', defaultValue: <ModelsCreateTaskModel>[])
  final List<ModelsCreateTaskModel>? task;
  static const fromJsonFactory = _$ModelsCreateTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateTaskModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.subTasksIds, subTasksIds) ||
                const DeepCollectionEquality()
                    .equals(other.subTasksIds, subTasksIds)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(subTasksIds) ^
      const DeepCollectionEquality().hash(task) ^
      runtimeType.hashCode;
}

extension $ModelsCreateTaskModelExtension on ModelsCreateTaskModel {
  ModelsCreateTaskModel copyWith(
      {String? label,
      String? parentId,
      List<String>? subTasksIds,
      List<ModelsCreateTaskModel>? task}) {
    return ModelsCreateTaskModel(
        label: label ?? this.label,
        parentId: parentId ?? this.parentId,
        subTasksIds: subTasksIds ?? this.subTasksIds,
        task: task ?? this.task);
  }

  ModelsCreateTaskModel copyWithWrapped(
      {Wrapped<String?>? label,
      Wrapped<String?>? parentId,
      Wrapped<List<String>?>? subTasksIds,
      Wrapped<List<ModelsCreateTaskModel>?>? task}) {
    return ModelsCreateTaskModel(
        label: (label != null ? label.value : this.label),
        parentId: (parentId != null ? parentId.value : this.parentId),
        subTasksIds:
            (subTasksIds != null ? subTasksIds.value : this.subTasksIds),
        task: (task != null ? task.value : this.task));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateVehicleModel {
  const ModelsCreateVehicleModel({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.createdById,
    this.deliveryDate,
    this.employee,
    this.expertise,
    this.firstCirculation,
    this.mileage,
    this.note,
    this.owner,
    this.ownerId,
    this.procedureVe,
    this.registration,
    this.serialNumber,
    this.soldAt,
    this.vehicleTask,
    this.vehicleTaskIds,
  });

  factory ModelsCreateVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateVehicleModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateVehicleModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateVehicleModelToJson(this);

  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collection_date')
  final DateTime? collectionDate;
  @JsonKey(name: 'commercial_name')
  final String? commercialName;
  @JsonKey(name: 'created_by_id')
  final String? createdById;
  @JsonKey(name: 'delivery_date')
  final DateTime? deliveryDate;
  @JsonKey(name: 'employee')
  final ModelsCreateEmployeeModel? employee;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final DateTime? firstCirculation;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner')
  final ModelsCreateOwnerModel? owner;
  @JsonKey(name: 'owner_id')
  final String? ownerId;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final DateTime? soldAt;
  @JsonKey(name: 'vehicle_task', defaultValue: <ModelsCreateVehicleTaskModel>[])
  final List<ModelsCreateVehicleTaskModel>? vehicleTask;
  @JsonKey(name: 'vehicle_task_ids', defaultValue: <String>[])
  final List<String>? vehicleTaskIds;
  static const fromJsonFactory = _$ModelsCreateVehicleModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateVehicleModel &&
            (identical(other.chrono, chrono) ||
                const DeepCollectionEquality().equals(other.chrono, chrono)) &&
            (identical(other.collectionDate, collectionDate) ||
                const DeepCollectionEquality()
                    .equals(other.collectionDate, collectionDate)) &&
            (identical(other.commercialName, commercialName) ||
                const DeepCollectionEquality()
                    .equals(other.commercialName, commercialName)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.expertise, expertise) ||
                const DeepCollectionEquality()
                    .equals(other.expertise, expertise)) &&
            (identical(other.firstCirculation, firstCirculation) ||
                const DeepCollectionEquality()
                    .equals(other.firstCirculation, firstCirculation)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.procedureVe, procedureVe) ||
                const DeepCollectionEquality()
                    .equals(other.procedureVe, procedureVe)) &&
            (identical(other.registration, registration) ||
                const DeepCollectionEquality()
                    .equals(other.registration, registration)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.soldAt, soldAt) ||
                const DeepCollectionEquality().equals(other.soldAt, soldAt)) &&
            (identical(other.vehicleTask, vehicleTask) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTask, vehicleTask)) &&
            (identical(other.vehicleTaskIds, vehicleTaskIds) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTaskIds, vehicleTaskIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(expertise) ^
      const DeepCollectionEquality().hash(firstCirculation) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(procedureVe) ^
      const DeepCollectionEquality().hash(registration) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(soldAt) ^
      const DeepCollectionEquality().hash(vehicleTask) ^
      const DeepCollectionEquality().hash(vehicleTaskIds) ^
      runtimeType.hashCode;
}

extension $ModelsCreateVehicleModelExtension on ModelsCreateVehicleModel {
  ModelsCreateVehicleModel copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      String? createdById,
      DateTime? deliveryDate,
      ModelsCreateEmployeeModel? employee,
      bool? expertise,
      DateTime? firstCirculation,
      int? mileage,
      String? note,
      ModelsCreateOwnerModel? owner,
      String? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      List<ModelsCreateVehicleTaskModel>? vehicleTask,
      List<String>? vehicleTaskIds}) {
    return ModelsCreateVehicleModel(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        createdById: createdById ?? this.createdById,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        employee: employee ?? this.employee,
        expertise: expertise ?? this.expertise,
        firstCirculation: firstCirculation ?? this.firstCirculation,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        owner: owner ?? this.owner,
        ownerId: ownerId ?? this.ownerId,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt,
        vehicleTask: vehicleTask ?? this.vehicleTask,
        vehicleTaskIds: vehicleTaskIds ?? this.vehicleTaskIds);
  }

  ModelsCreateVehicleModel copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<String?>? createdById,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<ModelsCreateEmployeeModel?>? employee,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<ModelsCreateOwnerModel?>? owner,
      Wrapped<String?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<List<ModelsCreateVehicleTaskModel>?>? vehicleTask,
      Wrapped<List<String>?>? vehicleTaskIds}) {
    return ModelsCreateVehicleModel(
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        employee: (employee != null ? employee.value : this.employee),
        expertise: (expertise != null ? expertise.value : this.expertise),
        firstCirculation: (firstCirculation != null
            ? firstCirculation.value
            : this.firstCirculation),
        mileage: (mileage != null ? mileage.value : this.mileage),
        note: (note != null ? note.value : this.note),
        owner: (owner != null ? owner.value : this.owner),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt),
        vehicleTask:
            (vehicleTask != null ? vehicleTask.value : this.vehicleTask),
        vehicleTaskIds: (vehicleTaskIds != null
            ? vehicleTaskIds.value
            : this.vehicleTaskIds));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateVehicleTaskModel {
  const ModelsCreateVehicleTaskModel({
    this.deleted,
    this.employee,
    this.employeeId,
    this.finishedAt,
    this.startedAt,
    this.task,
    this.taskId,
    this.vehicle,
    this.vehicleId,
  });

  factory ModelsCreateVehicleTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateVehicleTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateVehicleTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateVehicleTaskModelToJson(this);

  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'employee')
  final ModelsCreateEmployeeModel? employee;
  @JsonKey(name: 'employee_id')
  final String? employeeId;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'task')
  final ModelsCreateTaskModel? task;
  @JsonKey(name: 'task_id')
  final String? taskId;
  @JsonKey(name: 'vehicle')
  final ModelsCreateVehicleModel? vehicle;
  @JsonKey(name: 'vehicle_id')
  final String? vehicleId;
  static const fromJsonFactory = _$ModelsCreateVehicleTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateVehicleTaskModel &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $ModelsCreateVehicleTaskModelExtension
    on ModelsCreateVehicleTaskModel {
  ModelsCreateVehicleTaskModel copyWith(
      {bool? deleted,
      ModelsCreateEmployeeModel? employee,
      String? employeeId,
      DateTime? finishedAt,
      DateTime? startedAt,
      ModelsCreateTaskModel? task,
      String? taskId,
      ModelsCreateVehicleModel? vehicle,
      String? vehicleId}) {
    return ModelsCreateVehicleTaskModel(
        deleted: deleted ?? this.deleted,
        employee: employee ?? this.employee,
        employeeId: employeeId ?? this.employeeId,
        finishedAt: finishedAt ?? this.finishedAt,
        startedAt: startedAt ?? this.startedAt,
        task: task ?? this.task,
        taskId: taskId ?? this.taskId,
        vehicle: vehicle ?? this.vehicle,
        vehicleId: vehicleId ?? this.vehicleId);
  }

  ModelsCreateVehicleTaskModel copyWithWrapped(
      {Wrapped<bool?>? deleted,
      Wrapped<ModelsCreateEmployeeModel?>? employee,
      Wrapped<String?>? employeeId,
      Wrapped<DateTime?>? finishedAt,
      Wrapped<DateTime?>? startedAt,
      Wrapped<ModelsCreateTaskModel?>? task,
      Wrapped<String?>? taskId,
      Wrapped<ModelsCreateVehicleModel?>? vehicle,
      Wrapped<String?>? vehicleId}) {
    return ModelsCreateVehicleTaskModel(
        deleted: (deleted != null ? deleted.value : this.deleted),
        employee: (employee != null ? employee.value : this.employee),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        task: (task != null ? task.value : this.task),
        taskId: (taskId != null ? taskId.value : this.taskId),
        vehicle: (vehicle != null ? vehicle.value : this.vehicle),
        vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsEmployeeModelResponse {
  const ModelsEmployeeModelResponse({
    this.createdAt,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory ModelsEmployeeModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsEmployeeModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsEmployeeModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsEmployeeModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsEmployeeModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsEmployeeModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsEmployeeModelResponseExtension on ModelsEmployeeModelResponse {
  ModelsEmployeeModelResponse copyWith(
      {DateTime? createdAt, String? id, String? name, DateTime? updatedAt}) {
    return ModelsEmployeeModelResponse(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsEmployeeModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsEmployeeModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsGarageModelResponse {
  const ModelsGarageModelResponse({
    this.createdAt,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory ModelsGarageModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsGarageModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsGarageModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsGarageModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsGarageModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsGarageModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsGarageModelResponseExtension on ModelsGarageModelResponse {
  ModelsGarageModelResponse copyWith(
      {DateTime? createdAt, String? id, String? label, DateTime? updatedAt}) {
    return ModelsGarageModelResponse(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsGarageModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsGarageModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListAccountModel {
  const ModelsListAccountModel({
    this.data,
    this.total,
  });

  factory ModelsListAccountModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListAccountModelFromJson(json);

  static const toJsonFactory = _$ModelsListAccountModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListAccountModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsAccountModelResponse>[])
  final List<ModelsAccountModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListAccountModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListAccountModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListAccountModelExtension on ModelsListAccountModel {
  ModelsListAccountModel copyWith(
      {List<ModelsAccountModelResponse>? data, int? total}) {
    return ModelsListAccountModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListAccountModel copyWithWrapped(
      {Wrapped<List<ModelsAccountModelResponse>?>? data,
      Wrapped<int?>? total}) {
    return ModelsListAccountModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListEmployeeModel {
  const ModelsListEmployeeModel({
    this.data,
    this.total,
  });

  factory ModelsListEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListEmployeeModelFromJson(json);

  static const toJsonFactory = _$ModelsListEmployeeModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListEmployeeModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsEmployeeModelResponse>[])
  final List<ModelsEmployeeModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListEmployeeModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListEmployeeModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListEmployeeModelExtension on ModelsListEmployeeModel {
  ModelsListEmployeeModel copyWith(
      {List<ModelsEmployeeModelResponse>? data, int? total}) {
    return ModelsListEmployeeModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListEmployeeModel copyWithWrapped(
      {Wrapped<List<ModelsEmployeeModelResponse>?>? data,
      Wrapped<int?>? total}) {
    return ModelsListEmployeeModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListGarageModel {
  const ModelsListGarageModel({
    this.data,
    this.total,
  });

  factory ModelsListGarageModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListGarageModelFromJson(json);

  static const toJsonFactory = _$ModelsListGarageModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListGarageModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsGarageModelResponse>[])
  final List<ModelsGarageModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListGarageModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListGarageModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListGarageModelExtension on ModelsListGarageModel {
  ModelsListGarageModel copyWith(
      {List<ModelsGarageModelResponse>? data, int? total}) {
    return ModelsListGarageModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListGarageModel copyWithWrapped(
      {Wrapped<List<ModelsGarageModelResponse>?>? data, Wrapped<int?>? total}) {
    return ModelsListGarageModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListOwnerModel {
  const ModelsListOwnerModel({
    this.data,
    this.total,
  });

  factory ModelsListOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListOwnerModelFromJson(json);

  static const toJsonFactory = _$ModelsListOwnerModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListOwnerModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsOwnerModelResponse>[])
  final List<ModelsOwnerModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListOwnerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListOwnerModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListOwnerModelExtension on ModelsListOwnerModel {
  ModelsListOwnerModel copyWith(
      {List<ModelsOwnerModelResponse>? data, int? total}) {
    return ModelsListOwnerModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListOwnerModel copyWithWrapped(
      {Wrapped<List<ModelsOwnerModelResponse>?>? data, Wrapped<int?>? total}) {
    return ModelsListOwnerModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListPermissionModel {
  const ModelsListPermissionModel({
    this.data,
    this.total,
  });

  factory ModelsListPermissionModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListPermissionModelFromJson(json);

  static const toJsonFactory = _$ModelsListPermissionModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListPermissionModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsPermissionModelResponse>[])
  final List<ModelsPermissionModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListPermissionModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListPermissionModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListPermissionModelExtension on ModelsListPermissionModel {
  ModelsListPermissionModel copyWith(
      {List<ModelsPermissionModelResponse>? data, int? total}) {
    return ModelsListPermissionModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListPermissionModel copyWithWrapped(
      {Wrapped<List<ModelsPermissionModelResponse>?>? data,
      Wrapped<int?>? total}) {
    return ModelsListPermissionModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListSparePartModel {
  const ModelsListSparePartModel({
    this.data,
    this.total,
  });

  factory ModelsListSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListSparePartModelFromJson(json);

  static const toJsonFactory = _$ModelsListSparePartModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListSparePartModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsSparePartModelResponse>[])
  final List<ModelsSparePartModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListSparePartModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListSparePartModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListSparePartModelExtension on ModelsListSparePartModel {
  ModelsListSparePartModel copyWith(
      {List<ModelsSparePartModelResponse>? data, int? total}) {
    return ModelsListSparePartModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListSparePartModel copyWithWrapped(
      {Wrapped<List<ModelsSparePartModelResponse>?>? data,
      Wrapped<int?>? total}) {
    return ModelsListSparePartModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListSupplierModel {
  const ModelsListSupplierModel({
    this.data,
    this.total,
  });

  factory ModelsListSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListSupplierModelFromJson(json);

  static const toJsonFactory = _$ModelsListSupplierModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListSupplierModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsSupplierModelResponse>[])
  final List<ModelsSupplierModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListSupplierModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListSupplierModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListSupplierModelExtension on ModelsListSupplierModel {
  ModelsListSupplierModel copyWith(
      {List<ModelsSupplierModelResponse>? data, int? total}) {
    return ModelsListSupplierModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListSupplierModel copyWithWrapped(
      {Wrapped<List<ModelsSupplierModelResponse>?>? data,
      Wrapped<int?>? total}) {
    return ModelsListSupplierModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListTaskModel {
  const ModelsListTaskModel({
    this.data,
    this.total,
  });

  factory ModelsListTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsListTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListTaskModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsTaskModelResponse>[])
  final List<ModelsTaskModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListTaskModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListTaskModelExtension on ModelsListTaskModel {
  ModelsListTaskModel copyWith(
      {List<ModelsTaskModelResponse>? data, int? total}) {
    return ModelsListTaskModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListTaskModel copyWithWrapped(
      {Wrapped<List<ModelsTaskModelResponse>?>? data, Wrapped<int?>? total}) {
    return ModelsListTaskModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListVehicleModel {
  const ModelsListVehicleModel({
    this.data,
    this.total,
  });

  factory ModelsListVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListVehicleModelFromJson(json);

  static const toJsonFactory = _$ModelsListVehicleModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListVehicleModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsVehicleModelResponse>[])
  final List<ModelsVehicleModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListVehicleModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListVehicleModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListVehicleModelExtension on ModelsListVehicleModel {
  ModelsListVehicleModel copyWith(
      {List<ModelsVehicleModelResponse>? data, int? total}) {
    return ModelsListVehicleModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListVehicleModel copyWithWrapped(
      {Wrapped<List<ModelsVehicleModelResponse>?>? data,
      Wrapped<int?>? total}) {
    return ModelsListVehicleModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsListVehicleTaskModel {
  const ModelsListVehicleTaskModel({
    this.data,
    this.total,
  });

  factory ModelsListVehicleTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsListVehicleTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsListVehicleTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsListVehicleTaskModelToJson(this);

  @JsonKey(name: 'data', defaultValue: <ModelsVehicleTaskModelResponse>[])
  final List<ModelsVehicleTaskModelResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ModelsListVehicleTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsListVehicleTaskModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsListVehicleTaskModelExtension on ModelsListVehicleTaskModel {
  ModelsListVehicleTaskModel copyWith(
      {List<ModelsVehicleTaskModelResponse>? data, int? total}) {
    return ModelsListVehicleTaskModel(
        data: data ?? this.data, total: total ?? this.total);
  }

  ModelsListVehicleTaskModel copyWithWrapped(
      {Wrapped<List<ModelsVehicleTaskModelResponse>?>? data,
      Wrapped<int?>? total}) {
    return ModelsListVehicleTaskModel(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsOwnerModelResponse {
  const ModelsOwnerModelResponse({
    this.address,
    this.createdAt,
    this.email,
    this.id,
    this.phone,
    this.photo,
    this.postalCode,
    this.updatedAt,
  });

  factory ModelsOwnerModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsOwnerModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsOwnerModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsOwnerModelResponseToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsOwnerModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsOwnerModelResponse &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsOwnerModelResponseExtension on ModelsOwnerModelResponse {
  ModelsOwnerModelResponse copyWith(
      {String? address,
      DateTime? createdAt,
      String? email,
      String? id,
      String? phone,
      String? photo,
      String? postalCode,
      DateTime? updatedAt}) {
    return ModelsOwnerModelResponse(
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        email: email ?? this.email,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsOwnerModelResponse copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? email,
      Wrapped<String?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsOwnerModelResponse(
        address: (address != null ? address.value : this.address),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        email: (email != null ? email.value : this.email),
        id: (id != null ? id.value : this.id),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsPermissionModelResponse {
  const ModelsPermissionModelResponse({
    this.available,
    this.createdAt,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory ModelsPermissionModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsPermissionModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsPermissionModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsPermissionModelResponseToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsPermissionModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsPermissionModelResponse &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsPermissionModelResponseExtension
    on ModelsPermissionModelResponse {
  ModelsPermissionModelResponse copyWith(
      {bool? available,
      DateTime? createdAt,
      String? id,
      String? label,
      DateTime? updatedAt}) {
    return ModelsPermissionModelResponse(
        available: available ?? this.available,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsPermissionModelResponse copyWithWrapped(
      {Wrapped<bool?>? available,
      Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsPermissionModelResponse(
        available: (available != null ? available.value : this.available),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsSparePartModelResponse {
  const ModelsSparePartModelResponse({
    this.barcode,
    this.createdAt,
    this.id,
    this.reference,
    this.updatedAt,
  });

  factory ModelsSparePartModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsSparePartModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsSparePartModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsSparePartModelResponseToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsSparePartModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsSparePartModelResponse &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsSparePartModelResponseExtension
    on ModelsSparePartModelResponse {
  ModelsSparePartModelResponse copyWith(
      {String? barcode,
      DateTime? createdAt,
      String? id,
      String? reference,
      DateTime? updatedAt}) {
    return ModelsSparePartModelResponse(
        barcode: barcode ?? this.barcode,
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        reference: reference ?? this.reference,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsSparePartModelResponse copyWithWrapped(
      {Wrapped<String?>? barcode,
      Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? reference,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsSparePartModelResponse(
        barcode: (barcode != null ? barcode.value : this.barcode),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        reference: (reference != null ? reference.value : this.reference),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsSupplierModelResponse {
  const ModelsSupplierModelResponse({
    this.createdAt,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory ModelsSupplierModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsSupplierModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsSupplierModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsSupplierModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsSupplierModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsSupplierModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsSupplierModelResponseExtension on ModelsSupplierModelResponse {
  ModelsSupplierModelResponse copyWith(
      {DateTime? createdAt, String? id, String? name, DateTime? updatedAt}) {
    return ModelsSupplierModelResponse(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsSupplierModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsSupplierModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsTaskModelResponse {
  const ModelsTaskModelResponse({
    this.createdAt,
    this.id,
    this.label,
    this.parentId,
    this.task,
    this.taskIds,
    this.updatedAt,
  });

  factory ModelsTaskModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsTaskModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsTaskModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsTaskModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @JsonKey(name: 'task', defaultValue: <ModelsTaskModelResponse>[])
  final List<ModelsTaskModelResponse>? task;
  @JsonKey(name: 'task_ids', defaultValue: <String>[])
  final List<String>? taskIds;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsTaskModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsTaskModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.taskIds, taskIds) ||
                const DeepCollectionEquality()
                    .equals(other.taskIds, taskIds)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(taskIds) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsTaskModelResponseExtension on ModelsTaskModelResponse {
  ModelsTaskModelResponse copyWith(
      {DateTime? createdAt,
      String? id,
      String? label,
      String? parentId,
      List<ModelsTaskModelResponse>? task,
      List<String>? taskIds,
      DateTime? updatedAt}) {
    return ModelsTaskModelResponse(
        createdAt: createdAt ?? this.createdAt,
        id: id ?? this.id,
        label: label ?? this.label,
        parentId: parentId ?? this.parentId,
        task: task ?? this.task,
        taskIds: taskIds ?? this.taskIds,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsTaskModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<String?>? id,
      Wrapped<String?>? label,
      Wrapped<String?>? parentId,
      Wrapped<List<ModelsTaskModelResponse>?>? task,
      Wrapped<List<String>?>? taskIds,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsTaskModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        parentId: (parentId != null ? parentId.value : this.parentId),
        task: (task != null ? task.value : this.task),
        taskIds: (taskIds != null ? taskIds.value : this.taskIds),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsTotalCount {
  const ModelsTotalCount({
    this.count,
  });

  factory ModelsTotalCount.fromJson(Map<String, dynamic> json) =>
      _$ModelsTotalCountFromJson(json);

  static const toJsonFactory = _$ModelsTotalCountToJson;
  Map<String, dynamic> toJson() => _$ModelsTotalCountToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  static const fromJsonFactory = _$ModelsTotalCountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsTotalCount &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^ runtimeType.hashCode;
}

extension $ModelsTotalCountExtension on ModelsTotalCount {
  ModelsTotalCount copyWith({int? count}) {
    return ModelsTotalCount(count: count ?? this.count);
  }

  ModelsTotalCount copyWithWrapped({Wrapped<int?>? count}) {
    return ModelsTotalCount(count: (count != null ? count.value : this.count));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateAccountModel {
  const ModelsUpdateAccountModel({
    this.email,
    this.name,
  });

  factory ModelsUpdateAccountModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateAccountModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateAccountModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateAccountModelToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsUpdateAccountModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateAccountModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ModelsUpdateAccountModelExtension on ModelsUpdateAccountModel {
  ModelsUpdateAccountModel copyWith({String? email, String? name}) {
    return ModelsUpdateAccountModel(
        email: email ?? this.email, name: name ?? this.name);
  }

  ModelsUpdateAccountModel copyWithWrapped(
      {Wrapped<String?>? email, Wrapped<String?>? name}) {
    return ModelsUpdateAccountModel(
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateEmployeeModel {
  const ModelsUpdateEmployeeModel({
    this.name,
  });

  factory ModelsUpdateEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateEmployeeModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateEmployeeModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateEmployeeModelToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsUpdateEmployeeModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateEmployeeModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $ModelsUpdateEmployeeModelExtension on ModelsUpdateEmployeeModel {
  ModelsUpdateEmployeeModel copyWith({String? name}) {
    return ModelsUpdateEmployeeModel(name: name ?? this.name);
  }

  ModelsUpdateEmployeeModel copyWithWrapped({Wrapped<String?>? name}) {
    return ModelsUpdateEmployeeModel(
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateGarageModel {
  const ModelsUpdateGarageModel({
    this.label,
  });

  factory ModelsUpdateGarageModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateGarageModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateGarageModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateGarageModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsUpdateGarageModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateGarageModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $ModelsUpdateGarageModelExtension on ModelsUpdateGarageModel {
  ModelsUpdateGarageModel copyWith({String? label}) {
    return ModelsUpdateGarageModel(label: label ?? this.label);
  }

  ModelsUpdateGarageModel copyWithWrapped({Wrapped<String?>? label}) {
    return ModelsUpdateGarageModel(
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateOwnerModel {
  const ModelsUpdateOwnerModel({
    this.address,
    this.email,
    this.phone,
    this.photo,
    this.postalCode,
  });

  factory ModelsUpdateOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateOwnerModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateOwnerModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateOwnerModelToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  static const fromJsonFactory = _$ModelsUpdateOwnerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateOwnerModel &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      runtimeType.hashCode;
}

extension $ModelsUpdateOwnerModelExtension on ModelsUpdateOwnerModel {
  ModelsUpdateOwnerModel copyWith(
      {String? address,
      String? email,
      String? phone,
      String? photo,
      String? postalCode}) {
    return ModelsUpdateOwnerModel(
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode);
  }

  ModelsUpdateOwnerModel copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode}) {
    return ModelsUpdateOwnerModel(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdatePermissionModel {
  const ModelsUpdatePermissionModel({
    this.available,
    this.label,
  });

  factory ModelsUpdatePermissionModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdatePermissionModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdatePermissionModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdatePermissionModelToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsUpdatePermissionModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdatePermissionModel &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $ModelsUpdatePermissionModelExtension on ModelsUpdatePermissionModel {
  ModelsUpdatePermissionModel copyWith({bool? available, String? label}) {
    return ModelsUpdatePermissionModel(
        available: available ?? this.available, label: label ?? this.label);
  }

  ModelsUpdatePermissionModel copyWithWrapped(
      {Wrapped<bool?>? available, Wrapped<String?>? label}) {
    return ModelsUpdatePermissionModel(
        available: (available != null ? available.value : this.available),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateSparePartModel {
  const ModelsUpdateSparePartModel({
    this.barcode,
    this.reference,
  });

  factory ModelsUpdateSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateSparePartModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateSparePartModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateSparePartModelToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'reference')
  final String? reference;
  static const fromJsonFactory = _$ModelsUpdateSparePartModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateSparePartModel &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(reference) ^
      runtimeType.hashCode;
}

extension $ModelsUpdateSparePartModelExtension on ModelsUpdateSparePartModel {
  ModelsUpdateSparePartModel copyWith({String? barcode, String? reference}) {
    return ModelsUpdateSparePartModel(
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference);
  }

  ModelsUpdateSparePartModel copyWithWrapped(
      {Wrapped<String?>? barcode, Wrapped<String?>? reference}) {
    return ModelsUpdateSparePartModel(
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateSupplierModel {
  const ModelsUpdateSupplierModel({
    this.name,
  });

  factory ModelsUpdateSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateSupplierModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateSupplierModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateSupplierModelToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsUpdateSupplierModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateSupplierModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $ModelsUpdateSupplierModelExtension on ModelsUpdateSupplierModel {
  ModelsUpdateSupplierModel copyWith({String? name}) {
    return ModelsUpdateSupplierModel(name: name ?? this.name);
  }

  ModelsUpdateSupplierModel copyWithWrapped({Wrapped<String?>? name}) {
    return ModelsUpdateSupplierModel(
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateTaskModel {
  const ModelsUpdateTaskModel({
    this.label,
    this.parentId,
  });

  factory ModelsUpdateTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateTaskModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_id')
  final String? parentId;
  static const fromJsonFactory = _$ModelsUpdateTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateTaskModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentId) ^
      runtimeType.hashCode;
}

extension $ModelsUpdateTaskModelExtension on ModelsUpdateTaskModel {
  ModelsUpdateTaskModel copyWith({String? label, String? parentId}) {
    return ModelsUpdateTaskModel(
        label: label ?? this.label, parentId: parentId ?? this.parentId);
  }

  ModelsUpdateTaskModel copyWithWrapped(
      {Wrapped<String?>? label, Wrapped<String?>? parentId}) {
    return ModelsUpdateTaskModel(
        label: (label != null ? label.value : this.label),
        parentId: (parentId != null ? parentId.value : this.parentId));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateVehicleModel {
  const ModelsUpdateVehicleModel({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.deliveryDate,
    this.expertise,
    this.firstCirculation,
    this.mileage,
    this.note,
    this.procedureVe,
    this.registration,
    this.serialNumber,
    this.soldAt,
  });

  factory ModelsUpdateVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateVehicleModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateVehicleModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateVehicleModelToJson(this);

  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collection_date')
  final DateTime? collectionDate;
  @JsonKey(name: 'commercial_name')
  final String? commercialName;
  @JsonKey(name: 'delivery_date')
  final DateTime? deliveryDate;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final DateTime? firstCirculation;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final DateTime? soldAt;
  static const fromJsonFactory = _$ModelsUpdateVehicleModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateVehicleModel &&
            (identical(other.chrono, chrono) ||
                const DeepCollectionEquality().equals(other.chrono, chrono)) &&
            (identical(other.collectionDate, collectionDate) ||
                const DeepCollectionEquality()
                    .equals(other.collectionDate, collectionDate)) &&
            (identical(other.commercialName, commercialName) ||
                const DeepCollectionEquality()
                    .equals(other.commercialName, commercialName)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.expertise, expertise) ||
                const DeepCollectionEquality()
                    .equals(other.expertise, expertise)) &&
            (identical(other.firstCirculation, firstCirculation) ||
                const DeepCollectionEquality()
                    .equals(other.firstCirculation, firstCirculation)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.procedureVe, procedureVe) ||
                const DeepCollectionEquality()
                    .equals(other.procedureVe, procedureVe)) &&
            (identical(other.registration, registration) ||
                const DeepCollectionEquality()
                    .equals(other.registration, registration)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.soldAt, soldAt) ||
                const DeepCollectionEquality().equals(other.soldAt, soldAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(expertise) ^
      const DeepCollectionEquality().hash(firstCirculation) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(procedureVe) ^
      const DeepCollectionEquality().hash(registration) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(soldAt) ^
      runtimeType.hashCode;
}

extension $ModelsUpdateVehicleModelExtension on ModelsUpdateVehicleModel {
  ModelsUpdateVehicleModel copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      DateTime? deliveryDate,
      bool? expertise,
      DateTime? firstCirculation,
      int? mileage,
      String? note,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt}) {
    return ModelsUpdateVehicleModel(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        expertise: expertise ?? this.expertise,
        firstCirculation: firstCirculation ?? this.firstCirculation,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt);
  }

  ModelsUpdateVehicleModel copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt}) {
    return ModelsUpdateVehicleModel(
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        expertise: (expertise != null ? expertise.value : this.expertise),
        firstCirculation: (firstCirculation != null
            ? firstCirculation.value
            : this.firstCirculation),
        mileage: (mileage != null ? mileage.value : this.mileage),
        note: (note != null ? note.value : this.note),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsUpdateVehicleTaskModel {
  const ModelsUpdateVehicleTaskModel({
    this.deleted,
    this.finishedAt,
    this.startedAt,
  });

  factory ModelsUpdateVehicleTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateVehicleTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateVehicleTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateVehicleTaskModelToJson(this);

  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  static const fromJsonFactory = _$ModelsUpdateVehicleTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateVehicleTaskModel &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(startedAt) ^
      runtimeType.hashCode;
}

extension $ModelsUpdateVehicleTaskModelExtension
    on ModelsUpdateVehicleTaskModel {
  ModelsUpdateVehicleTaskModel copyWith(
      {bool? deleted, DateTime? finishedAt, DateTime? startedAt}) {
    return ModelsUpdateVehicleTaskModel(
        deleted: deleted ?? this.deleted,
        finishedAt: finishedAt ?? this.finishedAt,
        startedAt: startedAt ?? this.startedAt);
  }

  ModelsUpdateVehicleTaskModel copyWithWrapped(
      {Wrapped<bool?>? deleted,
      Wrapped<DateTime?>? finishedAt,
      Wrapped<DateTime?>? startedAt}) {
    return ModelsUpdateVehicleTaskModel(
        deleted: (deleted != null ? deleted.value : this.deleted),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsVehicleModelResponse {
  const ModelsVehicleModelResponse({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.createdAt,
    this.deliveryDate,
    this.employee,
    this.employeeId,
    this.expertise,
    this.firstCirculation,
    this.id,
    this.mileage,
    this.note,
    this.owner,
    this.ownerId,
    this.procedureVe,
    this.registration,
    this.serialNumber,
    this.soldAt,
    this.updatedAt,
    this.vehicleTask,
    this.vehicleTaskIds,
  });

  factory ModelsVehicleModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsVehicleModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsVehicleModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsVehicleModelResponseToJson(this);

  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collection_date')
  final DateTime? collectionDate;
  @JsonKey(name: 'commercial_name')
  final String? commercialName;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'delivery_date')
  final DateTime? deliveryDate;
  @JsonKey(name: 'employee')
  final ModelsEmployeeModelResponse? employee;
  @JsonKey(name: 'employee_id')
  final String? employeeId;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final DateTime? firstCirculation;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner')
  final ModelsOwnerModelResponse? owner;
  @JsonKey(name: 'owner_id')
  final String? ownerId;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final DateTime? soldAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(
      name: 'vehicle_task', defaultValue: <ModelsVehicleTaskModelResponse>[])
  final List<ModelsVehicleTaskModelResponse>? vehicleTask;
  @JsonKey(name: 'vehicle_task_ids', defaultValue: <String>[])
  final List<String>? vehicleTaskIds;
  static const fromJsonFactory = _$ModelsVehicleModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsVehicleModelResponse &&
            (identical(other.chrono, chrono) ||
                const DeepCollectionEquality().equals(other.chrono, chrono)) &&
            (identical(other.collectionDate, collectionDate) ||
                const DeepCollectionEquality()
                    .equals(other.collectionDate, collectionDate)) &&
            (identical(other.commercialName, commercialName) ||
                const DeepCollectionEquality()
                    .equals(other.commercialName, commercialName)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.expertise, expertise) ||
                const DeepCollectionEquality()
                    .equals(other.expertise, expertise)) &&
            (identical(other.firstCirculation, firstCirculation) ||
                const DeepCollectionEquality()
                    .equals(other.firstCirculation, firstCirculation)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mileage, mileage) ||
                const DeepCollectionEquality()
                    .equals(other.mileage, mileage)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.procedureVe, procedureVe) ||
                const DeepCollectionEquality()
                    .equals(other.procedureVe, procedureVe)) &&
            (identical(other.registration, registration) ||
                const DeepCollectionEquality()
                    .equals(other.registration, registration)) &&
            (identical(other.serialNumber, serialNumber) ||
                const DeepCollectionEquality()
                    .equals(other.serialNumber, serialNumber)) &&
            (identical(other.soldAt, soldAt) ||
                const DeepCollectionEquality().equals(other.soldAt, soldAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicleTask, vehicleTask) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTask, vehicleTask)) &&
            (identical(other.vehicleTaskIds, vehicleTaskIds) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTaskIds, vehicleTaskIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(expertise) ^
      const DeepCollectionEquality().hash(firstCirculation) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(procedureVe) ^
      const DeepCollectionEquality().hash(registration) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(soldAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicleTask) ^
      const DeepCollectionEquality().hash(vehicleTaskIds) ^
      runtimeType.hashCode;
}

extension $ModelsVehicleModelResponseExtension on ModelsVehicleModelResponse {
  ModelsVehicleModelResponse copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      DateTime? createdAt,
      DateTime? deliveryDate,
      ModelsEmployeeModelResponse? employee,
      String? employeeId,
      bool? expertise,
      DateTime? firstCirculation,
      String? id,
      int? mileage,
      String? note,
      ModelsOwnerModelResponse? owner,
      String? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      DateTime? updatedAt,
      List<ModelsVehicleTaskModelResponse>? vehicleTask,
      List<String>? vehicleTaskIds}) {
    return ModelsVehicleModelResponse(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        createdAt: createdAt ?? this.createdAt,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        employee: employee ?? this.employee,
        employeeId: employeeId ?? this.employeeId,
        expertise: expertise ?? this.expertise,
        firstCirculation: firstCirculation ?? this.firstCirculation,
        id: id ?? this.id,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        owner: owner ?? this.owner,
        ownerId: ownerId ?? this.ownerId,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicleTask: vehicleTask ?? this.vehicleTask,
        vehicleTaskIds: vehicleTaskIds ?? this.vehicleTaskIds);
  }

  ModelsVehicleModelResponse copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<ModelsEmployeeModelResponse?>? employee,
      Wrapped<String?>? employeeId,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<String?>? id,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<ModelsOwnerModelResponse?>? owner,
      Wrapped<String?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<ModelsVehicleTaskModelResponse>?>? vehicleTask,
      Wrapped<List<String>?>? vehicleTaskIds}) {
    return ModelsVehicleModelResponse(
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        employee: (employee != null ? employee.value : this.employee),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        expertise: (expertise != null ? expertise.value : this.expertise),
        firstCirculation: (firstCirculation != null
            ? firstCirculation.value
            : this.firstCirculation),
        id: (id != null ? id.value : this.id),
        mileage: (mileage != null ? mileage.value : this.mileage),
        note: (note != null ? note.value : this.note),
        owner: (owner != null ? owner.value : this.owner),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicleTask:
            (vehicleTask != null ? vehicleTask.value : this.vehicleTask),
        vehicleTaskIds: (vehicleTaskIds != null
            ? vehicleTaskIds.value
            : this.vehicleTaskIds));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsVehicleTaskModelResponse {
  const ModelsVehicleTaskModelResponse({
    this.createdAt,
    this.deleted,
    this.employee,
    this.employeeId,
    this.finishedAt,
    this.id,
    this.startedAt,
    this.task,
    this.taskId,
    this.updatedAt,
    this.vehicle,
    this.vehicleId,
  });

  factory ModelsVehicleTaskModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsVehicleTaskModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsVehicleTaskModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsVehicleTaskModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'employee')
  final ModelsEmployeeModelResponse? employee;
  @JsonKey(name: 'employee_id')
  final String? employeeId;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'task')
  final ModelsTaskModelResponse? task;
  @JsonKey(name: 'task_id')
  final String? taskId;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'vehicle')
  final ModelsVehicleModelResponse? vehicle;
  @JsonKey(name: 'vehicle_id')
  final String? vehicleId;
  static const fromJsonFactory = _$ModelsVehicleTaskModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsVehicleTaskModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $ModelsVehicleTaskModelResponseExtension
    on ModelsVehicleTaskModelResponse {
  ModelsVehicleTaskModelResponse copyWith(
      {DateTime? createdAt,
      bool? deleted,
      ModelsEmployeeModelResponse? employee,
      String? employeeId,
      DateTime? finishedAt,
      String? id,
      DateTime? startedAt,
      ModelsTaskModelResponse? task,
      String? taskId,
      DateTime? updatedAt,
      ModelsVehicleModelResponse? vehicle,
      String? vehicleId}) {
    return ModelsVehicleTaskModelResponse(
        createdAt: createdAt ?? this.createdAt,
        deleted: deleted ?? this.deleted,
        employee: employee ?? this.employee,
        employeeId: employeeId ?? this.employeeId,
        finishedAt: finishedAt ?? this.finishedAt,
        id: id ?? this.id,
        startedAt: startedAt ?? this.startedAt,
        task: task ?? this.task,
        taskId: taskId ?? this.taskId,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicle: vehicle ?? this.vehicle,
        vehicleId: vehicleId ?? this.vehicleId);
  }

  ModelsVehicleTaskModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<bool?>? deleted,
      Wrapped<ModelsEmployeeModelResponse?>? employee,
      Wrapped<String?>? employeeId,
      Wrapped<DateTime?>? finishedAt,
      Wrapped<String?>? id,
      Wrapped<DateTime?>? startedAt,
      Wrapped<ModelsTaskModelResponse?>? task,
      Wrapped<String?>? taskId,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<ModelsVehicleModelResponse?>? vehicle,
      Wrapped<String?>? vehicleId}) {
    return ModelsVehicleTaskModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deleted: (deleted != null ? deleted.value : this.deleted),
        employee: (employee != null ? employee.value : this.employee),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        id: (id != null ? id.value : this.id),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        task: (task != null ? task.value : this.task),
        taskId: (taskId != null ? taskId.value : this.taskId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicle: (vehicle != null ? vehicle.value : this.vehicle),
        vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId));
  }
}

@JsonSerializable(explicitToJson: true)
class UtilsResponseError {
  const UtilsResponseError({
    this.code,
    this.message,
  });

  factory UtilsResponseError.fromJson(Map<String, dynamic> json) =>
      _$UtilsResponseErrorFromJson(json);

  static const toJsonFactory = _$UtilsResponseErrorToJson;
  Map<String, dynamic> toJson() => _$UtilsResponseErrorToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$UtilsResponseErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UtilsResponseError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $UtilsResponseErrorExtension on UtilsResponseError {
  UtilsResponseError copyWith({int? code, String? message}) {
    return UtilsResponseError(
        code: code ?? this.code, message: message ?? this.message);
  }

  UtilsResponseError copyWithWrapped(
      {Wrapped<int?>? code, Wrapped<String?>? message}) {
    return UtilsResponseError(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message));
  }
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
