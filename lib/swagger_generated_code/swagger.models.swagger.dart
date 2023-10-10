// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class GormDeletedAt {
  const GormDeletedAt({
    this.time,
    this.valid,
  });

  factory GormDeletedAt.fromJson(Map<String, dynamic> json) =>
      _$GormDeletedAtFromJson(json);

  static const toJsonFactory = _$GormDeletedAtToJson;
  Map<String, dynamic> toJson() => _$GormDeletedAtToJson(this);

  @JsonKey(name: 'time')
  final String? time;
  @JsonKey(name: 'valid')
  final bool? valid;
  static const fromJsonFactory = _$GormDeletedAtFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GormDeletedAt &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(valid) ^
      runtimeType.hashCode;
}

extension $GormDeletedAtExtension on GormDeletedAt {
  GormDeletedAt copyWith({String? time, bool? valid}) {
    return GormDeletedAt(time: time ?? this.time, valid: valid ?? this.valid);
  }

  GormDeletedAt copyWithWrapped(
      {Wrapped<String?>? time, Wrapped<bool?>? valid}) {
    return GormDeletedAt(
        time: (time != null ? time.value : this.time),
        valid: (valid != null ? valid.value : this.valid));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsAccountModelResponse {
  const ModelsAccountModelResponse({
    this.createdAt,
    this.deletedAt,
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
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final int? id;
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
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
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
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsAccountModelResponseExtension on ModelsAccountModelResponse {
  ModelsAccountModelResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return ModelsAccountModelResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsAccountModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsAccountModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
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
    this.createdTasks,
    this.createdVehicles,
    this.deletedVehicles,
    this.name,
  });

  factory ModelsCreateEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateEmployeeModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateEmployeeModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateEmployeeModelToJson(this);

  @JsonKey(
      name: 'created_tasks', defaultValue: <ModelsCreateVehicleTaskModel>[])
  final List<ModelsCreateVehicleTaskModel>? createdTasks;
  @JsonKey(name: 'created_vehicles', defaultValue: <ModelsCreateVehicleModel>[])
  final List<ModelsCreateVehicleModel>? createdVehicles;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <ModelsCreateVehicleModel>[])
  final List<ModelsCreateVehicleModel>? deletedVehicles;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsCreateEmployeeModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateEmployeeModel &&
            (identical(other.createdTasks, createdTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdTasks, createdTasks)) &&
            (identical(other.createdVehicles, createdVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicles, createdVehicles)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ModelsCreateEmployeeModelExtension on ModelsCreateEmployeeModel {
  ModelsCreateEmployeeModel copyWith(
      {List<ModelsCreateVehicleTaskModel>? createdTasks,
      List<ModelsCreateVehicleModel>? createdVehicles,
      List<ModelsCreateVehicleModel>? deletedVehicles,
      String? name}) {
    return ModelsCreateEmployeeModel(
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        name: name ?? this.name);
  }

  ModelsCreateEmployeeModel copyWithWrapped(
      {Wrapped<List<ModelsCreateVehicleTaskModel>?>? createdTasks,
      Wrapped<List<ModelsCreateVehicleModel>?>? createdVehicles,
      Wrapped<List<ModelsCreateVehicleModel>?>? deletedVehicles,
      Wrapped<String?>? name}) {
    return ModelsCreateEmployeeModel(
        createdTasks:
            (createdTasks != null ? createdTasks.value : this.createdTasks),
        createdVehicles: (createdVehicles != null
            ? createdVehicles.value
            : this.createdVehicles),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
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
    this.vehicles,
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
  @JsonKey(name: 'vehicles', defaultValue: <ModelsCreateVehicleModel>[])
  final List<ModelsCreateVehicleModel>? vehicles;
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
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
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
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $ModelsCreateOwnerModelExtension on ModelsCreateOwnerModel {
  ModelsCreateOwnerModel copyWith(
      {String? address,
      String? email,
      String? phone,
      String? photo,
      String? postalCode,
      List<ModelsCreateVehicleModel>? vehicles}) {
    return ModelsCreateOwnerModel(
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        vehicles: vehicles ?? this.vehicles);
  }

  ModelsCreateOwnerModel copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<List<ModelsCreateVehicleModel>?>? vehicles}) {
    return ModelsCreateOwnerModel(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles));
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
    this.parentTaskId,
    this.subTasks,
    this.vehicleTasks,
  });

  factory ModelsCreateTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateTaskModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'sub_tasks', defaultValue: <ModelsCreateTaskModel>[])
  final List<ModelsCreateTaskModel>? subTasks;
  @JsonKey(
      name: 'vehicle_tasks', defaultValue: <ModelsCreateVehicleTaskModel>[])
  final List<ModelsCreateVehicleTaskModel>? vehicleTasks;
  static const fromJsonFactory = _$ModelsCreateTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateTaskModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTaskId, parentTaskId) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskId, parentTaskId)) &&
            (identical(other.subTasks, subTasks) ||
                const DeepCollectionEquality()
                    .equals(other.subTasks, subTasks)) &&
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $ModelsCreateTaskModelExtension on ModelsCreateTaskModel {
  ModelsCreateTaskModel copyWith(
      {String? label,
      int? parentTaskId,
      List<ModelsCreateTaskModel>? subTasks,
      List<ModelsCreateVehicleTaskModel>? vehicleTasks}) {
    return ModelsCreateTaskModel(
        label: label ?? this.label,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        subTasks: subTasks ?? this.subTasks,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  ModelsCreateTaskModel copyWithWrapped(
      {Wrapped<String?>? label,
      Wrapped<int?>? parentTaskId,
      Wrapped<List<ModelsCreateTaskModel>?>? subTasks,
      Wrapped<List<ModelsCreateVehicleTaskModel>?>? vehicleTasks}) {
    return ModelsCreateTaskModel(
        label: (label != null ? label.value : this.label),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateVehicleModel {
  const ModelsCreateVehicleModel({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.createdById,
    this.deletedById,
    this.deliveryDate,
    this.expertise,
    this.firstCirculation,
    this.mileage,
    this.note,
    this.ownerId,
    this.procedureVe,
    this.registration,
    this.serialNumber,
    this.soldAt,
    this.tasks,
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
  final int? createdById;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
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
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final DateTime? soldAt;
  @JsonKey(name: 'tasks', defaultValue: <ModelsCreateVehicleTaskModel>[])
  final List<ModelsCreateVehicleTaskModel>? tasks;
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
            (identical(other.deletedById, deletedById) ||
                const DeepCollectionEquality()
                    .equals(other.deletedById, deletedById)) &&
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
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(expertise) ^
      const DeepCollectionEquality().hash(firstCirculation) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(procedureVe) ^
      const DeepCollectionEquality().hash(registration) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(soldAt) ^
      const DeepCollectionEquality().hash(tasks) ^
      runtimeType.hashCode;
}

extension $ModelsCreateVehicleModelExtension on ModelsCreateVehicleModel {
  ModelsCreateVehicleModel copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      int? createdById,
      int? deletedById,
      DateTime? deliveryDate,
      bool? expertise,
      DateTime? firstCirculation,
      int? mileage,
      String? note,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      List<ModelsCreateVehicleTaskModel>? tasks}) {
    return ModelsCreateVehicleModel(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        createdById: createdById ?? this.createdById,
        deletedById: deletedById ?? this.deletedById,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        expertise: expertise ?? this.expertise,
        firstCirculation: firstCirculation ?? this.firstCirculation,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        ownerId: ownerId ?? this.ownerId,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt,
        tasks: tasks ?? this.tasks);
  }

  ModelsCreateVehicleModel copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<int?>? createdById,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<List<ModelsCreateVehicleTaskModel>?>? tasks}) {
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
        deletedById:
            (deletedById != null ? deletedById.value : this.deletedById),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        expertise: (expertise != null ? expertise.value : this.expertise),
        firstCirculation: (firstCirculation != null
            ? firstCirculation.value
            : this.firstCirculation),
        mileage: (mileage != null ? mileage.value : this.mileage),
        note: (note != null ? note.value : this.note),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt),
        tasks: (tasks != null ? tasks.value : this.tasks));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCreateVehicleTaskModel {
  const ModelsCreateVehicleTaskModel({
    this.createdById,
    this.deleted,
    this.finishdedAt,
    this.startedAt,
    this.tasksId,
    this.vehiclesId,
  });

  factory ModelsCreateVehicleTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateVehicleTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsCreateVehicleTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsCreateVehicleTaskModelToJson(this);

  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'finishded_at')
  final DateTime? finishdedAt;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'tasks_id')
  final int? tasksId;
  @JsonKey(name: 'vehicles_id')
  final int? vehiclesId;
  static const fromJsonFactory = _$ModelsCreateVehicleTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCreateVehicleTaskModel &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.finishdedAt, finishdedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishdedAt, finishdedAt)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.tasksId, tasksId) ||
                const DeepCollectionEquality()
                    .equals(other.tasksId, tasksId)) &&
            (identical(other.vehiclesId, vehiclesId) ||
                const DeepCollectionEquality()
                    .equals(other.vehiclesId, vehiclesId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(finishdedAt) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(tasksId) ^
      const DeepCollectionEquality().hash(vehiclesId) ^
      runtimeType.hashCode;
}

extension $ModelsCreateVehicleTaskModelExtension
    on ModelsCreateVehicleTaskModel {
  ModelsCreateVehicleTaskModel copyWith(
      {int? createdById,
      bool? deleted,
      DateTime? finishdedAt,
      DateTime? startedAt,
      int? tasksId,
      int? vehiclesId}) {
    return ModelsCreateVehicleTaskModel(
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        startedAt: startedAt ?? this.startedAt,
        tasksId: tasksId ?? this.tasksId,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  ModelsCreateVehicleTaskModel copyWithWrapped(
      {Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<DateTime?>? startedAt,
      Wrapped<int?>? tasksId,
      Wrapped<int?>? vehiclesId}) {
    return ModelsCreateVehicleTaskModel(
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        finishdedAt:
            (finishdedAt != null ? finishdedAt.value : this.finishdedAt),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        tasksId: (tasksId != null ? tasksId.value : this.tasksId),
        vehiclesId: (vehiclesId != null ? vehiclesId.value : this.vehiclesId));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsEmployeeModel {
  const ModelsEmployeeModel({
    this.createdAt,
    this.createdTasks,
    this.createdVehicles,
    this.deletedAt,
    this.deletedVehicles,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory ModelsEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsEmployeeModelFromJson(json);

  static const toJsonFactory = _$ModelsEmployeeModelToJson;
  Map<String, dynamic> toJson() => _$ModelsEmployeeModelToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_tasks', defaultValue: <ModelsVehicleTaskModel>[])
  final List<ModelsVehicleTaskModel>? createdTasks;
  @JsonKey(name: 'created_vehicles', defaultValue: <ModelsVehicleModel>[])
  final List<ModelsVehicleModel>? createdVehicles;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <ModelsVehicleModel>[])
  final List<ModelsVehicleModel>? deletedVehicles;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsEmployeeModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsEmployeeModel &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdTasks, createdTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdTasks, createdTasks)) &&
            (identical(other.createdVehicles, createdVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicles, createdVehicles)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
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
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsEmployeeModelExtension on ModelsEmployeeModel {
  ModelsEmployeeModel copyWith(
      {DateTime? createdAt,
      List<ModelsVehicleTaskModel>? createdTasks,
      List<ModelsVehicleModel>? createdVehicles,
      GormDeletedAt? deletedAt,
      List<ModelsVehicleModel>? deletedVehicles,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return ModelsEmployeeModel(
        createdAt: createdAt ?? this.createdAt,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsEmployeeModel copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<List<ModelsVehicleTaskModel>?>? createdTasks,
      Wrapped<List<ModelsVehicleModel>?>? createdVehicles,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<ModelsVehicleModel>?>? deletedVehicles,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsEmployeeModel(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdTasks:
            (createdTasks != null ? createdTasks.value : this.createdTasks),
        createdVehicles: (createdVehicles != null
            ? createdVehicles.value
            : this.createdVehicles),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsEmployeeModelResponse {
  const ModelsEmployeeModelResponse({
    this.createdAt,
    this.createdTasks,
    this.createdVehicles,
    this.deletedAt,
    this.deletedVehicles,
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
  @JsonKey(
      name: 'created_tasks', defaultValue: <ModelsVehicleTaskModelResponse>[])
  final List<ModelsVehicleTaskModelResponse>? createdTasks;
  @JsonKey(
      name: 'created_vehicles', defaultValue: <ModelsVehicleModelResponse>[])
  final List<ModelsVehicleModelResponse>? createdVehicles;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(
      name: 'deleted_vehicles', defaultValue: <ModelsVehicleModelResponse>[])
  final List<ModelsVehicleModelResponse>? deletedVehicles;
  @JsonKey(name: 'id')
  final int? id;
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
            (identical(other.createdTasks, createdTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdTasks, createdTasks)) &&
            (identical(other.createdVehicles, createdVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicles, createdVehicles)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
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
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsEmployeeModelResponseExtension on ModelsEmployeeModelResponse {
  ModelsEmployeeModelResponse copyWith(
      {DateTime? createdAt,
      List<ModelsVehicleTaskModelResponse>? createdTasks,
      List<ModelsVehicleModelResponse>? createdVehicles,
      GormDeletedAt? deletedAt,
      List<ModelsVehicleModelResponse>? deletedVehicles,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return ModelsEmployeeModelResponse(
        createdAt: createdAt ?? this.createdAt,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsEmployeeModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<List<ModelsVehicleTaskModelResponse>?>? createdTasks,
      Wrapped<List<ModelsVehicleModelResponse>?>? createdVehicles,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<ModelsVehicleModelResponse>?>? deletedVehicles,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsEmployeeModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdTasks:
            (createdTasks != null ? createdTasks.value : this.createdTasks),
        createdVehicles: (createdVehicles != null
            ? createdVehicles.value
            : this.createdVehicles),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsGarageModelResponse {
  const ModelsGarageModelResponse({
    this.createdAt,
    this.deletedAt,
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
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
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
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
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
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsGarageModelResponseExtension on ModelsGarageModelResponse {
  ModelsGarageModelResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return ModelsGarageModelResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsGarageModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsGarageModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
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
class ModelsOwnerModel {
  const ModelsOwnerModel({
    this.address,
    this.createdAt,
    this.deletedAt,
    this.email,
    this.id,
    this.phone,
    this.photo,
    this.postalCode,
    this.updatedAt,
    this.vehicles,
  });

  factory ModelsOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsOwnerModelFromJson(json);

  static const toJsonFactory = _$ModelsOwnerModelToJson;
  Map<String, dynamic> toJson() => _$ModelsOwnerModelToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'vehicles', defaultValue: <ModelsVehicleModel>[])
  final List<ModelsVehicleModel>? vehicles;
  static const fromJsonFactory = _$ModelsOwnerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsOwnerModel &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
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
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $ModelsOwnerModelExtension on ModelsOwnerModel {
  ModelsOwnerModel copyWith(
      {String? address,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      int? id,
      String? phone,
      String? photo,
      String? postalCode,
      DateTime? updatedAt,
      List<ModelsVehicleModel>? vehicles}) {
    return ModelsOwnerModel(
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicles: vehicles ?? this.vehicles);
  }

  ModelsOwnerModel copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<int?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<ModelsVehicleModel>?>? vehicles}) {
    return ModelsOwnerModel(
        address: (address != null ? address.value : this.address),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        id: (id != null ? id.value : this.id),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsOwnerModelResponse {
  const ModelsOwnerModelResponse({
    this.address,
    this.createdAt,
    this.deletedAt,
    this.email,
    this.id,
    this.phone,
    this.photo,
    this.postalCode,
    this.updatedAt,
    this.vehicles,
  });

  factory ModelsOwnerModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsOwnerModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsOwnerModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsOwnerModelResponseToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'vehicles', defaultValue: <ModelsVehicleModelResponse>[])
  final List<ModelsVehicleModelResponse>? vehicles;
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
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
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
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $ModelsOwnerModelResponseExtension on ModelsOwnerModelResponse {
  ModelsOwnerModelResponse copyWith(
      {String? address,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      int? id,
      String? phone,
      String? photo,
      String? postalCode,
      DateTime? updatedAt,
      List<ModelsVehicleModelResponse>? vehicles}) {
    return ModelsOwnerModelResponse(
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicles: vehicles ?? this.vehicles);
  }

  ModelsOwnerModelResponse copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<int?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<ModelsVehicleModelResponse>?>? vehicles}) {
    return ModelsOwnerModelResponse(
        address: (address != null ? address.value : this.address),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        id: (id != null ? id.value : this.id),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsPermissionModelResponse {
  const ModelsPermissionModelResponse({
    this.available,
    this.createdAt,
    this.deletedAt,
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
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
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
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
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
      const DeepCollectionEquality().hash(deletedAt) ^
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
      GormDeletedAt? deletedAt,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return ModelsPermissionModelResponse(
        available: available ?? this.available,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsPermissionModelResponse copyWithWrapped(
      {Wrapped<bool?>? available,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsPermissionModelResponse(
        available: (available != null ? available.value : this.available),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
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
    this.deletedAt,
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
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
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
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
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
      const DeepCollectionEquality().hash(deletedAt) ^
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
      GormDeletedAt? deletedAt,
      int? id,
      String? reference,
      DateTime? updatedAt}) {
    return ModelsSparePartModelResponse(
        barcode: barcode ?? this.barcode,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        reference: reference ?? this.reference,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsSparePartModelResponse copyWithWrapped(
      {Wrapped<String?>? barcode,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? reference,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsSparePartModelResponse(
        barcode: (barcode != null ? barcode.value : this.barcode),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        reference: (reference != null ? reference.value : this.reference),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsSupplierModelResponse {
  const ModelsSupplierModelResponse({
    this.createdAt,
    this.deletedAt,
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
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
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
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
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
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsSupplierModelResponseExtension on ModelsSupplierModelResponse {
  ModelsSupplierModelResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return ModelsSupplierModelResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsSupplierModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsSupplierModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsTaskModel {
  const ModelsTaskModel({
    this.createdAt,
    this.deletedAt,
    this.id,
    this.label,
    this.parentTaskId,
    this.subTasks,
    this.updatedAt,
    this.vehicleTasks,
  });

  factory ModelsTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsTaskModelToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'sub_tasks', defaultValue: <ModelsTaskModel>[])
  final List<ModelsTaskModel>? subTasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'vehicle_tasks', defaultValue: <ModelsVehicleTaskModel>[])
  final List<ModelsVehicleTaskModel>? vehicleTasks;
  static const fromJsonFactory = _$ModelsTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsTaskModel &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTaskId, parentTaskId) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskId, parentTaskId)) &&
            (identical(other.subTasks, subTasks) ||
                const DeepCollectionEquality()
                    .equals(other.subTasks, subTasks)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $ModelsTaskModelExtension on ModelsTaskModel {
  ModelsTaskModel copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      int? id,
      String? label,
      int? parentTaskId,
      List<ModelsTaskModel>? subTasks,
      DateTime? updatedAt,
      List<ModelsVehicleTaskModel>? vehicleTasks}) {
    return ModelsTaskModel(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        label: label ?? this.label,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        subTasks: subTasks ?? this.subTasks,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  ModelsTaskModel copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskId,
      Wrapped<List<ModelsTaskModel>?>? subTasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<ModelsVehicleTaskModel>?>? vehicleTasks}) {
    return ModelsTaskModel(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsTaskModelResponse {
  const ModelsTaskModelResponse({
    this.createdAt,
    this.deletedAt,
    this.id,
    this.label,
    this.parentTask,
    this.parentTaskId,
    this.subTasks,
    this.updatedAt,
    this.vehicleTasks,
  });

  factory ModelsTaskModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsTaskModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsTaskModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsTaskModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task')
  final ModelsTaskModel? parentTask;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'sub_tasks', defaultValue: <ModelsTaskModelResponse>[])
  final List<ModelsTaskModelResponse>? subTasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(
      name: 'vehicle_tasks', defaultValue: <ModelsVehicleTaskModelResponse>[])
  final List<ModelsVehicleTaskModelResponse>? vehicleTasks;
  static const fromJsonFactory = _$ModelsTaskModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsTaskModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTask, parentTask) ||
                const DeepCollectionEquality()
                    .equals(other.parentTask, parentTask)) &&
            (identical(other.parentTaskId, parentTaskId) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskId, parentTaskId)) &&
            (identical(other.subTasks, subTasks) ||
                const DeepCollectionEquality()
                    .equals(other.subTasks, subTasks)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTask) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $ModelsTaskModelResponseExtension on ModelsTaskModelResponse {
  ModelsTaskModelResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      int? id,
      String? label,
      ModelsTaskModel? parentTask,
      int? parentTaskId,
      List<ModelsTaskModelResponse>? subTasks,
      DateTime? updatedAt,
      List<ModelsVehicleTaskModelResponse>? vehicleTasks}) {
    return ModelsTaskModelResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        label: label ?? this.label,
        parentTask: parentTask ?? this.parentTask,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        subTasks: subTasks ?? this.subTasks,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  ModelsTaskModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<ModelsTaskModel?>? parentTask,
      Wrapped<int?>? parentTaskId,
      Wrapped<List<ModelsTaskModelResponse>?>? subTasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<ModelsVehicleTaskModelResponse>?>? vehicleTasks}) {
    return ModelsTaskModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        parentTask: (parentTask != null ? parentTask.value : this.parentTask),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
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
  });

  factory ModelsUpdateTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateTaskModelToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$ModelsUpdateTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsUpdateTaskModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $ModelsUpdateTaskModelExtension on ModelsUpdateTaskModel {
  ModelsUpdateTaskModel copyWith({String? label}) {
    return ModelsUpdateTaskModel(label: label ?? this.label);
  }

  ModelsUpdateTaskModel copyWithWrapped({Wrapped<String?>? label}) {
    return ModelsUpdateTaskModel(
        label: (label != null ? label.value : this.label));
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
    this.finishdedAt,
    this.startedAt,
  });

  factory ModelsUpdateVehicleTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsUpdateVehicleTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsUpdateVehicleTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsUpdateVehicleTaskModelToJson(this);

  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'finishded_at')
  final DateTime? finishdedAt;
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
            (identical(other.finishdedAt, finishdedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishdedAt, finishdedAt)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(finishdedAt) ^
      const DeepCollectionEquality().hash(startedAt) ^
      runtimeType.hashCode;
}

extension $ModelsUpdateVehicleTaskModelExtension
    on ModelsUpdateVehicleTaskModel {
  ModelsUpdateVehicleTaskModel copyWith(
      {bool? deleted, DateTime? finishdedAt, DateTime? startedAt}) {
    return ModelsUpdateVehicleTaskModel(
        deleted: deleted ?? this.deleted,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        startedAt: startedAt ?? this.startedAt);
  }

  ModelsUpdateVehicleTaskModel copyWithWrapped(
      {Wrapped<bool?>? deleted,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<DateTime?>? startedAt}) {
    return ModelsUpdateVehicleTaskModel(
        deleted: (deleted != null ? deleted.value : this.deleted),
        finishdedAt:
            (finishdedAt != null ? finishdedAt.value : this.finishdedAt),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsVehicleModel {
  const ModelsVehicleModel({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.createdAt,
    this.createdById,
    this.deletedAt,
    this.deletedById,
    this.deliveryDate,
    this.expertise,
    this.firstCirculation,
    this.id,
    this.mileage,
    this.note,
    this.ownerId,
    this.procedureVe,
    this.registration,
    this.serialNumber,
    this.soldAt,
    this.tasks,
    this.updatedAt,
  });

  factory ModelsVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsVehicleModelFromJson(json);

  static const toJsonFactory = _$ModelsVehicleModelToJson;
  Map<String, dynamic> toJson() => _$ModelsVehicleModelToJson(this);

  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collection_date')
  final DateTime? collectionDate;
  @JsonKey(name: 'commercial_name')
  final String? commercialName;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'delivery_date')
  final DateTime? deliveryDate;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final DateTime? firstCirculation;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final DateTime? soldAt;
  @JsonKey(name: 'tasks', defaultValue: <ModelsVehicleTaskModel>[])
  final List<ModelsVehicleTaskModel>? tasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$ModelsVehicleModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsVehicleModel &&
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
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.deletedById, deletedById) ||
                const DeepCollectionEquality()
                    .equals(other.deletedById, deletedById)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
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
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(expertise) ^
      const DeepCollectionEquality().hash(firstCirculation) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mileage) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(procedureVe) ^
      const DeepCollectionEquality().hash(registration) ^
      const DeepCollectionEquality().hash(serialNumber) ^
      const DeepCollectionEquality().hash(soldAt) ^
      const DeepCollectionEquality().hash(tasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsVehicleModelExtension on ModelsVehicleModel {
  ModelsVehicleModel copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      DateTime? createdAt,
      int? createdById,
      GormDeletedAt? deletedAt,
      int? deletedById,
      DateTime? deliveryDate,
      bool? expertise,
      DateTime? firstCirculation,
      int? id,
      int? mileage,
      String? note,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      List<ModelsVehicleTaskModel>? tasks,
      DateTime? updatedAt}) {
    return ModelsVehicleModel(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        createdAt: createdAt ?? this.createdAt,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedById: deletedById ?? this.deletedById,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        expertise: expertise ?? this.expertise,
        firstCirculation: firstCirculation ?? this.firstCirculation,
        id: id ?? this.id,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        ownerId: ownerId ?? this.ownerId,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt,
        tasks: tasks ?? this.tasks,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsVehicleModel copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<DateTime?>? createdAt,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<int?>? id,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<List<ModelsVehicleTaskModel>?>? tasks,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsVehicleModel(
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedById:
            (deletedById != null ? deletedById.value : this.deletedById),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
        expertise: (expertise != null ? expertise.value : this.expertise),
        firstCirculation: (firstCirculation != null
            ? firstCirculation.value
            : this.firstCirculation),
        id: (id != null ? id.value : this.id),
        mileage: (mileage != null ? mileage.value : this.mileage),
        note: (note != null ? note.value : this.note),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt),
        tasks: (tasks != null ? tasks.value : this.tasks),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsVehicleModelResponse {
  const ModelsVehicleModelResponse({
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deletedAt,
    this.deletedBy,
    this.deletedById,
    this.deliveryDate,
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
    this.tasks,
    this.updatedAt,
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
  @JsonKey(name: 'created_by')
  final ModelsEmployeeModel? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'deleted_by')
  final ModelsEmployeeModel? deletedBy;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'delivery_date')
  final DateTime? deliveryDate;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final DateTime? firstCirculation;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner')
  final ModelsOwnerModel? owner;
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @JsonKey(name: 'procedure_ve')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serial_number')
  final String? serialNumber;
  @JsonKey(name: 'sold_at')
  final DateTime? soldAt;
  @JsonKey(name: 'tasks', defaultValue: <ModelsVehicleTaskModelResponse>[])
  final List<ModelsVehicleTaskModelResponse>? tasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
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
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.deletedBy, deletedBy) ||
                const DeepCollectionEquality()
                    .equals(other.deletedBy, deletedBy)) &&
            (identical(other.deletedById, deletedById) ||
                const DeepCollectionEquality()
                    .equals(other.deletedById, deletedById)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
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
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedBy) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
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
      const DeepCollectionEquality().hash(tasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ModelsVehicleModelResponseExtension on ModelsVehicleModelResponse {
  ModelsVehicleModelResponse copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      DateTime? createdAt,
      ModelsEmployeeModel? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      ModelsEmployeeModel? deletedBy,
      int? deletedById,
      DateTime? deliveryDate,
      bool? expertise,
      DateTime? firstCirculation,
      int? id,
      int? mileage,
      String? note,
      ModelsOwnerModel? owner,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      List<ModelsVehicleTaskModelResponse>? tasks,
      DateTime? updatedAt}) {
    return ModelsVehicleModelResponse(
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedBy: deletedBy ?? this.deletedBy,
        deletedById: deletedById ?? this.deletedById,
        deliveryDate: deliveryDate ?? this.deliveryDate,
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
        tasks: tasks ?? this.tasks,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  ModelsVehicleModelResponse copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<DateTime?>? createdAt,
      Wrapped<ModelsEmployeeModel?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<ModelsEmployeeModel?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<int?>? id,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<ModelsOwnerModel?>? owner,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<List<ModelsVehicleTaskModelResponse>?>? tasks,
      Wrapped<DateTime?>? updatedAt}) {
    return ModelsVehicleModelResponse(
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedBy: (deletedBy != null ? deletedBy.value : this.deletedBy),
        deletedById:
            (deletedById != null ? deletedById.value : this.deletedById),
        deliveryDate:
            (deliveryDate != null ? deliveryDate.value : this.deliveryDate),
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
        tasks: (tasks != null ? tasks.value : this.tasks),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsVehicleTaskModel {
  const ModelsVehicleTaskModel({
    this.createdAt,
    this.createdById,
    this.deleted,
    this.deletedAt,
    this.finishdedAt,
    this.id,
    this.startedAt,
    this.tasksId,
    this.updatedAt,
    this.vehiclesId,
  });

  factory ModelsVehicleTaskModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsVehicleTaskModelFromJson(json);

  static const toJsonFactory = _$ModelsVehicleTaskModelToJson;
  Map<String, dynamic> toJson() => _$ModelsVehicleTaskModelToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'finishded_at')
  final DateTime? finishdedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'tasks_id')
  final int? tasksId;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'vehicles_id')
  final int? vehiclesId;
  static const fromJsonFactory = _$ModelsVehicleTaskModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsVehicleTaskModel &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.finishdedAt, finishdedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishdedAt, finishdedAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.tasksId, tasksId) ||
                const DeepCollectionEquality()
                    .equals(other.tasksId, tasksId)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehiclesId, vehiclesId) ||
                const DeepCollectionEquality()
                    .equals(other.vehiclesId, vehiclesId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(finishdedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(tasksId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehiclesId) ^
      runtimeType.hashCode;
}

extension $ModelsVehicleTaskModelExtension on ModelsVehicleTaskModel {
  ModelsVehicleTaskModel copyWith(
      {DateTime? createdAt,
      int? createdById,
      bool? deleted,
      GormDeletedAt? deletedAt,
      DateTime? finishdedAt,
      int? id,
      DateTime? startedAt,
      int? tasksId,
      DateTime? updatedAt,
      int? vehiclesId}) {
    return ModelsVehicleTaskModel(
        createdAt: createdAt ?? this.createdAt,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedAt: deletedAt ?? this.deletedAt,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        id: id ?? this.id,
        startedAt: startedAt ?? this.startedAt,
        tasksId: tasksId ?? this.tasksId,
        updatedAt: updatedAt ?? this.updatedAt,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  ModelsVehicleTaskModel copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<int?>? id,
      Wrapped<DateTime?>? startedAt,
      Wrapped<int?>? tasksId,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<int?>? vehiclesId}) {
    return ModelsVehicleTaskModel(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        finishdedAt:
            (finishdedAt != null ? finishdedAt.value : this.finishdedAt),
        id: (id != null ? id.value : this.id),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        tasksId: (tasksId != null ? tasksId.value : this.tasksId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehiclesId: (vehiclesId != null ? vehiclesId.value : this.vehiclesId));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsVehicleTaskModelResponse {
  const ModelsVehicleTaskModelResponse({
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deleted,
    this.deletedAt,
    this.finishdedAt,
    this.id,
    this.startedAt,
    this.tasks,
    this.tasksId,
    this.updatedAt,
    this.vehicles,
    this.vehiclesId,
  });

  factory ModelsVehicleTaskModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelsVehicleTaskModelResponseFromJson(json);

  static const toJsonFactory = _$ModelsVehicleTaskModelResponseToJson;
  Map<String, dynamic> toJson() => _$ModelsVehicleTaskModelResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by')
  final ModelsEmployeeModel? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'finishded_at')
  final DateTime? finishdedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'tasks')
  final ModelsTaskModel? tasks;
  @JsonKey(name: 'tasks_id')
  final int? tasksId;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'vehicles')
  final ModelsVehicleModel? vehicles;
  @JsonKey(name: 'vehicles_id')
  final int? vehiclesId;
  static const fromJsonFactory = _$ModelsVehicleTaskModelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsVehicleTaskModelResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.finishdedAt, finishdedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishdedAt, finishdedAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)) &&
            (identical(other.tasksId, tasksId) ||
                const DeepCollectionEquality()
                    .equals(other.tasksId, tasksId)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)) &&
            (identical(other.vehiclesId, vehiclesId) ||
                const DeepCollectionEquality()
                    .equals(other.vehiclesId, vehiclesId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(finishdedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(tasks) ^
      const DeepCollectionEquality().hash(tasksId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(vehiclesId) ^
      runtimeType.hashCode;
}

extension $ModelsVehicleTaskModelResponseExtension
    on ModelsVehicleTaskModelResponse {
  ModelsVehicleTaskModelResponse copyWith(
      {DateTime? createdAt,
      ModelsEmployeeModel? createdBy,
      int? createdById,
      bool? deleted,
      GormDeletedAt? deletedAt,
      DateTime? finishdedAt,
      int? id,
      DateTime? startedAt,
      ModelsTaskModel? tasks,
      int? tasksId,
      DateTime? updatedAt,
      ModelsVehicleModel? vehicles,
      int? vehiclesId}) {
    return ModelsVehicleTaskModelResponse(
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedAt: deletedAt ?? this.deletedAt,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        id: id ?? this.id,
        startedAt: startedAt ?? this.startedAt,
        tasks: tasks ?? this.tasks,
        tasksId: tasksId ?? this.tasksId,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicles: vehicles ?? this.vehicles,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  ModelsVehicleTaskModelResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<ModelsEmployeeModel?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<int?>? id,
      Wrapped<DateTime?>? startedAt,
      Wrapped<ModelsTaskModel?>? tasks,
      Wrapped<int?>? tasksId,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<ModelsVehicleModel?>? vehicles,
      Wrapped<int?>? vehiclesId}) {
    return ModelsVehicleTaskModelResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        finishdedAt:
            (finishdedAt != null ? finishdedAt.value : this.finishdedAt),
        id: (id != null ? id.value : this.id),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        tasks: (tasks != null ? tasks.value : this.tasks),
        tasksId: (tasksId != null ? tasksId.value : this.tasksId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles),
        vehiclesId: (vehiclesId != null ? vehiclesId.value : this.vehiclesId));
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
