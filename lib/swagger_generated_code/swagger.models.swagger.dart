// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AccountAudit {
  const AccountAudit({
    this.accountModelID,
    this.action,
    this.actionAt,
    this.actionID,
    this.email,
    this.name,
    this.updatedAt,
  });

  factory AccountAudit.fromJson(Map<String, dynamic> json) =>
      _$AccountAuditFromJson(json);

  static const toJsonFactory = _$AccountAuditToJson;
  Map<String, dynamic> toJson() => _$AccountAuditToJson(this);

  @JsonKey(name: 'accountModelID')
  final int? accountModelID;
  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$AccountAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountAudit &&
            (identical(other.accountModelID, accountModelID) ||
                const DeepCollectionEquality()
                    .equals(other.accountModelID, accountModelID)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
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
      const DeepCollectionEquality().hash(accountModelID) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AccountAuditExtension on AccountAudit {
  AccountAudit copyWith(
      {int? accountModelID,
      String? action,
      String? actionAt,
      int? actionID,
      String? email,
      String? name,
      String? updatedAt}) {
    return AccountAudit(
        accountModelID: accountModelID ?? this.accountModelID,
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        email: email ?? this.email,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AccountAudit copyWithWrapped(
      {Wrapped<int?>? accountModelID,
      Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? email,
      Wrapped<String?>? name,
      Wrapped<String?>? updatedAt}) {
    return AccountAudit(
        accountModelID: (accountModelID != null
            ? accountModelID.value
            : this.accountModelID),
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountResponse {
  const AccountResponse({
    this.createdAt,
    this.deletedAt,
    this.email,
    this.history,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseFromJson(json);

  static const toJsonFactory = _$AccountResponseToJson;
  Map<String, dynamic> toJson() => _$AccountResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'history', defaultValue: <AccountAudit>[])
  final List<AccountAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$AccountResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AccountResponseExtension on AccountResponse {
  AccountResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      List<AccountAudit>? history,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return AccountResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        history: history ?? this.history,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AccountResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<List<AccountAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return AccountResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAccount {
  const CreateAccount({
    this.email,
    this.name,
  });

  factory CreateAccount.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountFromJson(json);

  static const toJsonFactory = _$CreateAccountToJson;
  Map<String, dynamic> toJson() => _$CreateAccountToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$CreateAccountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAccount &&
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

extension $CreateAccountExtension on CreateAccount {
  CreateAccount copyWith({String? email, String? name}) {
    return CreateAccount(email: email ?? this.email, name: name ?? this.name);
  }

  CreateAccount copyWithWrapped(
      {Wrapped<String?>? email, Wrapped<String?>? name}) {
    return CreateAccount(
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateEmployee {
  const CreateEmployee({
    this.createdGarages,
    this.createdTasks,
    this.createdVehicleTasks,
    this.createdVehicles,
    this.deletedVehicles,
    this.name,
    this.updatedTasts,
    this.updatedVehicles,
  });

  factory CreateEmployee.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeFromJson(json);

  static const toJsonFactory = _$CreateEmployeeToJson;
  Map<String, dynamic> toJson() => _$CreateEmployeeToJson(this);

  @JsonKey(name: 'created_garages', defaultValue: <CreateGarage>[])
  final List<CreateGarage>? createdGarages;
  @JsonKey(name: 'created_tasks', defaultValue: <CreateTask>[])
  final List<CreateTask>? createdTasks;
  @JsonKey(name: 'created_vehicle_tasks', defaultValue: <CreateVehicleTask>[])
  final List<CreateVehicleTask>? createdVehicleTasks;
  @JsonKey(name: 'created_vehicles', defaultValue: <CreateVehicle>[])
  final List<CreateVehicle>? createdVehicles;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <CreateVehicle>[])
  final List<CreateVehicle>? deletedVehicles;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_tasts', defaultValue: <CreateTask>[])
  final List<CreateTask>? updatedTasts;
  @JsonKey(name: 'updated_vehicles', defaultValue: <CreateVehicle>[])
  final List<CreateVehicle>? updatedVehicles;
  static const fromJsonFactory = _$CreateEmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateEmployee &&
            (identical(other.createdGarages, createdGarages) ||
                const DeepCollectionEquality()
                    .equals(other.createdGarages, createdGarages)) &&
            (identical(other.createdTasks, createdTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdTasks, createdTasks)) &&
            (identical(other.createdVehicleTasks, createdVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicleTasks, createdVehicleTasks)) &&
            (identical(other.createdVehicles, createdVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicles, createdVehicles)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedTasts, updatedTasts) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTasts, updatedTasts)) &&
            (identical(other.updatedVehicles, updatedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicles, updatedVehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdGarages) ^
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicleTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedTasts) ^
      const DeepCollectionEquality().hash(updatedVehicles) ^
      runtimeType.hashCode;
}

extension $CreateEmployeeExtension on CreateEmployee {
  CreateEmployee copyWith(
      {List<CreateGarage>? createdGarages,
      List<CreateTask>? createdTasks,
      List<CreateVehicleTask>? createdVehicleTasks,
      List<CreateVehicle>? createdVehicles,
      List<CreateVehicle>? deletedVehicles,
      String? name,
      List<CreateTask>? updatedTasts,
      List<CreateVehicle>? updatedVehicles}) {
    return CreateEmployee(
        createdGarages: createdGarages ?? this.createdGarages,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicleTasks: createdVehicleTasks ?? this.createdVehicleTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        name: name ?? this.name,
        updatedTasts: updatedTasts ?? this.updatedTasts,
        updatedVehicles: updatedVehicles ?? this.updatedVehicles);
  }

  CreateEmployee copyWithWrapped(
      {Wrapped<List<CreateGarage>?>? createdGarages,
      Wrapped<List<CreateTask>?>? createdTasks,
      Wrapped<List<CreateVehicleTask>?>? createdVehicleTasks,
      Wrapped<List<CreateVehicle>?>? createdVehicles,
      Wrapped<List<CreateVehicle>?>? deletedVehicles,
      Wrapped<String?>? name,
      Wrapped<List<CreateTask>?>? updatedTasts,
      Wrapped<List<CreateVehicle>?>? updatedVehicles}) {
    return CreateEmployee(
        createdGarages: (createdGarages != null
            ? createdGarages.value
            : this.createdGarages),
        createdTasks:
            (createdTasks != null ? createdTasks.value : this.createdTasks),
        createdVehicleTasks: (createdVehicleTasks != null
            ? createdVehicleTasks.value
            : this.createdVehicleTasks),
        createdVehicles: (createdVehicles != null
            ? createdVehicles.value
            : this.createdVehicles),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        name: (name != null ? name.value : this.name),
        updatedTasts:
            (updatedTasts != null ? updatedTasts.value : this.updatedTasts),
        updatedVehicles: (updatedVehicles != null
            ? updatedVehicles.value
            : this.updatedVehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateGarage {
  const CreateGarage({
    this.createdById,
    this.label,
  });

  factory CreateGarage.fromJson(Map<String, dynamic> json) =>
      _$CreateGarageFromJson(json);

  static const toJsonFactory = _$CreateGarageToJson;
  Map<String, dynamic> toJson() => _$CreateGarageToJson(this);

  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$CreateGarageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateGarage &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $CreateGarageExtension on CreateGarage {
  CreateGarage copyWith({int? createdById, String? label}) {
    return CreateGarage(
        createdById: createdById ?? this.createdById,
        label: label ?? this.label);
  }

  CreateGarage copyWithWrapped(
      {Wrapped<int?>? createdById, Wrapped<String?>? label}) {
    return CreateGarage(
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOwner {
  const CreateOwner({
    this.address,
    this.email,
    this.phone,
    this.photo,
    this.postalCode,
    this.vehicles,
  });

  factory CreateOwner.fromJson(Map<String, dynamic> json) =>
      _$CreateOwnerFromJson(json);

  static const toJsonFactory = _$CreateOwnerToJson;
  Map<String, dynamic> toJson() => _$CreateOwnerToJson(this);

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
  @JsonKey(name: 'vehicles', defaultValue: <CreateVehicle>[])
  final List<CreateVehicle>? vehicles;
  static const fromJsonFactory = _$CreateOwnerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateOwner &&
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

extension $CreateOwnerExtension on CreateOwner {
  CreateOwner copyWith(
      {String? address,
      String? email,
      String? phone,
      String? photo,
      String? postalCode,
      List<CreateVehicle>? vehicles}) {
    return CreateOwner(
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        vehicles: vehicles ?? this.vehicles);
  }

  CreateOwner copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<List<CreateVehicle>?>? vehicles}) {
    return CreateOwner(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class CreatePermission {
  const CreatePermission({
    this.available,
    this.label,
  });

  factory CreatePermission.fromJson(Map<String, dynamic> json) =>
      _$CreatePermissionFromJson(json);

  static const toJsonFactory = _$CreatePermissionToJson;
  Map<String, dynamic> toJson() => _$CreatePermissionToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$CreatePermissionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePermission &&
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

extension $CreatePermissionExtension on CreatePermission {
  CreatePermission copyWith({bool? available, String? label}) {
    return CreatePermission(
        available: available ?? this.available, label: label ?? this.label);
  }

  CreatePermission copyWithWrapped(
      {Wrapped<bool?>? available, Wrapped<String?>? label}) {
    return CreatePermission(
        available: (available != null ? available.value : this.available),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateSparePart {
  const CreateSparePart({
    this.barcode,
    this.reference,
  });

  factory CreateSparePart.fromJson(Map<String, dynamic> json) =>
      _$CreateSparePartFromJson(json);

  static const toJsonFactory = _$CreateSparePartToJson;
  Map<String, dynamic> toJson() => _$CreateSparePartToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'reference')
  final String? reference;
  static const fromJsonFactory = _$CreateSparePartFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSparePart &&
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

extension $CreateSparePartExtension on CreateSparePart {
  CreateSparePart copyWith({String? barcode, String? reference}) {
    return CreateSparePart(
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference);
  }

  CreateSparePart copyWithWrapped(
      {Wrapped<String?>? barcode, Wrapped<String?>? reference}) {
    return CreateSparePart(
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateSupplier {
  const CreateSupplier({
    this.name,
  });

  factory CreateSupplier.fromJson(Map<String, dynamic> json) =>
      _$CreateSupplierFromJson(json);

  static const toJsonFactory = _$CreateSupplierToJson;
  Map<String, dynamic> toJson() => _$CreateSupplierToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$CreateSupplierFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSupplier &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $CreateSupplierExtension on CreateSupplier {
  CreateSupplier copyWith({String? name}) {
    return CreateSupplier(name: name ?? this.name);
  }

  CreateSupplier copyWithWrapped({Wrapped<String?>? name}) {
    return CreateSupplier(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateTask {
  const CreateTask({
    this.createdById,
    this.label,
    this.parentTaskId,
    this.subTasks,
    this.updatedById,
    this.vehicleTasks,
  });

  factory CreateTask.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskFromJson(json);

  static const toJsonFactory = _$CreateTaskToJson;
  Map<String, dynamic> toJson() => _$CreateTaskToJson(this);

  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'sub_tasks', defaultValue: <CreateTask>[])
  final List<CreateTask>? subTasks;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle_tasks', defaultValue: <CreateVehicleTask>[])
  final List<CreateVehicleTask>? vehicleTasks;
  static const fromJsonFactory = _$CreateTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTask &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTaskId, parentTaskId) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskId, parentTaskId)) &&
            (identical(other.subTasks, subTasks) ||
                const DeepCollectionEquality()
                    .equals(other.subTasks, subTasks)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $CreateTaskExtension on CreateTask {
  CreateTask copyWith(
      {int? createdById,
      String? label,
      int? parentTaskId,
      List<CreateTask>? subTasks,
      int? updatedById,
      List<CreateVehicleTask>? vehicleTasks}) {
    return CreateTask(
        createdById: createdById ?? this.createdById,
        label: label ?? this.label,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        subTasks: subTasks ?? this.subTasks,
        updatedById: updatedById ?? this.updatedById,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  CreateTask copyWithWrapped(
      {Wrapped<int?>? createdById,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskId,
      Wrapped<List<CreateTask>?>? subTasks,
      Wrapped<int?>? updatedById,
      Wrapped<List<CreateVehicleTask>?>? vehicleTasks}) {
    return CreateTask(
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicle {
  const CreateVehicle({
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
    this.updatedById,
  });

  factory CreateVehicle.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleFromJson(json);

  static const toJsonFactory = _$CreateVehicleToJson;
  Map<String, dynamic> toJson() => _$CreateVehicleToJson(this);

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
  @JsonKey(name: 'tasks', defaultValue: <CreateVehicleTask>[])
  final List<CreateVehicleTask>? tasks;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$CreateVehicleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateVehicle &&
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
                const DeepCollectionEquality().equals(other.tasks, tasks)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
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
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $CreateVehicleExtension on CreateVehicle {
  CreateVehicle copyWith(
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
      List<CreateVehicleTask>? tasks,
      int? updatedById}) {
    return CreateVehicle(
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
        tasks: tasks ?? this.tasks,
        updatedById: updatedById ?? this.updatedById);
  }

  CreateVehicle copyWithWrapped(
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
      Wrapped<List<CreateVehicleTask>?>? tasks,
      Wrapped<int?>? updatedById}) {
    return CreateVehicle(
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
        tasks: (tasks != null ? tasks.value : this.tasks),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleTask {
  const CreateVehicleTask({
    this.createdById,
    this.deleted,
    this.finishdedAt,
    this.startedAt,
    this.tasksId,
    this.vehiclesId,
  });

  factory CreateVehicleTask.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleTaskFromJson(json);

  static const toJsonFactory = _$CreateVehicleTaskToJson;
  Map<String, dynamic> toJson() => _$CreateVehicleTaskToJson(this);

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
  static const fromJsonFactory = _$CreateVehicleTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateVehicleTask &&
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

extension $CreateVehicleTaskExtension on CreateVehicleTask {
  CreateVehicleTask copyWith(
      {int? createdById,
      bool? deleted,
      DateTime? finishdedAt,
      DateTime? startedAt,
      int? tasksId,
      int? vehiclesId}) {
    return CreateVehicleTask(
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        startedAt: startedAt ?? this.startedAt,
        tasksId: tasksId ?? this.tasksId,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  CreateVehicleTask copyWithWrapped(
      {Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<DateTime?>? startedAt,
      Wrapped<int?>? tasksId,
      Wrapped<int?>? vehiclesId}) {
    return CreateVehicleTask(
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
class Employee {
  const Employee({
    this.createdAt,
    this.createdGarages,
    this.createdTasks,
    this.createdVehicleTasks,
    this.createdVehicles,
    this.deletedAt,
    this.deletedVehicles,
    this.history,
    this.id,
    this.name,
    this.updatedAt,
    this.updatedTasts,
    this.updatedVehicles,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  static const toJsonFactory = _$EmployeeToJson;
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_garages', defaultValue: <Garage>[])
  final List<Garage>? createdGarages;
  @JsonKey(name: 'created_tasks', defaultValue: <Task>[])
  final List<Task>? createdTasks;
  @JsonKey(name: 'created_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? createdVehicleTasks;
  @JsonKey(name: 'created_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? createdVehicles;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? deletedVehicles;
  @JsonKey(name: 'history', defaultValue: <EmployeeAudit>[])
  final List<EmployeeAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_tasts', defaultValue: <Task>[])
  final List<Task>? updatedTasts;
  @JsonKey(name: 'updated_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? updatedVehicles;
  static const fromJsonFactory = _$EmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Employee &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdGarages, createdGarages) ||
                const DeepCollectionEquality()
                    .equals(other.createdGarages, createdGarages)) &&
            (identical(other.createdTasks, createdTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdTasks, createdTasks)) &&
            (identical(other.createdVehicleTasks, createdVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicleTasks, createdVehicleTasks)) &&
            (identical(other.createdVehicles, createdVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicles, createdVehicles)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedTasts, updatedTasts) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTasts, updatedTasts)) &&
            (identical(other.updatedVehicles, updatedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicles, updatedVehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdGarages) ^
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicleTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedTasts) ^
      const DeepCollectionEquality().hash(updatedVehicles) ^
      runtimeType.hashCode;
}

extension $EmployeeExtension on Employee {
  Employee copyWith(
      {DateTime? createdAt,
      List<Garage>? createdGarages,
      List<Task>? createdTasks,
      List<VehicleTask>? createdVehicleTasks,
      List<Vehicle>? createdVehicles,
      GormDeletedAt? deletedAt,
      List<Vehicle>? deletedVehicles,
      List<EmployeeAudit>? history,
      int? id,
      String? name,
      DateTime? updatedAt,
      List<Task>? updatedTasts,
      List<Vehicle>? updatedVehicles}) {
    return Employee(
        createdAt: createdAt ?? this.createdAt,
        createdGarages: createdGarages ?? this.createdGarages,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicleTasks: createdVehicleTasks ?? this.createdVehicleTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        history: history ?? this.history,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedTasts: updatedTasts ?? this.updatedTasts,
        updatedVehicles: updatedVehicles ?? this.updatedVehicles);
  }

  Employee copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<List<Garage>?>? createdGarages,
      Wrapped<List<Task>?>? createdTasks,
      Wrapped<List<VehicleTask>?>? createdVehicleTasks,
      Wrapped<List<Vehicle>?>? createdVehicles,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<Vehicle>?>? deletedVehicles,
      Wrapped<List<EmployeeAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<Task>?>? updatedTasts,
      Wrapped<List<Vehicle>?>? updatedVehicles}) {
    return Employee(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdGarages: (createdGarages != null
            ? createdGarages.value
            : this.createdGarages),
        createdTasks:
            (createdTasks != null ? createdTasks.value : this.createdTasks),
        createdVehicleTasks: (createdVehicleTasks != null
            ? createdVehicleTasks.value
            : this.createdVehicleTasks),
        createdVehicles: (createdVehicles != null
            ? createdVehicles.value
            : this.createdVehicles),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedTasts:
            (updatedTasts != null ? updatedTasts.value : this.updatedTasts),
        updatedVehicles: (updatedVehicles != null
            ? updatedVehicles.value
            : this.updatedVehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeAudit {
  const EmployeeAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.employeeModelID,
    this.name,
    this.updatedAt,
  });

  factory EmployeeAudit.fromJson(Map<String, dynamic> json) =>
      _$EmployeeAuditFromJson(json);

  static const toJsonFactory = _$EmployeeAuditToJson;
  Map<String, dynamic> toJson() => _$EmployeeAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'employeeModelID')
  final int? employeeModelID;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$EmployeeAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.employeeModelID, employeeModelID) ||
                const DeepCollectionEquality()
                    .equals(other.employeeModelID, employeeModelID)) &&
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
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(employeeModelID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $EmployeeAuditExtension on EmployeeAudit {
  EmployeeAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      int? employeeModelID,
      String? name,
      String? updatedAt}) {
    return EmployeeAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        employeeModelID: employeeModelID ?? this.employeeModelID,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  EmployeeAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<int?>? employeeModelID,
      Wrapped<String?>? name,
      Wrapped<String?>? updatedAt}) {
    return EmployeeAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        employeeModelID: (employeeModelID != null
            ? employeeModelID.value
            : this.employeeModelID),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeResponse {
  const EmployeeResponse({
    this.createdAt,
    this.createdGarages,
    this.createdTasks,
    this.createdVehicleTasks,
    this.createdVehicles,
    this.deletedAt,
    this.deletedVehicles,
    this.history,
    this.id,
    this.name,
    this.updatedAt,
    this.updatedTasts,
    this.updatedVehicles,
  });

  factory EmployeeResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeResponseFromJson(json);

  static const toJsonFactory = _$EmployeeResponseToJson;
  Map<String, dynamic> toJson() => _$EmployeeResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_garages', defaultValue: <GarageResponse>[])
  final List<GarageResponse>? createdGarages;
  @JsonKey(name: 'created_tasks', defaultValue: <TaskResponse>[])
  final List<TaskResponse>? createdTasks;
  @JsonKey(name: 'created_vehicle_tasks', defaultValue: <VehicleTaskResponse>[])
  final List<VehicleTaskResponse>? createdVehicleTasks;
  @JsonKey(name: 'created_vehicles', defaultValue: <VehicleResponse>[])
  final List<VehicleResponse>? createdVehicles;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <VehicleResponse>[])
  final List<VehicleResponse>? deletedVehicles;
  @JsonKey(name: 'history', defaultValue: <EmployeeAudit>[])
  final List<EmployeeAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_tasts', defaultValue: <TaskResponse>[])
  final List<TaskResponse>? updatedTasts;
  @JsonKey(name: 'updated_vehicles', defaultValue: <VehicleResponse>[])
  final List<VehicleResponse>? updatedVehicles;
  static const fromJsonFactory = _$EmployeeResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdGarages, createdGarages) ||
                const DeepCollectionEquality()
                    .equals(other.createdGarages, createdGarages)) &&
            (identical(other.createdTasks, createdTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdTasks, createdTasks)) &&
            (identical(other.createdVehicleTasks, createdVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicleTasks, createdVehicleTasks)) &&
            (identical(other.createdVehicles, createdVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.createdVehicles, createdVehicles)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedTasts, updatedTasts) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTasts, updatedTasts)) &&
            (identical(other.updatedVehicles, updatedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicles, updatedVehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdGarages) ^
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicleTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedTasts) ^
      const DeepCollectionEquality().hash(updatedVehicles) ^
      runtimeType.hashCode;
}

extension $EmployeeResponseExtension on EmployeeResponse {
  EmployeeResponse copyWith(
      {DateTime? createdAt,
      List<GarageResponse>? createdGarages,
      List<TaskResponse>? createdTasks,
      List<VehicleTaskResponse>? createdVehicleTasks,
      List<VehicleResponse>? createdVehicles,
      GormDeletedAt? deletedAt,
      List<VehicleResponse>? deletedVehicles,
      List<EmployeeAudit>? history,
      int? id,
      String? name,
      DateTime? updatedAt,
      List<TaskResponse>? updatedTasts,
      List<VehicleResponse>? updatedVehicles}) {
    return EmployeeResponse(
        createdAt: createdAt ?? this.createdAt,
        createdGarages: createdGarages ?? this.createdGarages,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicleTasks: createdVehicleTasks ?? this.createdVehicleTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        history: history ?? this.history,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedTasts: updatedTasts ?? this.updatedTasts,
        updatedVehicles: updatedVehicles ?? this.updatedVehicles);
  }

  EmployeeResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<List<GarageResponse>?>? createdGarages,
      Wrapped<List<TaskResponse>?>? createdTasks,
      Wrapped<List<VehicleTaskResponse>?>? createdVehicleTasks,
      Wrapped<List<VehicleResponse>?>? createdVehicles,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<VehicleResponse>?>? deletedVehicles,
      Wrapped<List<EmployeeAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<TaskResponse>?>? updatedTasts,
      Wrapped<List<VehicleResponse>?>? updatedVehicles}) {
    return EmployeeResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdGarages: (createdGarages != null
            ? createdGarages.value
            : this.createdGarages),
        createdTasks:
            (createdTasks != null ? createdTasks.value : this.createdTasks),
        createdVehicleTasks: (createdVehicleTasks != null
            ? createdVehicleTasks.value
            : this.createdVehicleTasks),
        createdVehicles: (createdVehicles != null
            ? createdVehicles.value
            : this.createdVehicles),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedTasts:
            (updatedTasts != null ? updatedTasts.value : this.updatedTasts),
        updatedVehicles: (updatedVehicles != null
            ? updatedVehicles.value
            : this.updatedVehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class Garage {
  const Garage({
    this.createdAt,
    this.createdById,
    this.deletedAt,
    this.history,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory Garage.fromJson(Map<String, dynamic> json) => _$GarageFromJson(json);

  static const toJsonFactory = _$GarageToJson;
  Map<String, dynamic> toJson() => _$GarageToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <GarageAudit>[])
  final List<GarageAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$GarageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Garage &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $GarageExtension on Garage {
  Garage copyWith(
      {DateTime? createdAt,
      int? createdById,
      GormDeletedAt? deletedAt,
      List<GarageAudit>? history,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return Garage(
        createdAt: createdAt ?? this.createdAt,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Garage copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<GarageAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return Garage(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class GarageAudit {
  const GarageAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.createdBy,
    this.createdById,
    this.garageModelID,
    this.label,
    this.updatedAt,
  });

  factory GarageAudit.fromJson(Map<String, dynamic> json) =>
      _$GarageAuditFromJson(json);

  static const toJsonFactory = _$GarageAuditToJson;
  Map<String, dynamic> toJson() => _$GarageAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'garageModelID')
  final int? garageModelID;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$GarageAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GarageAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.garageModelID, garageModelID) ||
                const DeepCollectionEquality()
                    .equals(other.garageModelID, garageModelID)) &&
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
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(garageModelID) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $GarageAuditExtension on GarageAudit {
  GarageAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      Employee? createdBy,
      int? createdById,
      int? garageModelID,
      String? label,
      String? updatedAt}) {
    return GarageAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        garageModelID: garageModelID ?? this.garageModelID,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  GarageAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<int?>? garageModelID,
      Wrapped<String?>? label,
      Wrapped<String?>? updatedAt}) {
    return GarageAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        garageModelID:
            (garageModelID != null ? garageModelID.value : this.garageModelID),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class GarageResponse {
  const GarageResponse({
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deletedAt,
    this.history,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory GarageResponse.fromJson(Map<String, dynamic> json) =>
      _$GarageResponseFromJson(json);

  static const toJsonFactory = _$GarageResponseToJson;
  Map<String, dynamic> toJson() => _$GarageResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <GarageAudit>[])
  final List<GarageAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$GarageResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GarageResponse &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $GarageResponseExtension on GarageResponse {
  GarageResponse copyWith(
      {DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      List<GarageAudit>? history,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return GarageResponse(
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  GarageResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<GarageAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return GarageResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ListAccount {
  const ListAccount({
    this.data,
    this.total,
  });

  factory ListAccount.fromJson(Map<String, dynamic> json) =>
      _$ListAccountFromJson(json);

  static const toJsonFactory = _$ListAccountToJson;
  Map<String, dynamic> toJson() => _$ListAccountToJson(this);

  @JsonKey(name: 'data', defaultValue: <AccountResponse>[])
  final List<AccountResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListAccountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListAccount &&
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

extension $ListAccountExtension on ListAccount {
  ListAccount copyWith({List<AccountResponse>? data, int? total}) {
    return ListAccount(data: data ?? this.data, total: total ?? this.total);
  }

  ListAccount copyWithWrapped(
      {Wrapped<List<AccountResponse>?>? data, Wrapped<int?>? total}) {
    return ListAccount(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListEmployee {
  const ListEmployee({
    this.data,
    this.total,
  });

  factory ListEmployee.fromJson(Map<String, dynamic> json) =>
      _$ListEmployeeFromJson(json);

  static const toJsonFactory = _$ListEmployeeToJson;
  Map<String, dynamic> toJson() => _$ListEmployeeToJson(this);

  @JsonKey(name: 'data', defaultValue: <EmployeeResponse>[])
  final List<EmployeeResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListEmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListEmployee &&
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

extension $ListEmployeeExtension on ListEmployee {
  ListEmployee copyWith({List<EmployeeResponse>? data, int? total}) {
    return ListEmployee(data: data ?? this.data, total: total ?? this.total);
  }

  ListEmployee copyWithWrapped(
      {Wrapped<List<EmployeeResponse>?>? data, Wrapped<int?>? total}) {
    return ListEmployee(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListGarage {
  const ListGarage({
    this.data,
    this.total,
  });

  factory ListGarage.fromJson(Map<String, dynamic> json) =>
      _$ListGarageFromJson(json);

  static const toJsonFactory = _$ListGarageToJson;
  Map<String, dynamic> toJson() => _$ListGarageToJson(this);

  @JsonKey(name: 'data', defaultValue: <GarageResponse>[])
  final List<GarageResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListGarageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListGarage &&
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

extension $ListGarageExtension on ListGarage {
  ListGarage copyWith({List<GarageResponse>? data, int? total}) {
    return ListGarage(data: data ?? this.data, total: total ?? this.total);
  }

  ListGarage copyWithWrapped(
      {Wrapped<List<GarageResponse>?>? data, Wrapped<int?>? total}) {
    return ListGarage(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListOwner {
  const ListOwner({
    this.data,
    this.total,
  });

  factory ListOwner.fromJson(Map<String, dynamic> json) =>
      _$ListOwnerFromJson(json);

  static const toJsonFactory = _$ListOwnerToJson;
  Map<String, dynamic> toJson() => _$ListOwnerToJson(this);

  @JsonKey(name: 'data', defaultValue: <OwnerResponse>[])
  final List<OwnerResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListOwnerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListOwner &&
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

extension $ListOwnerExtension on ListOwner {
  ListOwner copyWith({List<OwnerResponse>? data, int? total}) {
    return ListOwner(data: data ?? this.data, total: total ?? this.total);
  }

  ListOwner copyWithWrapped(
      {Wrapped<List<OwnerResponse>?>? data, Wrapped<int?>? total}) {
    return ListOwner(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListPermission {
  const ListPermission({
    this.data,
    this.total,
  });

  factory ListPermission.fromJson(Map<String, dynamic> json) =>
      _$ListPermissionFromJson(json);

  static const toJsonFactory = _$ListPermissionToJson;
  Map<String, dynamic> toJson() => _$ListPermissionToJson(this);

  @JsonKey(name: 'data', defaultValue: <PermissionResponse>[])
  final List<PermissionResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListPermissionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListPermission &&
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

extension $ListPermissionExtension on ListPermission {
  ListPermission copyWith({List<PermissionResponse>? data, int? total}) {
    return ListPermission(data: data ?? this.data, total: total ?? this.total);
  }

  ListPermission copyWithWrapped(
      {Wrapped<List<PermissionResponse>?>? data, Wrapped<int?>? total}) {
    return ListPermission(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListSparePart {
  const ListSparePart({
    this.data,
    this.total,
  });

  factory ListSparePart.fromJson(Map<String, dynamic> json) =>
      _$ListSparePartFromJson(json);

  static const toJsonFactory = _$ListSparePartToJson;
  Map<String, dynamic> toJson() => _$ListSparePartToJson(this);

  @JsonKey(name: 'data', defaultValue: <SparePartResponse>[])
  final List<SparePartResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListSparePartFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListSparePart &&
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

extension $ListSparePartExtension on ListSparePart {
  ListSparePart copyWith({List<SparePartResponse>? data, int? total}) {
    return ListSparePart(data: data ?? this.data, total: total ?? this.total);
  }

  ListSparePart copyWithWrapped(
      {Wrapped<List<SparePartResponse>?>? data, Wrapped<int?>? total}) {
    return ListSparePart(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListSupplier {
  const ListSupplier({
    this.data,
    this.total,
  });

  factory ListSupplier.fromJson(Map<String, dynamic> json) =>
      _$ListSupplierFromJson(json);

  static const toJsonFactory = _$ListSupplierToJson;
  Map<String, dynamic> toJson() => _$ListSupplierToJson(this);

  @JsonKey(name: 'data', defaultValue: <SupplierResponse>[])
  final List<SupplierResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListSupplierFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListSupplier &&
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

extension $ListSupplierExtension on ListSupplier {
  ListSupplier copyWith({List<SupplierResponse>? data, int? total}) {
    return ListSupplier(data: data ?? this.data, total: total ?? this.total);
  }

  ListSupplier copyWithWrapped(
      {Wrapped<List<SupplierResponse>?>? data, Wrapped<int?>? total}) {
    return ListSupplier(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListTask {
  const ListTask({
    this.data,
    this.total,
  });

  factory ListTask.fromJson(Map<String, dynamic> json) =>
      _$ListTaskFromJson(json);

  static const toJsonFactory = _$ListTaskToJson;
  Map<String, dynamic> toJson() => _$ListTaskToJson(this);

  @JsonKey(name: 'data', defaultValue: <TaskResponse>[])
  final List<TaskResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTask &&
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

extension $ListTaskExtension on ListTask {
  ListTask copyWith({List<TaskResponse>? data, int? total}) {
    return ListTask(data: data ?? this.data, total: total ?? this.total);
  }

  ListTask copyWithWrapped(
      {Wrapped<List<TaskResponse>?>? data, Wrapped<int?>? total}) {
    return ListTask(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListVehicle {
  const ListVehicle({
    this.data,
    this.total,
  });

  factory ListVehicle.fromJson(Map<String, dynamic> json) =>
      _$ListVehicleFromJson(json);

  static const toJsonFactory = _$ListVehicleToJson;
  Map<String, dynamic> toJson() => _$ListVehicleToJson(this);

  @JsonKey(name: 'data', defaultValue: <VehicleResponse>[])
  final List<VehicleResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListVehicleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListVehicle &&
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

extension $ListVehicleExtension on ListVehicle {
  ListVehicle copyWith({List<VehicleResponse>? data, int? total}) {
    return ListVehicle(data: data ?? this.data, total: total ?? this.total);
  }

  ListVehicle copyWithWrapped(
      {Wrapped<List<VehicleResponse>?>? data, Wrapped<int?>? total}) {
    return ListVehicle(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class ListVehicleTask {
  const ListVehicleTask({
    this.data,
    this.total,
  });

  factory ListVehicleTask.fromJson(Map<String, dynamic> json) =>
      _$ListVehicleTaskFromJson(json);

  static const toJsonFactory = _$ListVehicleTaskToJson;
  Map<String, dynamic> toJson() => _$ListVehicleTaskToJson(this);

  @JsonKey(name: 'data', defaultValue: <VehicleTaskResponse>[])
  final List<VehicleTaskResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListVehicleTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListVehicleTask &&
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

extension $ListVehicleTaskExtension on ListVehicleTask {
  ListVehicleTask copyWith({List<VehicleTaskResponse>? data, int? total}) {
    return ListVehicleTask(data: data ?? this.data, total: total ?? this.total);
  }

  ListVehicleTask copyWithWrapped(
      {Wrapped<List<VehicleTaskResponse>?>? data, Wrapped<int?>? total}) {
    return ListVehicleTask(
        data: (data != null ? data.value : this.data),
        total: (total != null ? total.value : this.total));
  }
}

@JsonSerializable(explicitToJson: true)
class Owner {
  const Owner({
    this.address,
    this.createdAt,
    this.deletedAt,
    this.email,
    this.history,
    this.id,
    this.phone,
    this.photo,
    this.postalCode,
    this.updatedAt,
    this.vehicles,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  static const toJsonFactory = _$OwnerToJson;
  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'history', defaultValue: <OwnerAudit>[])
  final List<OwnerAudit>? history;
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
  @JsonKey(name: 'vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? vehicles;
  static const fromJsonFactory = _$OwnerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Owner &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $OwnerExtension on Owner {
  Owner copyWith(
      {String? address,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      List<OwnerAudit>? history,
      int? id,
      String? phone,
      String? photo,
      String? postalCode,
      DateTime? updatedAt,
      List<Vehicle>? vehicles}) {
    return Owner(
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        history: history ?? this.history,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicles: vehicles ?? this.vehicles);
  }

  Owner copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<List<OwnerAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<Vehicle>?>? vehicles}) {
    return Owner(
        address: (address != null ? address.value : this.address),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class OwnerAudit {
  const OwnerAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.address,
    this.email,
    this.ownerModelID,
    this.phone,
    this.photo,
    this.postalCode,
    this.updatedAt,
  });

  factory OwnerAudit.fromJson(Map<String, dynamic> json) =>
      _$OwnerAuditFromJson(json);

  static const toJsonFactory = _$OwnerAuditToJson;
  Map<String, dynamic> toJson() => _$OwnerAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'ownerModelID')
  final int? ownerModelID;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$OwnerAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OwnerAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.ownerModelID, ownerModelID) ||
                const DeepCollectionEquality()
                    .equals(other.ownerModelID, ownerModelID)) &&
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
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(ownerModelID) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $OwnerAuditExtension on OwnerAudit {
  OwnerAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      String? address,
      String? email,
      int? ownerModelID,
      String? phone,
      String? photo,
      String? postalCode,
      String? updatedAt}) {
    return OwnerAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        address: address ?? this.address,
        email: email ?? this.email,
        ownerModelID: ownerModelID ?? this.ownerModelID,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  OwnerAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<int?>? ownerModelID,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<String?>? updatedAt}) {
    return OwnerAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        ownerModelID:
            (ownerModelID != null ? ownerModelID.value : this.ownerModelID),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class OwnerResponse {
  const OwnerResponse({
    this.address,
    this.createdAt,
    this.deletedAt,
    this.email,
    this.history,
    this.id,
    this.phone,
    this.photo,
    this.postalCode,
    this.updatedAt,
    this.vehicles,
  });

  factory OwnerResponse.fromJson(Map<String, dynamic> json) =>
      _$OwnerResponseFromJson(json);

  static const toJsonFactory = _$OwnerResponseToJson;
  Map<String, dynamic> toJson() => _$OwnerResponseToJson(this);

  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'history', defaultValue: <OwnerAudit>[])
  final List<OwnerAudit>? history;
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
  @JsonKey(name: 'vehicles', defaultValue: <VehicleResponse>[])
  final List<VehicleResponse>? vehicles;
  static const fromJsonFactory = _$OwnerResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OwnerResponse &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $OwnerResponseExtension on OwnerResponse {
  OwnerResponse copyWith(
      {String? address,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      List<OwnerAudit>? history,
      int? id,
      String? phone,
      String? photo,
      String? postalCode,
      DateTime? updatedAt,
      List<VehicleResponse>? vehicles}) {
    return OwnerResponse(
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        history: history ?? this.history,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicles: vehicles ?? this.vehicles);
  }

  OwnerResponse copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<List<OwnerAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<VehicleResponse>?>? vehicles}) {
    return OwnerResponse(
        address: (address != null ? address.value : this.address),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionAudit {
  const PermissionAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.available,
    this.label,
    this.permissionModelID,
    this.updatedAt,
  });

  factory PermissionAudit.fromJson(Map<String, dynamic> json) =>
      _$PermissionAuditFromJson(json);

  static const toJsonFactory = _$PermissionAuditToJson;
  Map<String, dynamic> toJson() => _$PermissionAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'permissionModelID')
  final int? permissionModelID;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$PermissionAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PermissionAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.permissionModelID, permissionModelID) ||
                const DeepCollectionEquality()
                    .equals(other.permissionModelID, permissionModelID)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(permissionModelID) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $PermissionAuditExtension on PermissionAudit {
  PermissionAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      bool? available,
      String? label,
      int? permissionModelID,
      String? updatedAt}) {
    return PermissionAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        available: available ?? this.available,
        label: label ?? this.label,
        permissionModelID: permissionModelID ?? this.permissionModelID,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  PermissionAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<bool?>? available,
      Wrapped<String?>? label,
      Wrapped<int?>? permissionModelID,
      Wrapped<String?>? updatedAt}) {
    return PermissionAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        available: (available != null ? available.value : this.available),
        label: (label != null ? label.value : this.label),
        permissionModelID: (permissionModelID != null
            ? permissionModelID.value
            : this.permissionModelID),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionResponse {
  const PermissionResponse({
    this.available,
    this.createdAt,
    this.deletedAt,
    this.history,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory PermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$PermissionResponseFromJson(json);

  static const toJsonFactory = _$PermissionResponseToJson;
  Map<String, dynamic> toJson() => _$PermissionResponseToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <PermissionAudit>[])
  final List<PermissionAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$PermissionResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PermissionResponse &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $PermissionResponseExtension on PermissionResponse {
  PermissionResponse copyWith(
      {bool? available,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      List<PermissionAudit>? history,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return PermissionResponse(
        available: available ?? this.available,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  PermissionResponse copyWithWrapped(
      {Wrapped<bool?>? available,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<PermissionAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return PermissionResponse(
        available: (available != null ? available.value : this.available),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class ResponseError {
  const ResponseError({
    this.code,
    this.message,
  });

  factory ResponseError.fromJson(Map<String, dynamic> json) =>
      _$ResponseErrorFromJson(json);

  static const toJsonFactory = _$ResponseErrorToJson;
  Map<String, dynamic> toJson() => _$ResponseErrorToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ResponseErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponseError &&
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

extension $ResponseErrorExtension on ResponseError {
  ResponseError copyWith({int? code, String? message}) {
    return ResponseError(
        code: code ?? this.code, message: message ?? this.message);
  }

  ResponseError copyWithWrapped(
      {Wrapped<int?>? code, Wrapped<String?>? message}) {
    return ResponseError(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class SparePartAudit {
  const SparePartAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.barcode,
    this.reference,
    this.sparePartModelID,
    this.updatedAt,
  });

  factory SparePartAudit.fromJson(Map<String, dynamic> json) =>
      _$SparePartAuditFromJson(json);

  static const toJsonFactory = _$SparePartAuditToJson;
  Map<String, dynamic> toJson() => _$SparePartAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'sparePartModelID')
  final int? sparePartModelID;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$SparePartAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SparePartAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.sparePartModelID, sparePartModelID) ||
                const DeepCollectionEquality()
                    .equals(other.sparePartModelID, sparePartModelID)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(sparePartModelID) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SparePartAuditExtension on SparePartAudit {
  SparePartAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      String? barcode,
      String? reference,
      int? sparePartModelID,
      String? updatedAt}) {
    return SparePartAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference,
        sparePartModelID: sparePartModelID ?? this.sparePartModelID,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SparePartAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? barcode,
      Wrapped<String?>? reference,
      Wrapped<int?>? sparePartModelID,
      Wrapped<String?>? updatedAt}) {
    return SparePartAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference),
        sparePartModelID: (sparePartModelID != null
            ? sparePartModelID.value
            : this.sparePartModelID),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class SparePartResponse {
  const SparePartResponse({
    this.barcode,
    this.createdAt,
    this.deletedAt,
    this.history,
    this.id,
    this.reference,
    this.updatedAt,
  });

  factory SparePartResponse.fromJson(Map<String, dynamic> json) =>
      _$SparePartResponseFromJson(json);

  static const toJsonFactory = _$SparePartResponseToJson;
  Map<String, dynamic> toJson() => _$SparePartResponseToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <SparePartAudit>[])
  final List<SparePartAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$SparePartResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SparePartResponse &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SparePartResponseExtension on SparePartResponse {
  SparePartResponse copyWith(
      {String? barcode,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      List<SparePartAudit>? history,
      int? id,
      String? reference,
      DateTime? updatedAt}) {
    return SparePartResponse(
        barcode: barcode ?? this.barcode,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        reference: reference ?? this.reference,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SparePartResponse copyWithWrapped(
      {Wrapped<String?>? barcode,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<SparePartAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? reference,
      Wrapped<DateTime?>? updatedAt}) {
    return SparePartResponse(
        barcode: (barcode != null ? barcode.value : this.barcode),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        reference: (reference != null ? reference.value : this.reference),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class SupplierAudit {
  const SupplierAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.name,
    this.supplierModelID,
    this.updatedAt,
  });

  factory SupplierAudit.fromJson(Map<String, dynamic> json) =>
      _$SupplierAuditFromJson(json);

  static const toJsonFactory = _$SupplierAuditToJson;
  Map<String, dynamic> toJson() => _$SupplierAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'supplierModelID')
  final int? supplierModelID;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$SupplierAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SupplierAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.supplierModelID, supplierModelID) ||
                const DeepCollectionEquality()
                    .equals(other.supplierModelID, supplierModelID)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(supplierModelID) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SupplierAuditExtension on SupplierAudit {
  SupplierAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      String? name,
      int? supplierModelID,
      String? updatedAt}) {
    return SupplierAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        name: name ?? this.name,
        supplierModelID: supplierModelID ?? this.supplierModelID,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SupplierAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? name,
      Wrapped<int?>? supplierModelID,
      Wrapped<String?>? updatedAt}) {
    return SupplierAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        name: (name != null ? name.value : this.name),
        supplierModelID: (supplierModelID != null
            ? supplierModelID.value
            : this.supplierModelID),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class SupplierResponse {
  const SupplierResponse({
    this.createdAt,
    this.deletedAt,
    this.history,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory SupplierResponse.fromJson(Map<String, dynamic> json) =>
      _$SupplierResponseFromJson(json);

  static const toJsonFactory = _$SupplierResponseToJson;
  Map<String, dynamic> toJson() => _$SupplierResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <SupplierAudit>[])
  final List<SupplierAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$SupplierResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SupplierResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SupplierResponseExtension on SupplierResponse {
  SupplierResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      List<SupplierAudit>? history,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return SupplierResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SupplierResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<SupplierAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return SupplierResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class Task {
  const Task({
    this.createdAt,
    this.createdById,
    this.deletedAt,
    this.history,
    this.id,
    this.label,
    this.parentTaskId,
    this.subTasks,
    this.updatedAt,
    this.updatedById,
    this.vehicleTasks,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  static const toJsonFactory = _$TaskToJson;
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <TaskAudit>[])
  final List<TaskAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'sub_tasks', defaultValue: <Task>[])
  final List<Task>? subTasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? vehicleTasks;
  static const fromJsonFactory = _$TaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Task &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $TaskExtension on Task {
  Task copyWith(
      {DateTime? createdAt,
      int? createdById,
      GormDeletedAt? deletedAt,
      List<TaskAudit>? history,
      int? id,
      String? label,
      int? parentTaskId,
      List<Task>? subTasks,
      DateTime? updatedAt,
      int? updatedById,
      List<VehicleTask>? vehicleTasks}) {
    return Task(
        createdAt: createdAt ?? this.createdAt,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        subTasks: subTasks ?? this.subTasks,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedById: updatedById ?? this.updatedById,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  Task copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<TaskAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskId,
      Wrapped<List<Task>?>? subTasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<int?>? updatedById,
      Wrapped<List<VehicleTask>?>? vehicleTasks}) {
    return Task(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskAudit {
  const TaskAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.createdBy,
    this.createdById,
    this.label,
    this.parentTask,
    this.parentTaskId,
    this.taskModelID,
    this.updatedBy,
    this.updatedById,
    this.updatedAt,
  });

  factory TaskAudit.fromJson(Map<String, dynamic> json) =>
      _$TaskAuditFromJson(json);

  static const toJsonFactory = _$TaskAuditToJson;
  Map<String, dynamic> toJson() => _$TaskAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task')
  final Task? parentTask;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'taskModelID')
  final int? taskModelID;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  static const fromJsonFactory = _$TaskAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTask, parentTask) ||
                const DeepCollectionEquality()
                    .equals(other.parentTask, parentTask)) &&
            (identical(other.parentTaskId, parentTaskId) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskId, parentTaskId)) &&
            (identical(other.taskModelID, taskModelID) ||
                const DeepCollectionEquality()
                    .equals(other.taskModelID, taskModelID)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTask) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(taskModelID) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $TaskAuditExtension on TaskAudit {
  TaskAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      Employee? createdBy,
      int? createdById,
      String? label,
      Task? parentTask,
      int? parentTaskId,
      int? taskModelID,
      Employee? updatedBy,
      int? updatedById,
      String? updatedAt}) {
    return TaskAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        label: label ?? this.label,
        parentTask: parentTask ?? this.parentTask,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        taskModelID: taskModelID ?? this.taskModelID,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  TaskAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<String?>? label,
      Wrapped<Task?>? parentTask,
      Wrapped<int?>? parentTaskId,
      Wrapped<int?>? taskModelID,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<String?>? updatedAt}) {
    return TaskAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label),
        parentTask: (parentTask != null ? parentTask.value : this.parentTask),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        taskModelID:
            (taskModelID != null ? taskModelID.value : this.taskModelID),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskResponse {
  const TaskResponse({
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deletedAt,
    this.history,
    this.id,
    this.label,
    this.parentTask,
    this.parentTaskId,
    this.subTasks,
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
    this.vehicleTasks,
  });

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  static const toJsonFactory = _$TaskResponseToJson;
  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <TaskAudit>[])
  final List<TaskAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task')
  final Task? parentTask;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'sub_tasks', defaultValue: <TaskResponse>[])
  final List<TaskResponse>? subTasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle_tasks', defaultValue: <VehicleTaskResponse>[])
  final List<VehicleTaskResponse>? vehicleTasks;
  static const fromJsonFactory = _$TaskResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskResponse &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTask) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $TaskResponseExtension on TaskResponse {
  TaskResponse copyWith(
      {DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      List<TaskAudit>? history,
      int? id,
      String? label,
      Task? parentTask,
      int? parentTaskId,
      List<TaskResponse>? subTasks,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById,
      List<VehicleTaskResponse>? vehicleTasks}) {
    return TaskResponse(
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        parentTask: parentTask ?? this.parentTask,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        subTasks: subTasks ?? this.subTasks,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  TaskResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<TaskAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<Task?>? parentTask,
      Wrapped<int?>? parentTaskId,
      Wrapped<List<TaskResponse>?>? subTasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<List<VehicleTaskResponse>?>? vehicleTasks}) {
    return TaskResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        parentTask: (parentTask != null ? parentTask.value : this.parentTask),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
  }
}

@JsonSerializable(explicitToJson: true)
class TotalCount {
  const TotalCount({
    this.count,
  });

  factory TotalCount.fromJson(Map<String, dynamic> json) =>
      _$TotalCountFromJson(json);

  static const toJsonFactory = _$TotalCountToJson;
  Map<String, dynamic> toJson() => _$TotalCountToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  static const fromJsonFactory = _$TotalCountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TotalCount &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^ runtimeType.hashCode;
}

extension $TotalCountExtension on TotalCount {
  TotalCount copyWith({int? count}) {
    return TotalCount(count: count ?? this.count);
  }

  TotalCount copyWithWrapped({Wrapped<int?>? count}) {
    return TotalCount(count: (count != null ? count.value : this.count));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateAccount {
  const UpdateAccount({
    this.email,
    this.name,
  });

  factory UpdateAccount.fromJson(Map<String, dynamic> json) =>
      _$UpdateAccountFromJson(json);

  static const toJsonFactory = _$UpdateAccountToJson;
  Map<String, dynamic> toJson() => _$UpdateAccountToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$UpdateAccountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAccount &&
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

extension $UpdateAccountExtension on UpdateAccount {
  UpdateAccount copyWith({String? email, String? name}) {
    return UpdateAccount(email: email ?? this.email, name: name ?? this.name);
  }

  UpdateAccount copyWithWrapped(
      {Wrapped<String?>? email, Wrapped<String?>? name}) {
    return UpdateAccount(
        email: (email != null ? email.value : this.email),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateEmployee {
  const UpdateEmployee({
    this.name,
  });

  factory UpdateEmployee.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmployeeFromJson(json);

  static const toJsonFactory = _$UpdateEmployeeToJson;
  Map<String, dynamic> toJson() => _$UpdateEmployeeToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$UpdateEmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateEmployee &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $UpdateEmployeeExtension on UpdateEmployee {
  UpdateEmployee copyWith({String? name}) {
    return UpdateEmployee(name: name ?? this.name);
  }

  UpdateEmployee copyWithWrapped({Wrapped<String?>? name}) {
    return UpdateEmployee(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateGarage {
  const UpdateGarage({
    this.createdById,
    this.label,
  });

  factory UpdateGarage.fromJson(Map<String, dynamic> json) =>
      _$UpdateGarageFromJson(json);

  static const toJsonFactory = _$UpdateGarageToJson;
  Map<String, dynamic> toJson() => _$UpdateGarageToJson(this);

  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$UpdateGarageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateGarage &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $UpdateGarageExtension on UpdateGarage {
  UpdateGarage copyWith({int? createdById, String? label}) {
    return UpdateGarage(
        createdById: createdById ?? this.createdById,
        label: label ?? this.label);
  }

  UpdateGarage copyWithWrapped(
      {Wrapped<int?>? createdById, Wrapped<String?>? label}) {
    return UpdateGarage(
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateOwner {
  const UpdateOwner({
    this.address,
    this.email,
    this.phone,
    this.photo,
    this.postalCode,
  });

  factory UpdateOwner.fromJson(Map<String, dynamic> json) =>
      _$UpdateOwnerFromJson(json);

  static const toJsonFactory = _$UpdateOwnerToJson;
  Map<String, dynamic> toJson() => _$UpdateOwnerToJson(this);

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
  static const fromJsonFactory = _$UpdateOwnerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateOwner &&
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

extension $UpdateOwnerExtension on UpdateOwner {
  UpdateOwner copyWith(
      {String? address,
      String? email,
      String? phone,
      String? photo,
      String? postalCode}) {
    return UpdateOwner(
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode);
  }

  UpdateOwner copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode}) {
    return UpdateOwner(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdatePermission {
  const UpdatePermission({
    this.available,
    this.label,
  });

  factory UpdatePermission.fromJson(Map<String, dynamic> json) =>
      _$UpdatePermissionFromJson(json);

  static const toJsonFactory = _$UpdatePermissionToJson;
  Map<String, dynamic> toJson() => _$UpdatePermissionToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$UpdatePermissionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePermission &&
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

extension $UpdatePermissionExtension on UpdatePermission {
  UpdatePermission copyWith({bool? available, String? label}) {
    return UpdatePermission(
        available: available ?? this.available, label: label ?? this.label);
  }

  UpdatePermission copyWithWrapped(
      {Wrapped<bool?>? available, Wrapped<String?>? label}) {
    return UpdatePermission(
        available: (available != null ? available.value : this.available),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateSparePart {
  const UpdateSparePart({
    this.barcode,
    this.reference,
  });

  factory UpdateSparePart.fromJson(Map<String, dynamic> json) =>
      _$UpdateSparePartFromJson(json);

  static const toJsonFactory = _$UpdateSparePartToJson;
  Map<String, dynamic> toJson() => _$UpdateSparePartToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'reference')
  final String? reference;
  static const fromJsonFactory = _$UpdateSparePartFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSparePart &&
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

extension $UpdateSparePartExtension on UpdateSparePart {
  UpdateSparePart copyWith({String? barcode, String? reference}) {
    return UpdateSparePart(
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference);
  }

  UpdateSparePart copyWithWrapped(
      {Wrapped<String?>? barcode, Wrapped<String?>? reference}) {
    return UpdateSparePart(
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateSupplier {
  const UpdateSupplier({
    this.name,
  });

  factory UpdateSupplier.fromJson(Map<String, dynamic> json) =>
      _$UpdateSupplierFromJson(json);

  static const toJsonFactory = _$UpdateSupplierToJson;
  Map<String, dynamic> toJson() => _$UpdateSupplierToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$UpdateSupplierFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateSupplier &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $UpdateSupplierExtension on UpdateSupplier {
  UpdateSupplier copyWith({String? name}) {
    return UpdateSupplier(name: name ?? this.name);
  }

  UpdateSupplier copyWithWrapped({Wrapped<String?>? name}) {
    return UpdateSupplier(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateTask {
  const UpdateTask({
    this.createdById,
    this.label,
    this.parentTaskId,
    this.updatedById,
  });

  factory UpdateTask.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskFromJson(json);

  static const toJsonFactory = _$UpdateTaskToJson;
  Map<String, dynamic> toJson() => _$UpdateTaskToJson(this);

  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$UpdateTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTask &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTaskId, parentTaskId) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskId, parentTaskId)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $UpdateTaskExtension on UpdateTask {
  UpdateTask copyWith(
      {int? createdById, String? label, int? parentTaskId, int? updatedById}) {
    return UpdateTask(
        createdById: createdById ?? this.createdById,
        label: label ?? this.label,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        updatedById: updatedById ?? this.updatedById);
  }

  UpdateTask copyWithWrapped(
      {Wrapped<int?>? createdById,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskId,
      Wrapped<int?>? updatedById}) {
    return UpdateTask(
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label),
        parentTaskId:
            (parentTaskId != null ? parentTaskId.value : this.parentTaskId),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateVehicle {
  const UpdateVehicle({
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
    this.updatedById,
  });

  factory UpdateVehicle.fromJson(Map<String, dynamic> json) =>
      _$UpdateVehicleFromJson(json);

  static const toJsonFactory = _$UpdateVehicleToJson;
  Map<String, dynamic> toJson() => _$UpdateVehicleToJson(this);

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
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$UpdateVehicleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateVehicle &&
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
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
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
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $UpdateVehicleExtension on UpdateVehicle {
  UpdateVehicle copyWith(
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
      int? updatedById}) {
    return UpdateVehicle(
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
        updatedById: updatedById ?? this.updatedById);
  }

  UpdateVehicle copyWithWrapped(
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
      Wrapped<int?>? updatedById}) {
    return UpdateVehicle(
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
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateVehicleTask {
  const UpdateVehicleTask({
    this.createdById,
    this.deleted,
    this.finishdedAt,
    this.startedAt,
    this.tasksId,
    this.vehiclesId,
  });

  factory UpdateVehicleTask.fromJson(Map<String, dynamic> json) =>
      _$UpdateVehicleTaskFromJson(json);

  static const toJsonFactory = _$UpdateVehicleTaskToJson;
  Map<String, dynamic> toJson() => _$UpdateVehicleTaskToJson(this);

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
  static const fromJsonFactory = _$UpdateVehicleTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateVehicleTask &&
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

extension $UpdateVehicleTaskExtension on UpdateVehicleTask {
  UpdateVehicleTask copyWith(
      {int? createdById,
      bool? deleted,
      DateTime? finishdedAt,
      DateTime? startedAt,
      int? tasksId,
      int? vehiclesId}) {
    return UpdateVehicleTask(
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        startedAt: startedAt ?? this.startedAt,
        tasksId: tasksId ?? this.tasksId,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  UpdateVehicleTask copyWithWrapped(
      {Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<DateTime?>? startedAt,
      Wrapped<int?>? tasksId,
      Wrapped<int?>? vehiclesId}) {
    return UpdateVehicleTask(
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
class Vehicle {
  const Vehicle({
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
    this.history,
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
    this.updatedById,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  static const toJsonFactory = _$VehicleToJson;
  Map<String, dynamic> toJson() => _$VehicleToJson(this);

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
  @JsonKey(name: 'history', defaultValue: <VehicleAudit>[])
  final List<VehicleAudit>? history;
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
  @JsonKey(name: 'tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? tasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$VehicleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Vehicle &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
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
      const DeepCollectionEquality().hash(history) ^
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
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $VehicleExtension on Vehicle {
  Vehicle copyWith(
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
      List<VehicleAudit>? history,
      int? id,
      int? mileage,
      String? note,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      List<VehicleTask>? tasks,
      DateTime? updatedAt,
      int? updatedById}) {
    return Vehicle(
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
        history: history ?? this.history,
        id: id ?? this.id,
        mileage: mileage ?? this.mileage,
        note: note ?? this.note,
        ownerId: ownerId ?? this.ownerId,
        procedureVe: procedureVe ?? this.procedureVe,
        registration: registration ?? this.registration,
        serialNumber: serialNumber ?? this.serialNumber,
        soldAt: soldAt ?? this.soldAt,
        tasks: tasks ?? this.tasks,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedById: updatedById ?? this.updatedById);
  }

  Vehicle copyWithWrapped(
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
      Wrapped<List<VehicleAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<List<VehicleTask>?>? tasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<int?>? updatedById}) {
    return Vehicle(
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
        history: (history != null ? history.value : this.history),
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
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleAudit {
  const VehicleAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.chrono,
    this.collectionDate,
    this.commercialName,
    this.createdBy,
    this.createdById,
    this.deletedBy,
    this.deletedById,
    this.deliveryDate,
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
    this.updatedBy,
    this.updatedById,
    this.updatedAt,
    this.vehicleModelID,
  });

  factory VehicleAudit.fromJson(Map<String, dynamic> json) =>
      _$VehicleAuditFromJson(json);

  static const toJsonFactory = _$VehicleAuditToJson;
  Map<String, dynamic> toJson() => _$VehicleAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collectionDate')
  final String? collectionDate;
  @JsonKey(name: 'commercialName')
  final String? commercialName;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_by')
  final Employee? deletedBy;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'deliveryDate')
  final String? deliveryDate;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'firstCirculation')
  final String? firstCirculation;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner')
  final Owner? owner;
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @JsonKey(name: 'procedureVe')
  final bool? procedureVe;
  @JsonKey(name: 'registration')
  final String? registration;
  @JsonKey(name: 'serialNumber')
  final String? serialNumber;
  @JsonKey(name: 'soldAt')
  final String? soldAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'vehicleModelID')
  final int? vehicleModelID;
  static const fromJsonFactory = _$VehicleAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.chrono, chrono) ||
                const DeepCollectionEquality().equals(other.chrono, chrono)) &&
            (identical(other.collectionDate, collectionDate) ||
                const DeepCollectionEquality()
                    .equals(other.collectionDate, collectionDate)) &&
            (identical(other.commercialName, commercialName) ||
                const DeepCollectionEquality()
                    .equals(other.commercialName, commercialName)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
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
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicleModelID, vehicleModelID) || const DeepCollectionEquality().equals(other.vehicleModelID, vehicleModelID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(chrono) ^
      const DeepCollectionEquality().hash(collectionDate) ^
      const DeepCollectionEquality().hash(commercialName) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedBy) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
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
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicleModelID) ^
      runtimeType.hashCode;
}

extension $VehicleAuditExtension on VehicleAudit {
  VehicleAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      String? chrono,
      String? collectionDate,
      String? commercialName,
      Employee? createdBy,
      int? createdById,
      Employee? deletedBy,
      int? deletedById,
      String? deliveryDate,
      bool? expertise,
      String? firstCirculation,
      int? mileage,
      String? note,
      Owner? owner,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      String? soldAt,
      Employee? updatedBy,
      int? updatedById,
      String? updatedAt,
      int? vehicleModelID}) {
    return VehicleAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        chrono: chrono ?? this.chrono,
        collectionDate: collectionDate ?? this.collectionDate,
        commercialName: commercialName ?? this.commercialName,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedBy: deletedBy ?? this.deletedBy,
        deletedById: deletedById ?? this.deletedById,
        deliveryDate: deliveryDate ?? this.deliveryDate,
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
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicleModelID: vehicleModelID ?? this.vehicleModelID);
  }

  VehicleAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? chrono,
      Wrapped<String?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<Employee?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<String?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<String?>? firstCirculation,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<Owner?>? owner,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<String?>? soldAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<String?>? updatedAt,
      Wrapped<int?>? vehicleModelID}) {
    return VehicleAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        chrono: (chrono != null ? chrono.value : this.chrono),
        collectionDate: (collectionDate != null
            ? collectionDate.value
            : this.collectionDate),
        commercialName: (commercialName != null
            ? commercialName.value
            : this.commercialName),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedBy: (deletedBy != null ? deletedBy.value : this.deletedBy),
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
        owner: (owner != null ? owner.value : this.owner),
        ownerId: (ownerId != null ? ownerId.value : this.ownerId),
        procedureVe:
            (procedureVe != null ? procedureVe.value : this.procedureVe),
        registration:
            (registration != null ? registration.value : this.registration),
        serialNumber:
            (serialNumber != null ? serialNumber.value : this.serialNumber),
        soldAt: (soldAt != null ? soldAt.value : this.soldAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicleModelID: (vehicleModelID != null
            ? vehicleModelID.value
            : this.vehicleModelID));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleResponse {
  const VehicleResponse({
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
    this.history,
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
    this.updatedBy,
    this.updatedById,
  });

  factory VehicleResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleResponseFromJson(json);

  static const toJsonFactory = _$VehicleResponseToJson;
  Map<String, dynamic> toJson() => _$VehicleResponseToJson(this);

  @JsonKey(name: 'chrono')
  final String? chrono;
  @JsonKey(name: 'collection_date')
  final DateTime? collectionDate;
  @JsonKey(name: 'commercial_name')
  final String? commercialName;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'deleted_by')
  final Employee? deletedBy;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'delivery_date')
  final DateTime? deliveryDate;
  @JsonKey(name: 'expertise')
  final bool? expertise;
  @JsonKey(name: 'first_circulation')
  final DateTime? firstCirculation;
  @JsonKey(name: 'history', defaultValue: <VehicleAudit>[])
  final List<VehicleAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'mileage')
  final int? mileage;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'owner')
  final Owner? owner;
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
  @JsonKey(name: 'tasks', defaultValue: <VehicleTaskResponse>[])
  final List<VehicleTaskResponse>? tasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$VehicleResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleResponse &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality().equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) || const DeepCollectionEquality().equals(other.updatedById, updatedById)));
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
      const DeepCollectionEquality().hash(history) ^
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
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $VehicleResponseExtension on VehicleResponse {
  VehicleResponse copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      Employee? deletedBy,
      int? deletedById,
      DateTime? deliveryDate,
      bool? expertise,
      DateTime? firstCirculation,
      List<VehicleAudit>? history,
      int? id,
      int? mileage,
      String? note,
      Owner? owner,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      List<VehicleTaskResponse>? tasks,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById}) {
    return VehicleResponse(
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
        history: history ?? this.history,
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
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  VehicleResponse copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<Employee?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<List<VehicleAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<Owner?>? owner,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<List<VehicleTaskResponse>?>? tasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return VehicleResponse(
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
        history: (history != null ? history.value : this.history),
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
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTask {
  const VehicleTask({
    this.createdAt,
    this.createdById,
    this.deleted,
    this.deletedAt,
    this.finishdedAt,
    this.history,
    this.id,
    this.startedAt,
    this.tasksId,
    this.updatedAt,
    this.vehiclesId,
  });

  factory VehicleTask.fromJson(Map<String, dynamic> json) =>
      _$VehicleTaskFromJson(json);

  static const toJsonFactory = _$VehicleTaskToJson;
  Map<String, dynamic> toJson() => _$VehicleTaskToJson(this);

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
  @JsonKey(name: 'history', defaultValue: <VehicleTaskAudit>[])
  final List<VehicleTaskAudit>? history;
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
  static const fromJsonFactory = _$VehicleTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTask &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(tasksId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehiclesId) ^
      runtimeType.hashCode;
}

extension $VehicleTaskExtension on VehicleTask {
  VehicleTask copyWith(
      {DateTime? createdAt,
      int? createdById,
      bool? deleted,
      GormDeletedAt? deletedAt,
      DateTime? finishdedAt,
      List<VehicleTaskAudit>? history,
      int? id,
      DateTime? startedAt,
      int? tasksId,
      DateTime? updatedAt,
      int? vehiclesId}) {
    return VehicleTask(
        createdAt: createdAt ?? this.createdAt,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedAt: deletedAt ?? this.deletedAt,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        startedAt: startedAt ?? this.startedAt,
        tasksId: tasksId ?? this.tasksId,
        updatedAt: updatedAt ?? this.updatedAt,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  VehicleTask copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<List<VehicleTaskAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<DateTime?>? startedAt,
      Wrapped<int?>? tasksId,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<int?>? vehiclesId}) {
    return VehicleTask(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        finishdedAt:
            (finishdedAt != null ? finishdedAt.value : this.finishdedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        tasksId: (tasksId != null ? tasksId.value : this.tasksId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehiclesId: (vehiclesId != null ? vehiclesId.value : this.vehiclesId));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTaskAudit {
  const VehicleTaskAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.createdBy,
    this.createdById,
    this.deleted,
    this.finishdedAt,
    this.startedAt,
    this.tasks,
    this.tasksId,
    this.updatedAt,
    this.vehicleTaskModelID,
    this.vehicles,
    this.vehiclesId,
  });

  factory VehicleTaskAudit.fromJson(Map<String, dynamic> json) =>
      _$VehicleTaskAuditFromJson(json);

  static const toJsonFactory = _$VehicleTaskAuditToJson;
  Map<String, dynamic> toJson() => _$VehicleTaskAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'finishdedAt')
  final String? finishdedAt;
  @JsonKey(name: 'startedAt')
  final String? startedAt;
  @JsonKey(name: 'tasks')
  final Task? tasks;
  @JsonKey(name: 'tasks_id')
  final int? tasksId;
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @JsonKey(name: 'vehicleTaskModelID')
  final int? vehicleTaskModelID;
  @JsonKey(name: 'vehicles')
  final Vehicle? vehicles;
  @JsonKey(name: 'vehicles_id')
  final int? vehiclesId;
  static const fromJsonFactory = _$VehicleTaskAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTaskAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
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
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)) &&
            (identical(other.tasksId, tasksId) ||
                const DeepCollectionEquality()
                    .equals(other.tasksId, tasksId)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.vehicleTaskModelID, vehicleTaskModelID) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTaskModelID, vehicleTaskModelID)) &&
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
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(finishdedAt) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(tasks) ^
      const DeepCollectionEquality().hash(tasksId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicleTaskModelID) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(vehiclesId) ^
      runtimeType.hashCode;
}

extension $VehicleTaskAuditExtension on VehicleTaskAudit {
  VehicleTaskAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      Employee? createdBy,
      int? createdById,
      bool? deleted,
      String? finishdedAt,
      String? startedAt,
      Task? tasks,
      int? tasksId,
      String? updatedAt,
      int? vehicleTaskModelID,
      Vehicle? vehicles,
      int? vehiclesId}) {
    return VehicleTaskAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        startedAt: startedAt ?? this.startedAt,
        tasks: tasks ?? this.tasks,
        tasksId: tasksId ?? this.tasksId,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicleTaskModelID: vehicleTaskModelID ?? this.vehicleTaskModelID,
        vehicles: vehicles ?? this.vehicles,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  VehicleTaskAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<String?>? finishdedAt,
      Wrapped<String?>? startedAt,
      Wrapped<Task?>? tasks,
      Wrapped<int?>? tasksId,
      Wrapped<String?>? updatedAt,
      Wrapped<int?>? vehicleTaskModelID,
      Wrapped<Vehicle?>? vehicles,
      Wrapped<int?>? vehiclesId}) {
    return VehicleTaskAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        finishdedAt:
            (finishdedAt != null ? finishdedAt.value : this.finishdedAt),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        tasks: (tasks != null ? tasks.value : this.tasks),
        tasksId: (tasksId != null ? tasksId.value : this.tasksId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        vehicleTaskModelID: (vehicleTaskModelID != null
            ? vehicleTaskModelID.value
            : this.vehicleTaskModelID),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles),
        vehiclesId: (vehiclesId != null ? vehiclesId.value : this.vehiclesId));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTaskResponse {
  const VehicleTaskResponse({
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deleted,
    this.deletedAt,
    this.finishdedAt,
    this.history,
    this.id,
    this.startedAt,
    this.tasks,
    this.tasksId,
    this.updatedAt,
    this.vehicles,
    this.vehiclesId,
  });

  factory VehicleTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleTaskResponseFromJson(json);

  static const toJsonFactory = _$VehicleTaskResponseToJson;
  Map<String, dynamic> toJson() => _$VehicleTaskResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'finishded_at')
  final DateTime? finishdedAt;
  @JsonKey(name: 'history', defaultValue: <VehicleTaskAudit>[])
  final List<VehicleTaskAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'tasks')
  final Task? tasks;
  @JsonKey(name: 'tasks_id')
  final int? tasksId;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'vehicles')
  final Vehicle? vehicles;
  @JsonKey(name: 'vehicles_id')
  final int? vehiclesId;
  static const fromJsonFactory = _$VehicleTaskResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTaskResponse &&
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
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
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
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(tasks) ^
      const DeepCollectionEquality().hash(tasksId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(vehiclesId) ^
      runtimeType.hashCode;
}

extension $VehicleTaskResponseExtension on VehicleTaskResponse {
  VehicleTaskResponse copyWith(
      {DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      bool? deleted,
      GormDeletedAt? deletedAt,
      DateTime? finishdedAt,
      List<VehicleTaskAudit>? history,
      int? id,
      DateTime? startedAt,
      Task? tasks,
      int? tasksId,
      DateTime? updatedAt,
      Vehicle? vehicles,
      int? vehiclesId}) {
    return VehicleTaskResponse(
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedAt: deletedAt ?? this.deletedAt,
        finishdedAt: finishdedAt ?? this.finishdedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        startedAt: startedAt ?? this.startedAt,
        tasks: tasks ?? this.tasks,
        tasksId: tasksId ?? this.tasksId,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicles: vehicles ?? this.vehicles,
        vehiclesId: vehiclesId ?? this.vehiclesId);
  }

  VehicleTaskResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<DateTime?>? finishdedAt,
      Wrapped<List<VehicleTaskAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<DateTime?>? startedAt,
      Wrapped<Task?>? tasks,
      Wrapped<int?>? tasksId,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Vehicle?>? vehicles,
      Wrapped<int?>? vehiclesId}) {
    return VehicleTaskResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        finishdedAt:
            (finishdedAt != null ? finishdedAt.value : this.finishdedAt),
        history: (history != null ? history.value : this.history),
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
