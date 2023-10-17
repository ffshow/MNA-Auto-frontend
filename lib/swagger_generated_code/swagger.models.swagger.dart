// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class Account {
  const Account({
    this.audit,
    this.createdAt,
    this.deletedAt,
    this.email,
    this.employeeId,
    this.id,
    this.name,
    this.updatedAt,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  static const toJsonFactory = _$AccountToJson;
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  @JsonKey(name: 'audit', defaultValue: <AccountAudit>[])
  final List<AccountAudit>? audit;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$AccountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Account &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
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
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AccountExtension on Account {
  Account copyWith(
      {List<AccountAudit>? audit,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      int? employeeId,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return Account(
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        employeeId: employeeId ?? this.employeeId,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Account copyWithWrapped(
      {Wrapped<List<AccountAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<int?>? employeeId,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return Account(
        audit: (audit != null ? audit.value : this.audit),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountAudit {
  const AccountAudit({
    this.accountModelID,
    this.action,
    this.actionAt,
    this.actionID,
    this.email,
    this.employeeId,
    this.name,
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
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'name')
  final String? name;
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
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
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
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $AccountAuditExtension on AccountAudit {
  AccountAudit copyWith(
      {int? accountModelID,
      String? action,
      String? actionAt,
      int? actionID,
      String? email,
      int? employeeId,
      String? name}) {
    return AccountAudit(
        accountModelID: accountModelID ?? this.accountModelID,
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        email: email ?? this.email,
        employeeId: employeeId ?? this.employeeId,
        name: name ?? this.name);
  }

  AccountAudit copyWithWrapped(
      {Wrapped<int?>? accountModelID,
      Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? email,
      Wrapped<int?>? employeeId,
      Wrapped<String?>? name}) {
    return AccountAudit(
        accountModelID: (accountModelID != null
            ? accountModelID.value
            : this.accountModelID),
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        email: (email != null ? email.value : this.email),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountResponse {
  const AccountResponse({
    this.createdAt,
    this.deletedAt,
    this.email,
    this.employeeId,
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
  @JsonKey(name: 'employee_id')
  final int? employeeId;
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
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
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
      const DeepCollectionEquality().hash(employeeId) ^
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
      int? employeeId,
      List<AccountAudit>? history,
      int? id,
      String? name,
      DateTime? updatedAt}) {
    return AccountResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        employeeId: employeeId ?? this.employeeId,
        history: history ?? this.history,
        id: id ?? this.id,
        name: name ?? this.name,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AccountResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<int?>? employeeId,
      Wrapped<List<AccountAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<DateTime?>? updatedAt}) {
    return AccountResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class City {
  const City({
    this.audit,
    this.createdAt,
    this.deletedAt,
    this.garages,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  static const toJsonFactory = _$CityToJson;
  Map<String, dynamic> toJson() => _$CityToJson(this);

  @JsonKey(name: 'audit', defaultValue: <CityAudit>[])
  final List<CityAudit>? audit;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'garages', defaultValue: <Garage>[])
  final List<Garage>? garages;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$CityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is City &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.garages, garages) ||
                const DeepCollectionEquality()
                    .equals(other.garages, garages)) &&
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
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(garages) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $CityExtension on City {
  City copyWith(
      {List<CityAudit>? audit,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      List<Garage>? garages,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return City(
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        garages: garages ?? this.garages,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  City copyWithWrapped(
      {Wrapped<List<CityAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<Garage>?>? garages,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return City(
        audit: (audit != null ? audit.value : this.audit),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        garages: (garages != null ? garages.value : this.garages),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class CityAudit {
  const CityAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.cityModelID,
    this.garages,
    this.label,
  });

  factory CityAudit.fromJson(Map<String, dynamic> json) =>
      _$CityAuditFromJson(json);

  static const toJsonFactory = _$CityAuditToJson;
  Map<String, dynamic> toJson() => _$CityAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'cityModelID')
  final int? cityModelID;
  @JsonKey(name: 'garages', defaultValue: <Garage>[])
  final List<Garage>? garages;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$CityAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.cityModelID, cityModelID) ||
                const DeepCollectionEquality()
                    .equals(other.cityModelID, cityModelID)) &&
            (identical(other.garages, garages) ||
                const DeepCollectionEquality()
                    .equals(other.garages, garages)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(cityModelID) ^
      const DeepCollectionEquality().hash(garages) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $CityAuditExtension on CityAudit {
  CityAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      int? cityModelID,
      List<Garage>? garages,
      String? label}) {
    return CityAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        cityModelID: cityModelID ?? this.cityModelID,
        garages: garages ?? this.garages,
        label: label ?? this.label);
  }

  CityAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<int?>? cityModelID,
      Wrapped<List<Garage>?>? garages,
      Wrapped<String?>? label}) {
    return CityAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        cityModelID:
            (cityModelID != null ? cityModelID.value : this.cityModelID),
        garages: (garages != null ? garages.value : this.garages),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class CityResponse {
  const CityResponse({
    this.createdAt,
    this.deletedAt,
    this.garages,
    this.history,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory CityResponse.fromJson(Map<String, dynamic> json) =>
      _$CityResponseFromJson(json);

  static const toJsonFactory = _$CityResponseToJson;
  Map<String, dynamic> toJson() => _$CityResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'garages', defaultValue: <Garage>[])
  final List<Garage>? garages;
  @JsonKey(name: 'history', defaultValue: <CityAudit>[])
  final List<CityAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$CityResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityResponse &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.garages, garages) ||
                const DeepCollectionEquality()
                    .equals(other.garages, garages)) &&
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
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(garages) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $CityResponseExtension on CityResponse {
  CityResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      List<Garage>? garages,
      List<CityAudit>? history,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return CityResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        garages: garages ?? this.garages,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  CityResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<Garage>?>? garages,
      Wrapped<List<CityAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return CityResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        garages: (garages != null ? garages.value : this.garages),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAccount {
  const CreateAccount({
    this.email,
    this.employeeId,
    this.name,
  });

  factory CreateAccount.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountFromJson(json);

  static const toJsonFactory = _$CreateAccountToJson;
  Map<String, dynamic> toJson() => _$CreateAccountToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$CreateAccountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAccount &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality()
                    .equals(other.employeeId, employeeId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $CreateAccountExtension on CreateAccount {
  CreateAccount copyWith({String? email, int? employeeId, String? name}) {
    return CreateAccount(
        email: email ?? this.email,
        employeeId: employeeId ?? this.employeeId,
        name: name ?? this.name);
  }

  CreateAccount copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<int?>? employeeId,
      Wrapped<String?>? name}) {
    return CreateAccount(
        email: (email != null ? email.value : this.email),
        employeeId: (employeeId != null ? employeeId.value : this.employeeId),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateCity {
  const CreateCity({
    this.garages,
    this.label,
  });

  factory CreateCity.fromJson(Map<String, dynamic> json) =>
      _$CreateCityFromJson(json);

  static const toJsonFactory = _$CreateCityToJson;
  Map<String, dynamic> toJson() => _$CreateCityToJson(this);

  @JsonKey(name: 'garages', defaultValue: <Garage>[])
  final List<Garage>? garages;
  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$CreateCityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCity &&
            (identical(other.garages, garages) ||
                const DeepCollectionEquality()
                    .equals(other.garages, garages)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(garages) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $CreateCityExtension on CreateCity {
  CreateCity copyWith({List<Garage>? garages, String? label}) {
    return CreateCity(
        garages: garages ?? this.garages, label: label ?? this.label);
  }

  CreateCity copyWithWrapped(
      {Wrapped<List<Garage>?>? garages, Wrapped<String?>? label}) {
    return CreateCity(
        garages: (garages != null ? garages.value : this.garages),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateEmployee {
  const CreateEmployee({
    this.account,
    this.assignedVehicleTasks,
    this.createdGarages,
    this.createdTasks,
    this.createdVehicleTasks,
    this.createdVehicles,
    this.deletedVehicleTasks,
    this.deletedVehicles,
    this.name,
    this.permission,
    this.requests,
    this.updatedGarages,
    this.updatedTasks,
    this.updatedVehicleTasks,
    this.updatedVehicles,
  });

  factory CreateEmployee.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeFromJson(json);

  static const toJsonFactory = _$CreateEmployeeToJson;
  Map<String, dynamic> toJson() => _$CreateEmployeeToJson(this);

  @JsonKey(name: 'account')
  final Account? account;
  @JsonKey(name: 'assigned_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? assignedVehicleTasks;
  @JsonKey(name: 'created_garages', defaultValue: <Garage>[])
  final List<Garage>? createdGarages;
  @JsonKey(name: 'created_tasks', defaultValue: <Task>[])
  final List<Task>? createdTasks;
  @JsonKey(name: 'created_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? createdVehicleTasks;
  @JsonKey(name: 'created_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? createdVehicles;
  @JsonKey(name: 'deleted_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? deletedVehicleTasks;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? deletedVehicles;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'permission', defaultValue: <Permission>[])
  final List<Permission>? permission;
  @JsonKey(name: 'requests', defaultValue: <SparePartRequest>[])
  final List<SparePartRequest>? requests;
  @JsonKey(name: 'updated_garages', defaultValue: <Garage>[])
  final List<Garage>? updatedGarages;
  @JsonKey(name: 'updated_tasks', defaultValue: <Task>[])
  final List<Task>? updatedTasks;
  @JsonKey(name: 'updated_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? updatedVehicleTasks;
  @JsonKey(name: 'updated_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? updatedVehicles;
  static const fromJsonFactory = _$CreateEmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateEmployee &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.assignedVehicleTasks, assignedVehicleTasks) ||
                const DeepCollectionEquality().equals(
                    other.assignedVehicleTasks, assignedVehicleTasks)) &&
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
            (identical(other.deletedVehicleTasks, deletedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicleTasks, deletedVehicleTasks)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)) &&
            (identical(other.updatedGarages, updatedGarages) ||
                const DeepCollectionEquality()
                    .equals(other.updatedGarages, updatedGarages)) &&
            (identical(other.updatedTasks, updatedTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTasks, updatedTasks)) &&
            (identical(other.updatedVehicleTasks, updatedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicleTasks, updatedVehicleTasks)) &&
            (identical(other.updatedVehicles, updatedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicles, updatedVehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(assignedVehicleTasks) ^
      const DeepCollectionEquality().hash(createdGarages) ^
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicleTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedVehicleTasks) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(requests) ^
      const DeepCollectionEquality().hash(updatedGarages) ^
      const DeepCollectionEquality().hash(updatedTasks) ^
      const DeepCollectionEquality().hash(updatedVehicleTasks) ^
      const DeepCollectionEquality().hash(updatedVehicles) ^
      runtimeType.hashCode;
}

extension $CreateEmployeeExtension on CreateEmployee {
  CreateEmployee copyWith(
      {Account? account,
      List<VehicleTask>? assignedVehicleTasks,
      List<Garage>? createdGarages,
      List<Task>? createdTasks,
      List<VehicleTask>? createdVehicleTasks,
      List<Vehicle>? createdVehicles,
      List<VehicleTask>? deletedVehicleTasks,
      List<Vehicle>? deletedVehicles,
      String? name,
      List<Permission>? permission,
      List<SparePartRequest>? requests,
      List<Garage>? updatedGarages,
      List<Task>? updatedTasks,
      List<VehicleTask>? updatedVehicleTasks,
      List<Vehicle>? updatedVehicles}) {
    return CreateEmployee(
        account: account ?? this.account,
        assignedVehicleTasks: assignedVehicleTasks ?? this.assignedVehicleTasks,
        createdGarages: createdGarages ?? this.createdGarages,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicleTasks: createdVehicleTasks ?? this.createdVehicleTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedVehicleTasks: deletedVehicleTasks ?? this.deletedVehicleTasks,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        name: name ?? this.name,
        permission: permission ?? this.permission,
        requests: requests ?? this.requests,
        updatedGarages: updatedGarages ?? this.updatedGarages,
        updatedTasks: updatedTasks ?? this.updatedTasks,
        updatedVehicleTasks: updatedVehicleTasks ?? this.updatedVehicleTasks,
        updatedVehicles: updatedVehicles ?? this.updatedVehicles);
  }

  CreateEmployee copyWithWrapped(
      {Wrapped<Account?>? account,
      Wrapped<List<VehicleTask>?>? assignedVehicleTasks,
      Wrapped<List<Garage>?>? createdGarages,
      Wrapped<List<Task>?>? createdTasks,
      Wrapped<List<VehicleTask>?>? createdVehicleTasks,
      Wrapped<List<Vehicle>?>? createdVehicles,
      Wrapped<List<VehicleTask>?>? deletedVehicleTasks,
      Wrapped<List<Vehicle>?>? deletedVehicles,
      Wrapped<String?>? name,
      Wrapped<List<Permission>?>? permission,
      Wrapped<List<SparePartRequest>?>? requests,
      Wrapped<List<Garage>?>? updatedGarages,
      Wrapped<List<Task>?>? updatedTasks,
      Wrapped<List<VehicleTask>?>? updatedVehicleTasks,
      Wrapped<List<Vehicle>?>? updatedVehicles}) {
    return CreateEmployee(
        account: (account != null ? account.value : this.account),
        assignedVehicleTasks: (assignedVehicleTasks != null
            ? assignedVehicleTasks.value
            : this.assignedVehicleTasks),
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
        deletedVehicleTasks: (deletedVehicleTasks != null
            ? deletedVehicleTasks.value
            : this.deletedVehicleTasks),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        name: (name != null ? name.value : this.name),
        permission: (permission != null ? permission.value : this.permission),
        requests: (requests != null ? requests.value : this.requests),
        updatedGarages: (updatedGarages != null
            ? updatedGarages.value
            : this.updatedGarages),
        updatedTasks:
            (updatedTasks != null ? updatedTasks.value : this.updatedTasks),
        updatedVehicleTasks: (updatedVehicleTasks != null
            ? updatedVehicleTasks.value
            : this.updatedVehicleTasks),
        updatedVehicles: (updatedVehicles != null
            ? updatedVehicles.value
            : this.updatedVehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateGarage {
  const CreateGarage({
    this.city,
    this.cityId,
    this.createdBy,
    this.createdById,
    this.label,
    this.owners,
    this.updatedBy,
    this.updatedById,
  });

  factory CreateGarage.fromJson(Map<String, dynamic> json) =>
      _$CreateGarageFromJson(json);

  static const toJsonFactory = _$CreateGarageToJson;
  Map<String, dynamic> toJson() => _$CreateGarageToJson(this);

  @JsonKey(name: 'city')
  final City? city;
  @JsonKey(name: 'city_id')
  final int? cityId;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'owners', defaultValue: <Owner>[])
  final List<Owner>? owners;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$CreateGarageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateGarage &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.owners, owners) ||
                const DeepCollectionEquality().equals(other.owners, owners)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(owners) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $CreateGarageExtension on CreateGarage {
  CreateGarage copyWith(
      {City? city,
      int? cityId,
      Employee? createdBy,
      int? createdById,
      String? label,
      List<Owner>? owners,
      Employee? updatedBy,
      int? updatedById}) {
    return CreateGarage(
        city: city ?? this.city,
        cityId: cityId ?? this.cityId,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        label: label ?? this.label,
        owners: owners ?? this.owners,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  CreateGarage copyWithWrapped(
      {Wrapped<City?>? city,
      Wrapped<int?>? cityId,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<String?>? label,
      Wrapped<List<Owner>?>? owners,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return CreateGarage(
        city: (city != null ? city.value : this.city),
        cityId: (cityId != null ? cityId.value : this.cityId),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label),
        owners: (owners != null ? owners.value : this.owners),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateOwner {
  const CreateOwner({
    this.address,
    this.email,
    this.garage,
    this.garageId,
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
  @JsonKey(name: 'garage')
  final Garage? garage;
  @JsonKey(name: 'garage_id')
  final int? garageId;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @JsonKey(name: 'vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? vehicles;
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
            (identical(other.garage, garage) ||
                const DeepCollectionEquality().equals(other.garage, garage)) &&
            (identical(other.garageId, garageId) ||
                const DeepCollectionEquality()
                    .equals(other.garageId, garageId)) &&
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
      const DeepCollectionEquality().hash(garage) ^
      const DeepCollectionEquality().hash(garageId) ^
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
      Garage? garage,
      int? garageId,
      String? phone,
      String? photo,
      String? postalCode,
      List<Vehicle>? vehicles}) {
    return CreateOwner(
        address: address ?? this.address,
        email: email ?? this.email,
        garage: garage ?? this.garage,
        garageId: garageId ?? this.garageId,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        vehicles: vehicles ?? this.vehicles);
  }

  CreateOwner copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<Garage?>? garage,
      Wrapped<int?>? garageId,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<List<Vehicle>?>? vehicles}) {
    return CreateOwner(
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        garage: (garage != null ? garage.value : this.garage),
        garageId: (garageId != null ? garageId.value : this.garageId),
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
    this.employees,
    this.employeesId,
    this.label,
  });

  factory CreatePermission.fromJson(Map<String, dynamic> json) =>
      _$CreatePermissionFromJson(json);

  static const toJsonFactory = _$CreatePermissionToJson;
  Map<String, dynamic> toJson() => _$CreatePermissionToJson(this);

  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'employees')
  final Employee? employees;
  @JsonKey(name: 'employees_id')
  final int? employeesId;
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
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)) &&
            (identical(other.employeesId, employeesId) ||
                const DeepCollectionEquality()
                    .equals(other.employeesId, employeesId)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(employees) ^
      const DeepCollectionEquality().hash(employeesId) ^
      const DeepCollectionEquality().hash(label) ^
      runtimeType.hashCode;
}

extension $CreatePermissionExtension on CreatePermission {
  CreatePermission copyWith(
      {bool? available, Employee? employees, int? employeesId, String? label}) {
    return CreatePermission(
        available: available ?? this.available,
        employees: employees ?? this.employees,
        employeesId: employeesId ?? this.employeesId,
        label: label ?? this.label);
  }

  CreatePermission copyWithWrapped(
      {Wrapped<bool?>? available,
      Wrapped<Employee?>? employees,
      Wrapped<int?>? employeesId,
      Wrapped<String?>? label}) {
    return CreatePermission(
        available: (available != null ? available.value : this.available),
        employees: (employees != null ? employees.value : this.employees),
        employeesId:
            (employeesId != null ? employeesId.value : this.employeesId),
        label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateSparePart {
  const CreateSparePart({
    this.barcode,
    this.reference,
    this.request,
    this.requestId,
    this.supplier,
    this.supplierId,
  });

  factory CreateSparePart.fromJson(Map<String, dynamic> json) =>
      _$CreateSparePartFromJson(json);

  static const toJsonFactory = _$CreateSparePartToJson;
  Map<String, dynamic> toJson() => _$CreateSparePartToJson(this);

  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'request')
  final SparePartRequest? request;
  @JsonKey(name: 'request_id')
  final int? requestId;
  @JsonKey(name: 'supplier')
  final Supplier? supplier;
  @JsonKey(name: 'supplier_id')
  final int? supplierId;
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
                    .equals(other.reference, reference)) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.supplier, supplier) ||
                const DeepCollectionEquality()
                    .equals(other.supplier, supplier)) &&
            (identical(other.supplierId, supplierId) ||
                const DeepCollectionEquality()
                    .equals(other.supplierId, supplierId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(supplierId) ^
      runtimeType.hashCode;
}

extension $CreateSparePartExtension on CreateSparePart {
  CreateSparePart copyWith(
      {String? barcode,
      String? reference,
      SparePartRequest? request,
      int? requestId,
      Supplier? supplier,
      int? supplierId}) {
    return CreateSparePart(
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference,
        request: request ?? this.request,
        requestId: requestId ?? this.requestId,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId);
  }

  CreateSparePart copyWithWrapped(
      {Wrapped<String?>? barcode,
      Wrapped<String?>? reference,
      Wrapped<SparePartRequest?>? request,
      Wrapped<int?>? requestId,
      Wrapped<Supplier?>? supplier,
      Wrapped<int?>? supplierId}) {
    return CreateSparePart(
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference),
        request: (request != null ? request.value : this.request),
        requestId: (requestId != null ? requestId.value : this.requestId),
        supplier: (supplier != null ? supplier.value : this.supplier),
        supplierId: (supplierId != null ? supplierId.value : this.supplierId));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateSparePartRequest {
  const CreateSparePartRequest({
    this.requestBy,
    this.requestById,
    this.spareParts,
  });

  factory CreateSparePartRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSparePartRequestFromJson(json);

  static const toJsonFactory = _$CreateSparePartRequestToJson;
  Map<String, dynamic> toJson() => _$CreateSparePartRequestToJson(this);

  @JsonKey(name: 'request_by')
  final Employee? requestBy;
  @JsonKey(name: 'request_by_id')
  final int? requestById;
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
  static const fromJsonFactory = _$CreateSparePartRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSparePartRequest &&
            (identical(other.requestBy, requestBy) ||
                const DeepCollectionEquality()
                    .equals(other.requestBy, requestBy)) &&
            (identical(other.requestById, requestById) ||
                const DeepCollectionEquality()
                    .equals(other.requestById, requestById)) &&
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(requestBy) ^
      const DeepCollectionEquality().hash(requestById) ^
      const DeepCollectionEquality().hash(spareParts) ^
      runtimeType.hashCode;
}

extension $CreateSparePartRequestExtension on CreateSparePartRequest {
  CreateSparePartRequest copyWith(
      {Employee? requestBy, int? requestById, List<SparePart>? spareParts}) {
    return CreateSparePartRequest(
        requestBy: requestBy ?? this.requestBy,
        requestById: requestById ?? this.requestById,
        spareParts: spareParts ?? this.spareParts);
  }

  CreateSparePartRequest copyWithWrapped(
      {Wrapped<Employee?>? requestBy,
      Wrapped<int?>? requestById,
      Wrapped<List<SparePart>?>? spareParts}) {
    return CreateSparePartRequest(
        requestBy: (requestBy != null ? requestBy.value : this.requestBy),
        requestById:
            (requestById != null ? requestById.value : this.requestById),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateSupplier {
  const CreateSupplier({
    this.name,
    this.spareParts,
  });

  factory CreateSupplier.fromJson(Map<String, dynamic> json) =>
      _$CreateSupplierFromJson(json);

  static const toJsonFactory = _$CreateSupplierToJson;
  Map<String, dynamic> toJson() => _$CreateSupplierToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
  static const fromJsonFactory = _$CreateSupplierFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSupplier &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(spareParts) ^
      runtimeType.hashCode;
}

extension $CreateSupplierExtension on CreateSupplier {
  CreateSupplier copyWith({String? name, List<SparePart>? spareParts}) {
    return CreateSupplier(
        name: name ?? this.name, spareParts: spareParts ?? this.spareParts);
  }

  CreateSupplier copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<List<SparePart>?>? spareParts}) {
    return CreateSupplier(
        name: (name != null ? name.value : this.name),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateTask {
  const CreateTask({
    this.attachedTo,
    this.createdBy,
    this.createdById,
    this.label,
    this.parentTaskID,
    this.subTasks,
    this.updatedBy,
    this.updatedById,
  });

  factory CreateTask.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskFromJson(json);

  static const toJsonFactory = _$CreateTaskToJson;
  Map<String, dynamic> toJson() => _$CreateTaskToJson(this);

  @JsonKey(name: 'attached_to', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? attachedTo;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parentTaskID')
  final int? parentTaskID;
  @JsonKey(name: 'subTasks', defaultValue: <Task>[])
  final List<Task>? subTasks;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$CreateTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTask &&
            (identical(other.attachedTo, attachedTo) ||
                const DeepCollectionEquality()
                    .equals(other.attachedTo, attachedTo)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTaskID, parentTaskID) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskID, parentTaskID)) &&
            (identical(other.subTasks, subTasks) ||
                const DeepCollectionEquality()
                    .equals(other.subTasks, subTasks)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(attachedTo) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskID) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $CreateTaskExtension on CreateTask {
  CreateTask copyWith(
      {List<VehicleTask>? attachedTo,
      Employee? createdBy,
      int? createdById,
      String? label,
      int? parentTaskID,
      List<Task>? subTasks,
      Employee? updatedBy,
      int? updatedById}) {
    return CreateTask(
        attachedTo: attachedTo ?? this.attachedTo,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        label: label ?? this.label,
        parentTaskID: parentTaskID ?? this.parentTaskID,
        subTasks: subTasks ?? this.subTasks,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  CreateTask copyWithWrapped(
      {Wrapped<List<VehicleTask>?>? attachedTo,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskID,
      Wrapped<List<Task>?>? subTasks,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return CreateTask(
        attachedTo: (attachedTo != null ? attachedTo.value : this.attachedTo),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label),
        parentTaskID:
            (parentTaskID != null ? parentTaskID.value : this.parentTaskID),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicle {
  const CreateVehicle({
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
    this.vehicleTasks,
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
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
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
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? vehicleTasks;
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
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
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
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $CreateVehicleExtension on CreateVehicle {
  CreateVehicle copyWith(
      {String? chrono,
      DateTime? collectionDate,
      String? commercialName,
      Employee? createdBy,
      int? createdById,
      Employee? deletedBy,
      int? deletedById,
      DateTime? deliveryDate,
      bool? expertise,
      DateTime? firstCirculation,
      int? mileage,
      String? note,
      Owner? owner,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      Employee? updatedBy,
      int? updatedById,
      List<VehicleTask>? vehicleTasks}) {
    return CreateVehicle(
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
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  CreateVehicle copyWithWrapped(
      {Wrapped<String?>? chrono,
      Wrapped<DateTime?>? collectionDate,
      Wrapped<String?>? commercialName,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<Employee?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? deliveryDate,
      Wrapped<bool?>? expertise,
      Wrapped<DateTime?>? firstCirculation,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<Owner?>? owner,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<List<VehicleTask>?>? vehicleTasks}) {
    return CreateVehicle(
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
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateVehicleTask {
  const CreateVehicleTask({
    this.assignedTo,
    this.assignedToId,
    this.createdBy,
    this.createdById,
    this.deleted,
    this.deletedBy,
    this.deletedById,
    this.finishedAt,
    this.note,
    this.startedAt,
    this.task,
    this.taskId,
    this.updatedBy,
    this.updatedById,
    this.vehicle,
    this.vehicleId,
  });

  factory CreateVehicleTask.fromJson(Map<String, dynamic> json) =>
      _$CreateVehicleTaskFromJson(json);

  static const toJsonFactory = _$CreateVehicleTaskToJson;
  Map<String, dynamic> toJson() => _$CreateVehicleTaskToJson(this);

  @JsonKey(name: 'assigned_to')
  final Employee? assignedTo;
  @JsonKey(name: 'assigned_to_id')
  final int? assignedToId;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'deleted_by')
  final Employee? deletedBy;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'task')
  final Task? task;
  @JsonKey(name: 'task_id')
  final int? taskId;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'vehicle_id')
  final int? vehicleId;
  static const fromJsonFactory = _$CreateVehicleTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateVehicleTask &&
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality()
                    .equals(other.assignedTo, assignedTo)) &&
            (identical(other.assignedToId, assignedToId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedToId, assignedToId)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.deletedBy, deletedBy) ||
                const DeepCollectionEquality()
                    .equals(other.deletedBy, deletedBy)) &&
            (identical(other.deletedById, deletedById) ||
                const DeepCollectionEquality()
                    .equals(other.deletedById, deletedById)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
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
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(assignedToId) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(deletedBy) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $CreateVehicleTaskExtension on CreateVehicleTask {
  CreateVehicleTask copyWith(
      {Employee? assignedTo,
      int? assignedToId,
      Employee? createdBy,
      int? createdById,
      bool? deleted,
      Employee? deletedBy,
      int? deletedById,
      DateTime? finishedAt,
      String? note,
      DateTime? startedAt,
      Task? task,
      int? taskId,
      Employee? updatedBy,
      int? updatedById,
      Vehicle? vehicle,
      int? vehicleId}) {
    return CreateVehicleTask(
        assignedTo: assignedTo ?? this.assignedTo,
        assignedToId: assignedToId ?? this.assignedToId,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedBy: deletedBy ?? this.deletedBy,
        deletedById: deletedById ?? this.deletedById,
        finishedAt: finishedAt ?? this.finishedAt,
        note: note ?? this.note,
        startedAt: startedAt ?? this.startedAt,
        task: task ?? this.task,
        taskId: taskId ?? this.taskId,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        vehicle: vehicle ?? this.vehicle,
        vehicleId: vehicleId ?? this.vehicleId);
  }

  CreateVehicleTask copyWithWrapped(
      {Wrapped<Employee?>? assignedTo,
      Wrapped<int?>? assignedToId,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<Employee?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? finishedAt,
      Wrapped<String?>? note,
      Wrapped<DateTime?>? startedAt,
      Wrapped<Task?>? task,
      Wrapped<int?>? taskId,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<Vehicle?>? vehicle,
      Wrapped<int?>? vehicleId}) {
    return CreateVehicleTask(
        assignedTo: (assignedTo != null ? assignedTo.value : this.assignedTo),
        assignedToId:
            (assignedToId != null ? assignedToId.value : this.assignedToId),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedBy: (deletedBy != null ? deletedBy.value : this.deletedBy),
        deletedById:
            (deletedById != null ? deletedById.value : this.deletedById),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        note: (note != null ? note.value : this.note),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        task: (task != null ? task.value : this.task),
        taskId: (taskId != null ? taskId.value : this.taskId),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicle: (vehicle != null ? vehicle.value : this.vehicle),
        vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId));
  }
}

@JsonSerializable(explicitToJson: true)
class Employee {
  const Employee({
    this.account,
    this.assignedVehicleTasks,
    this.audit,
    this.createdAt,
    this.createdGarages,
    this.createdTasks,
    this.createdVehicleTasks,
    this.createdVehicles,
    this.deletedAt,
    this.deletedVehicleTasks,
    this.deletedVehicles,
    this.id,
    this.name,
    this.permission,
    this.requests,
    this.updatedAt,
    this.updatedGarages,
    this.updatedTasks,
    this.updatedVehicleTasks,
    this.updatedVehicles,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  static const toJsonFactory = _$EmployeeToJson;
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  @JsonKey(name: 'account')
  final Account? account;
  @JsonKey(name: 'assigned_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? assignedVehicleTasks;
  @JsonKey(name: 'audit', defaultValue: <EmployeeAudit>[])
  final List<EmployeeAudit>? audit;
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
  @JsonKey(name: 'deleted_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? deletedVehicleTasks;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? deletedVehicles;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'permission', defaultValue: <Permission>[])
  final List<Permission>? permission;
  @JsonKey(name: 'requests', defaultValue: <SparePartRequest>[])
  final List<SparePartRequest>? requests;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_garages', defaultValue: <Garage>[])
  final List<Garage>? updatedGarages;
  @JsonKey(name: 'updated_tasks', defaultValue: <Task>[])
  final List<Task>? updatedTasks;
  @JsonKey(name: 'updated_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? updatedVehicleTasks;
  @JsonKey(name: 'updated_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? updatedVehicles;
  static const fromJsonFactory = _$EmployeeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Employee &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.assignedVehicleTasks, assignedVehicleTasks) ||
                const DeepCollectionEquality().equals(
                    other.assignedVehicleTasks, assignedVehicleTasks)) &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
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
            (identical(other.deletedVehicleTasks, deletedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicleTasks, deletedVehicleTasks)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedGarages, updatedGarages) ||
                const DeepCollectionEquality()
                    .equals(other.updatedGarages, updatedGarages)) &&
            (identical(other.updatedTasks, updatedTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTasks, updatedTasks)) &&
            (identical(other.updatedVehicleTasks, updatedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicleTasks, updatedVehicleTasks)) &&
            (identical(other.updatedVehicles, updatedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicles, updatedVehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(assignedVehicleTasks) ^
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdGarages) ^
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicleTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedVehicleTasks) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(requests) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedGarages) ^
      const DeepCollectionEquality().hash(updatedTasks) ^
      const DeepCollectionEquality().hash(updatedVehicleTasks) ^
      const DeepCollectionEquality().hash(updatedVehicles) ^
      runtimeType.hashCode;
}

extension $EmployeeExtension on Employee {
  Employee copyWith(
      {Account? account,
      List<VehicleTask>? assignedVehicleTasks,
      List<EmployeeAudit>? audit,
      DateTime? createdAt,
      List<Garage>? createdGarages,
      List<Task>? createdTasks,
      List<VehicleTask>? createdVehicleTasks,
      List<Vehicle>? createdVehicles,
      GormDeletedAt? deletedAt,
      List<VehicleTask>? deletedVehicleTasks,
      List<Vehicle>? deletedVehicles,
      int? id,
      String? name,
      List<Permission>? permission,
      List<SparePartRequest>? requests,
      DateTime? updatedAt,
      List<Garage>? updatedGarages,
      List<Task>? updatedTasks,
      List<VehicleTask>? updatedVehicleTasks,
      List<Vehicle>? updatedVehicles}) {
    return Employee(
        account: account ?? this.account,
        assignedVehicleTasks: assignedVehicleTasks ?? this.assignedVehicleTasks,
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        createdGarages: createdGarages ?? this.createdGarages,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicleTasks: createdVehicleTasks ?? this.createdVehicleTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedVehicleTasks: deletedVehicleTasks ?? this.deletedVehicleTasks,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        id: id ?? this.id,
        name: name ?? this.name,
        permission: permission ?? this.permission,
        requests: requests ?? this.requests,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedGarages: updatedGarages ?? this.updatedGarages,
        updatedTasks: updatedTasks ?? this.updatedTasks,
        updatedVehicleTasks: updatedVehicleTasks ?? this.updatedVehicleTasks,
        updatedVehicles: updatedVehicles ?? this.updatedVehicles);
  }

  Employee copyWithWrapped(
      {Wrapped<Account?>? account,
      Wrapped<List<VehicleTask>?>? assignedVehicleTasks,
      Wrapped<List<EmployeeAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<List<Garage>?>? createdGarages,
      Wrapped<List<Task>?>? createdTasks,
      Wrapped<List<VehicleTask>?>? createdVehicleTasks,
      Wrapped<List<Vehicle>?>? createdVehicles,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<VehicleTask>?>? deletedVehicleTasks,
      Wrapped<List<Vehicle>?>? deletedVehicles,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<List<Permission>?>? permission,
      Wrapped<List<SparePartRequest>?>? requests,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<Garage>?>? updatedGarages,
      Wrapped<List<Task>?>? updatedTasks,
      Wrapped<List<VehicleTask>?>? updatedVehicleTasks,
      Wrapped<List<Vehicle>?>? updatedVehicles}) {
    return Employee(
        account: (account != null ? account.value : this.account),
        assignedVehicleTasks: (assignedVehicleTasks != null
            ? assignedVehicleTasks.value
            : this.assignedVehicleTasks),
        audit: (audit != null ? audit.value : this.audit),
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
        deletedVehicleTasks: (deletedVehicleTasks != null
            ? deletedVehicleTasks.value
            : this.deletedVehicleTasks),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        permission: (permission != null ? permission.value : this.permission),
        requests: (requests != null ? requests.value : this.requests),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedGarages: (updatedGarages != null
            ? updatedGarages.value
            : this.updatedGarages),
        updatedTasks:
            (updatedTasks != null ? updatedTasks.value : this.updatedTasks),
        updatedVehicleTasks: (updatedVehicleTasks != null
            ? updatedVehicleTasks.value
            : this.updatedVehicleTasks),
        updatedVehicles: (updatedVehicles != null
            ? updatedVehicles.value
            : this.updatedVehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeAudit {
  const EmployeeAudit({
    this.account,
    this.action,
    this.actionAt,
    this.actionID,
    this.assignedVehicleTasks,
    this.createdGarages,
    this.createdTasks,
    this.createdVehicleTasks,
    this.createdVehicles,
    this.deletedVehicleTasks,
    this.deletedVehicles,
    this.employeeModelID,
    this.name,
    this.permission,
    this.requests,
    this.updatedGarages,
    this.updatedTasks,
    this.updatedVehicleTasks,
    this.updatedVehicles,
  });

  factory EmployeeAudit.fromJson(Map<String, dynamic> json) =>
      _$EmployeeAuditFromJson(json);

  static const toJsonFactory = _$EmployeeAuditToJson;
  Map<String, dynamic> toJson() => _$EmployeeAuditToJson(this);

  @JsonKey(name: 'account')
  final Account? account;
  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'assigned_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? assignedVehicleTasks;
  @JsonKey(name: 'created_garages', defaultValue: <Garage>[])
  final List<Garage>? createdGarages;
  @JsonKey(name: 'created_tasks', defaultValue: <Task>[])
  final List<Task>? createdTasks;
  @JsonKey(name: 'created_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? createdVehicleTasks;
  @JsonKey(name: 'created_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? createdVehicles;
  @JsonKey(name: 'deleted_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? deletedVehicleTasks;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? deletedVehicles;
  @JsonKey(name: 'employeeModelID')
  final int? employeeModelID;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'permission', defaultValue: <Permission>[])
  final List<Permission>? permission;
  @JsonKey(name: 'requests', defaultValue: <SparePartRequest>[])
  final List<SparePartRequest>? requests;
  @JsonKey(name: 'updated_garages', defaultValue: <Garage>[])
  final List<Garage>? updatedGarages;
  @JsonKey(name: 'updated_tasks', defaultValue: <Task>[])
  final List<Task>? updatedTasks;
  @JsonKey(name: 'updated_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? updatedVehicleTasks;
  @JsonKey(name: 'updated_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? updatedVehicles;
  static const fromJsonFactory = _$EmployeeAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeAudit &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.assignedVehicleTasks, assignedVehicleTasks) ||
                const DeepCollectionEquality().equals(
                    other.assignedVehicleTasks, assignedVehicleTasks)) &&
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
            (identical(other.deletedVehicleTasks, deletedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicleTasks, deletedVehicleTasks)) &&
            (identical(other.deletedVehicles, deletedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicles, deletedVehicles)) &&
            (identical(other.employeeModelID, employeeModelID) ||
                const DeepCollectionEquality()
                    .equals(other.employeeModelID, employeeModelID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)) &&
            (identical(other.updatedGarages, updatedGarages) ||
                const DeepCollectionEquality()
                    .equals(other.updatedGarages, updatedGarages)) &&
            (identical(other.updatedTasks, updatedTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTasks, updatedTasks)) &&
            (identical(other.updatedVehicleTasks, updatedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicleTasks, updatedVehicleTasks)) &&
            (identical(other.updatedVehicles, updatedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicles, updatedVehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(assignedVehicleTasks) ^
      const DeepCollectionEquality().hash(createdGarages) ^
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicleTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedVehicleTasks) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(employeeModelID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(requests) ^
      const DeepCollectionEquality().hash(updatedGarages) ^
      const DeepCollectionEquality().hash(updatedTasks) ^
      const DeepCollectionEquality().hash(updatedVehicleTasks) ^
      const DeepCollectionEquality().hash(updatedVehicles) ^
      runtimeType.hashCode;
}

extension $EmployeeAuditExtension on EmployeeAudit {
  EmployeeAudit copyWith(
      {Account? account,
      String? action,
      String? actionAt,
      int? actionID,
      List<VehicleTask>? assignedVehicleTasks,
      List<Garage>? createdGarages,
      List<Task>? createdTasks,
      List<VehicleTask>? createdVehicleTasks,
      List<Vehicle>? createdVehicles,
      List<VehicleTask>? deletedVehicleTasks,
      List<Vehicle>? deletedVehicles,
      int? employeeModelID,
      String? name,
      List<Permission>? permission,
      List<SparePartRequest>? requests,
      List<Garage>? updatedGarages,
      List<Task>? updatedTasks,
      List<VehicleTask>? updatedVehicleTasks,
      List<Vehicle>? updatedVehicles}) {
    return EmployeeAudit(
        account: account ?? this.account,
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        assignedVehicleTasks: assignedVehicleTasks ?? this.assignedVehicleTasks,
        createdGarages: createdGarages ?? this.createdGarages,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicleTasks: createdVehicleTasks ?? this.createdVehicleTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedVehicleTasks: deletedVehicleTasks ?? this.deletedVehicleTasks,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        employeeModelID: employeeModelID ?? this.employeeModelID,
        name: name ?? this.name,
        permission: permission ?? this.permission,
        requests: requests ?? this.requests,
        updatedGarages: updatedGarages ?? this.updatedGarages,
        updatedTasks: updatedTasks ?? this.updatedTasks,
        updatedVehicleTasks: updatedVehicleTasks ?? this.updatedVehicleTasks,
        updatedVehicles: updatedVehicles ?? this.updatedVehicles);
  }

  EmployeeAudit copyWithWrapped(
      {Wrapped<Account?>? account,
      Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<List<VehicleTask>?>? assignedVehicleTasks,
      Wrapped<List<Garage>?>? createdGarages,
      Wrapped<List<Task>?>? createdTasks,
      Wrapped<List<VehicleTask>?>? createdVehicleTasks,
      Wrapped<List<Vehicle>?>? createdVehicles,
      Wrapped<List<VehicleTask>?>? deletedVehicleTasks,
      Wrapped<List<Vehicle>?>? deletedVehicles,
      Wrapped<int?>? employeeModelID,
      Wrapped<String?>? name,
      Wrapped<List<Permission>?>? permission,
      Wrapped<List<SparePartRequest>?>? requests,
      Wrapped<List<Garage>?>? updatedGarages,
      Wrapped<List<Task>?>? updatedTasks,
      Wrapped<List<VehicleTask>?>? updatedVehicleTasks,
      Wrapped<List<Vehicle>?>? updatedVehicles}) {
    return EmployeeAudit(
        account: (account != null ? account.value : this.account),
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        assignedVehicleTasks: (assignedVehicleTasks != null
            ? assignedVehicleTasks.value
            : this.assignedVehicleTasks),
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
        deletedVehicleTasks: (deletedVehicleTasks != null
            ? deletedVehicleTasks.value
            : this.deletedVehicleTasks),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        employeeModelID: (employeeModelID != null
            ? employeeModelID.value
            : this.employeeModelID),
        name: (name != null ? name.value : this.name),
        permission: (permission != null ? permission.value : this.permission),
        requests: (requests != null ? requests.value : this.requests),
        updatedGarages: (updatedGarages != null
            ? updatedGarages.value
            : this.updatedGarages),
        updatedTasks:
            (updatedTasks != null ? updatedTasks.value : this.updatedTasks),
        updatedVehicleTasks: (updatedVehicleTasks != null
            ? updatedVehicleTasks.value
            : this.updatedVehicleTasks),
        updatedVehicles: (updatedVehicles != null
            ? updatedVehicles.value
            : this.updatedVehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class EmployeeResponse {
  const EmployeeResponse({
    this.account,
    this.assignedVehicleTasks,
    this.createdAt,
    this.createdGarages,
    this.createdTasks,
    this.createdVehicleTasks,
    this.createdVehicles,
    this.deletedAt,
    this.deletedVehicleTasks,
    this.deletedVehicles,
    this.history,
    this.id,
    this.name,
    this.permission,
    this.requests,
    this.updatedAt,
    this.updatedGarages,
    this.updatedTasks,
    this.updatedVehicleTasks,
    this.updatedVehicles,
  });

  factory EmployeeResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeResponseFromJson(json);

  static const toJsonFactory = _$EmployeeResponseToJson;
  Map<String, dynamic> toJson() => _$EmployeeResponseToJson(this);

  @JsonKey(name: 'account')
  final Account? account;
  @JsonKey(name: 'assigned_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? assignedVehicleTasks;
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
  @JsonKey(name: 'deleted_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? deletedVehicleTasks;
  @JsonKey(name: 'deleted_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? deletedVehicles;
  @JsonKey(name: 'history', defaultValue: <EmployeeAudit>[])
  final List<EmployeeAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'permission', defaultValue: <Permission>[])
  final List<Permission>? permission;
  @JsonKey(name: 'requests', defaultValue: <SparePartRequest>[])
  final List<SparePartRequest>? requests;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_garages', defaultValue: <Garage>[])
  final List<Garage>? updatedGarages;
  @JsonKey(name: 'updated_tasks', defaultValue: <Task>[])
  final List<Task>? updatedTasks;
  @JsonKey(name: 'updated_vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? updatedVehicleTasks;
  @JsonKey(name: 'updated_vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? updatedVehicles;
  static const fromJsonFactory = _$EmployeeResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployeeResponse &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.assignedVehicleTasks, assignedVehicleTasks) ||
                const DeepCollectionEquality().equals(
                    other.assignedVehicleTasks, assignedVehicleTasks)) &&
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
            (identical(other.deletedVehicleTasks, deletedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.deletedVehicleTasks, deletedVehicleTasks)) &&
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
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
            (identical(other.requests, requests) ||
                const DeepCollectionEquality()
                    .equals(other.requests, requests)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedGarages, updatedGarages) ||
                const DeepCollectionEquality()
                    .equals(other.updatedGarages, updatedGarages)) &&
            (identical(other.updatedTasks, updatedTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedTasks, updatedTasks)) &&
            (identical(other.updatedVehicleTasks, updatedVehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicleTasks, updatedVehicleTasks)) &&
            (identical(other.updatedVehicles, updatedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVehicles, updatedVehicles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(assignedVehicleTasks) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdGarages) ^
      const DeepCollectionEquality().hash(createdTasks) ^
      const DeepCollectionEquality().hash(createdVehicleTasks) ^
      const DeepCollectionEquality().hash(createdVehicles) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedVehicleTasks) ^
      const DeepCollectionEquality().hash(deletedVehicles) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(requests) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedGarages) ^
      const DeepCollectionEquality().hash(updatedTasks) ^
      const DeepCollectionEquality().hash(updatedVehicleTasks) ^
      const DeepCollectionEquality().hash(updatedVehicles) ^
      runtimeType.hashCode;
}

extension $EmployeeResponseExtension on EmployeeResponse {
  EmployeeResponse copyWith(
      {Account? account,
      List<VehicleTask>? assignedVehicleTasks,
      DateTime? createdAt,
      List<Garage>? createdGarages,
      List<Task>? createdTasks,
      List<VehicleTask>? createdVehicleTasks,
      List<Vehicle>? createdVehicles,
      GormDeletedAt? deletedAt,
      List<VehicleTask>? deletedVehicleTasks,
      List<Vehicle>? deletedVehicles,
      List<EmployeeAudit>? history,
      int? id,
      String? name,
      List<Permission>? permission,
      List<SparePartRequest>? requests,
      DateTime? updatedAt,
      List<Garage>? updatedGarages,
      List<Task>? updatedTasks,
      List<VehicleTask>? updatedVehicleTasks,
      List<Vehicle>? updatedVehicles}) {
    return EmployeeResponse(
        account: account ?? this.account,
        assignedVehicleTasks: assignedVehicleTasks ?? this.assignedVehicleTasks,
        createdAt: createdAt ?? this.createdAt,
        createdGarages: createdGarages ?? this.createdGarages,
        createdTasks: createdTasks ?? this.createdTasks,
        createdVehicleTasks: createdVehicleTasks ?? this.createdVehicleTasks,
        createdVehicles: createdVehicles ?? this.createdVehicles,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedVehicleTasks: deletedVehicleTasks ?? this.deletedVehicleTasks,
        deletedVehicles: deletedVehicles ?? this.deletedVehicles,
        history: history ?? this.history,
        id: id ?? this.id,
        name: name ?? this.name,
        permission: permission ?? this.permission,
        requests: requests ?? this.requests,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedGarages: updatedGarages ?? this.updatedGarages,
        updatedTasks: updatedTasks ?? this.updatedTasks,
        updatedVehicleTasks: updatedVehicleTasks ?? this.updatedVehicleTasks,
        updatedVehicles: updatedVehicles ?? this.updatedVehicles);
  }

  EmployeeResponse copyWithWrapped(
      {Wrapped<Account?>? account,
      Wrapped<List<VehicleTask>?>? assignedVehicleTasks,
      Wrapped<DateTime?>? createdAt,
      Wrapped<List<Garage>?>? createdGarages,
      Wrapped<List<Task>?>? createdTasks,
      Wrapped<List<VehicleTask>?>? createdVehicleTasks,
      Wrapped<List<Vehicle>?>? createdVehicles,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<VehicleTask>?>? deletedVehicleTasks,
      Wrapped<List<Vehicle>?>? deletedVehicles,
      Wrapped<List<EmployeeAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<List<Permission>?>? permission,
      Wrapped<List<SparePartRequest>?>? requests,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<Garage>?>? updatedGarages,
      Wrapped<List<Task>?>? updatedTasks,
      Wrapped<List<VehicleTask>?>? updatedVehicleTasks,
      Wrapped<List<Vehicle>?>? updatedVehicles}) {
    return EmployeeResponse(
        account: (account != null ? account.value : this.account),
        assignedVehicleTasks: (assignedVehicleTasks != null
            ? assignedVehicleTasks.value
            : this.assignedVehicleTasks),
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
        deletedVehicleTasks: (deletedVehicleTasks != null
            ? deletedVehicleTasks.value
            : this.deletedVehicleTasks),
        deletedVehicles: (deletedVehicles != null
            ? deletedVehicles.value
            : this.deletedVehicles),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        permission: (permission != null ? permission.value : this.permission),
        requests: (requests != null ? requests.value : this.requests),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedGarages: (updatedGarages != null
            ? updatedGarages.value
            : this.updatedGarages),
        updatedTasks:
            (updatedTasks != null ? updatedTasks.value : this.updatedTasks),
        updatedVehicleTasks: (updatedVehicleTasks != null
            ? updatedVehicleTasks.value
            : this.updatedVehicleTasks),
        updatedVehicles: (updatedVehicles != null
            ? updatedVehicles.value
            : this.updatedVehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class Garage {
  const Garage({
    this.audit,
    this.city,
    this.cityId,
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deletedAt,
    this.id,
    this.label,
    this.owners,
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
  });

  factory Garage.fromJson(Map<String, dynamic> json) => _$GarageFromJson(json);

  static const toJsonFactory = _$GarageToJson;
  Map<String, dynamic> toJson() => _$GarageToJson(this);

  @JsonKey(name: 'audit', defaultValue: <GarageAudit>[])
  final List<GarageAudit>? audit;
  @JsonKey(name: 'city')
  final City? city;
  @JsonKey(name: 'city_id')
  final int? cityId;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'owners', defaultValue: <Owner>[])
  final List<Owner>? owners;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$GarageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Garage &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
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
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.owners, owners) ||
                const DeepCollectionEquality().equals(other.owners, owners)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(owners) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $GarageExtension on Garage {
  Garage copyWith(
      {List<GarageAudit>? audit,
      City? city,
      int? cityId,
      DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      int? id,
      String? label,
      List<Owner>? owners,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById}) {
    return Garage(
        audit: audit ?? this.audit,
        city: city ?? this.city,
        cityId: cityId ?? this.cityId,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        label: label ?? this.label,
        owners: owners ?? this.owners,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  Garage copyWithWrapped(
      {Wrapped<List<GarageAudit>?>? audit,
      Wrapped<City?>? city,
      Wrapped<int?>? cityId,
      Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<List<Owner>?>? owners,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return Garage(
        audit: (audit != null ? audit.value : this.audit),
        city: (city != null ? city.value : this.city),
        cityId: (cityId != null ? cityId.value : this.cityId),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        owners: (owners != null ? owners.value : this.owners),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class GarageAudit {
  const GarageAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.city,
    this.cityId,
    this.createdBy,
    this.createdById,
    this.garageModelID,
    this.label,
    this.owners,
    this.updatedBy,
    this.updatedById,
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
  @JsonKey(name: 'city')
  final City? city;
  @JsonKey(name: 'city_id')
  final int? cityId;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'garageModelID')
  final int? garageModelID;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'owners', defaultValue: <Owner>[])
  final List<Owner>? owners;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
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
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
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
            (identical(other.owners, owners) ||
                const DeepCollectionEquality().equals(other.owners, owners)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(garageModelID) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(owners) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $GarageAuditExtension on GarageAudit {
  GarageAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      City? city,
      int? cityId,
      Employee? createdBy,
      int? createdById,
      int? garageModelID,
      String? label,
      List<Owner>? owners,
      Employee? updatedBy,
      int? updatedById}) {
    return GarageAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        city: city ?? this.city,
        cityId: cityId ?? this.cityId,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        garageModelID: garageModelID ?? this.garageModelID,
        label: label ?? this.label,
        owners: owners ?? this.owners,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  GarageAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<City?>? city,
      Wrapped<int?>? cityId,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<int?>? garageModelID,
      Wrapped<String?>? label,
      Wrapped<List<Owner>?>? owners,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return GarageAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        city: (city != null ? city.value : this.city),
        cityId: (cityId != null ? cityId.value : this.cityId),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        garageModelID:
            (garageModelID != null ? garageModelID.value : this.garageModelID),
        label: (label != null ? label.value : this.label),
        owners: (owners != null ? owners.value : this.owners),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class GarageResponse {
  const GarageResponse({
    this.city,
    this.cityId,
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deletedAt,
    this.history,
    this.id,
    this.label,
    this.owners,
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
  });

  factory GarageResponse.fromJson(Map<String, dynamic> json) =>
      _$GarageResponseFromJson(json);

  static const toJsonFactory = _$GarageResponseToJson;
  Map<String, dynamic> toJson() => _$GarageResponseToJson(this);

  @JsonKey(name: 'city')
  final City? city;
  @JsonKey(name: 'city_id')
  final int? cityId;
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
  @JsonKey(name: 'owners', defaultValue: <Owner>[])
  final List<Owner>? owners;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$GarageResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GarageResponse &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
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
            (identical(other.owners, owners) ||
                const DeepCollectionEquality().equals(other.owners, owners)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(owners) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $GarageResponseExtension on GarageResponse {
  GarageResponse copyWith(
      {City? city,
      int? cityId,
      DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      List<GarageAudit>? history,
      int? id,
      String? label,
      List<Owner>? owners,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById}) {
    return GarageResponse(
        city: city ?? this.city,
        cityId: cityId ?? this.cityId,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        owners: owners ?? this.owners,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  GarageResponse copyWithWrapped(
      {Wrapped<City?>? city,
      Wrapped<int?>? cityId,
      Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<GarageAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<List<Owner>?>? owners,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return GarageResponse(
        city: (city != null ? city.value : this.city),
        cityId: (cityId != null ? cityId.value : this.cityId),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        owners: (owners != null ? owners.value : this.owners),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
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
class ListCity {
  const ListCity({
    this.data,
    this.total,
  });

  factory ListCity.fromJson(Map<String, dynamic> json) =>
      _$ListCityFromJson(json);

  static const toJsonFactory = _$ListCityToJson;
  Map<String, dynamic> toJson() => _$ListCityToJson(this);

  @JsonKey(name: 'data', defaultValue: <CityResponse>[])
  final List<CityResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListCityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListCity &&
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

extension $ListCityExtension on ListCity {
  ListCity copyWith({List<CityResponse>? data, int? total}) {
    return ListCity(data: data ?? this.data, total: total ?? this.total);
  }

  ListCity copyWithWrapped(
      {Wrapped<List<CityResponse>?>? data, Wrapped<int?>? total}) {
    return ListCity(
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
class ListSparePartRequest {
  const ListSparePartRequest({
    this.data,
    this.total,
  });

  factory ListSparePartRequest.fromJson(Map<String, dynamic> json) =>
      _$ListSparePartRequestFromJson(json);

  static const toJsonFactory = _$ListSparePartRequestToJson;
  Map<String, dynamic> toJson() => _$ListSparePartRequestToJson(this);

  @JsonKey(name: 'data', defaultValue: <SparePartRequestResponse>[])
  final List<SparePartRequestResponse>? data;
  @JsonKey(name: 'total')
  final int? total;
  static const fromJsonFactory = _$ListSparePartRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListSparePartRequest &&
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

extension $ListSparePartRequestExtension on ListSparePartRequest {
  ListSparePartRequest copyWith(
      {List<SparePartRequestResponse>? data, int? total}) {
    return ListSparePartRequest(
        data: data ?? this.data, total: total ?? this.total);
  }

  ListSparePartRequest copyWithWrapped(
      {Wrapped<List<SparePartRequestResponse>?>? data, Wrapped<int?>? total}) {
    return ListSparePartRequest(
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
    this.audit,
    this.createdAt,
    this.deletedAt,
    this.email,
    this.garage,
    this.garageId,
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
  @JsonKey(name: 'audit', defaultValue: <OwnerAudit>[])
  final List<OwnerAudit>? audit;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'garage')
  final Garage? garage;
  @JsonKey(name: 'garage_id')
  final int? garageId;
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
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.garage, garage) ||
                const DeepCollectionEquality().equals(other.garage, garage)) &&
            (identical(other.garageId, garageId) ||
                const DeepCollectionEquality()
                    .equals(other.garageId, garageId)) &&
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
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(garage) ^
      const DeepCollectionEquality().hash(garageId) ^
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
      List<OwnerAudit>? audit,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      String? email,
      Garage? garage,
      int? garageId,
      int? id,
      String? phone,
      String? photo,
      String? postalCode,
      DateTime? updatedAt,
      List<Vehicle>? vehicles}) {
    return Owner(
        address: address ?? this.address,
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        garage: garage ?? this.garage,
        garageId: garageId ?? this.garageId,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        updatedAt: updatedAt ?? this.updatedAt,
        vehicles: vehicles ?? this.vehicles);
  }

  Owner copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<List<OwnerAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<String?>? email,
      Wrapped<Garage?>? garage,
      Wrapped<int?>? garageId,
      Wrapped<int?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<Vehicle>?>? vehicles}) {
    return Owner(
        address: (address != null ? address.value : this.address),
        audit: (audit != null ? audit.value : this.audit),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        garage: (garage != null ? garage.value : this.garage),
        garageId: (garageId != null ? garageId.value : this.garageId),
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
    this.garage,
    this.garageId,
    this.ownerModelID,
    this.phone,
    this.photo,
    this.postalCode,
    this.vehicles,
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
  @JsonKey(name: 'garage')
  final Garage? garage;
  @JsonKey(name: 'garage_id')
  final int? garageId;
  @JsonKey(name: 'ownerModelID')
  final int? ownerModelID;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'vehicles', defaultValue: <Vehicle>[])
  final List<Vehicle>? vehicles;
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
            (identical(other.garage, garage) ||
                const DeepCollectionEquality().equals(other.garage, garage)) &&
            (identical(other.garageId, garageId) ||
                const DeepCollectionEquality()
                    .equals(other.garageId, garageId)) &&
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
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
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
      const DeepCollectionEquality().hash(garage) ^
      const DeepCollectionEquality().hash(garageId) ^
      const DeepCollectionEquality().hash(ownerModelID) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(vehicles) ^
      runtimeType.hashCode;
}

extension $OwnerAuditExtension on OwnerAudit {
  OwnerAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      String? address,
      String? email,
      Garage? garage,
      int? garageId,
      int? ownerModelID,
      String? phone,
      String? photo,
      String? postalCode,
      List<Vehicle>? vehicles}) {
    return OwnerAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        address: address ?? this.address,
        email: email ?? this.email,
        garage: garage ?? this.garage,
        garageId: garageId ?? this.garageId,
        ownerModelID: ownerModelID ?? this.ownerModelID,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
        postalCode: postalCode ?? this.postalCode,
        vehicles: vehicles ?? this.vehicles);
  }

  OwnerAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? address,
      Wrapped<String?>? email,
      Wrapped<Garage?>? garage,
      Wrapped<int?>? garageId,
      Wrapped<int?>? ownerModelID,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<List<Vehicle>?>? vehicles}) {
    return OwnerAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        address: (address != null ? address.value : this.address),
        email: (email != null ? email.value : this.email),
        garage: (garage != null ? garage.value : this.garage),
        garageId: (garageId != null ? garageId.value : this.garageId),
        ownerModelID:
            (ownerModelID != null ? ownerModelID.value : this.ownerModelID),
        phone: (phone != null ? phone.value : this.phone),
        photo: (photo != null ? photo.value : this.photo),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        vehicles: (vehicles != null ? vehicles.value : this.vehicles));
  }
}

@JsonSerializable(explicitToJson: true)
class OwnerResponse {
  const OwnerResponse({
    this.address,
    this.createdAt,
    this.deletedAt,
    this.email,
    this.garage,
    this.garageId,
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
  @JsonKey(name: 'garage')
  final Garage? garage;
  @JsonKey(name: 'garage_id')
  final int? garageId;
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
            (identical(other.garage, garage) ||
                const DeepCollectionEquality().equals(other.garage, garage)) &&
            (identical(other.garageId, garageId) ||
                const DeepCollectionEquality()
                    .equals(other.garageId, garageId)) &&
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
      const DeepCollectionEquality().hash(garage) ^
      const DeepCollectionEquality().hash(garageId) ^
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
      Garage? garage,
      int? garageId,
      List<OwnerAudit>? history,
      int? id,
      String? phone,
      String? photo,
      String? postalCode,
      DateTime? updatedAt,
      List<Vehicle>? vehicles}) {
    return OwnerResponse(
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        email: email ?? this.email,
        garage: garage ?? this.garage,
        garageId: garageId ?? this.garageId,
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
      Wrapped<Garage?>? garage,
      Wrapped<int?>? garageId,
      Wrapped<List<OwnerAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? photo,
      Wrapped<String?>? postalCode,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<Vehicle>?>? vehicles}) {
    return OwnerResponse(
        address: (address != null ? address.value : this.address),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        email: (email != null ? email.value : this.email),
        garage: (garage != null ? garage.value : this.garage),
        garageId: (garageId != null ? garageId.value : this.garageId),
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
class Permission {
  const Permission({
    this.audit,
    this.available,
    this.createdAt,
    this.deletedAt,
    this.employees,
    this.employeesId,
    this.id,
    this.label,
    this.updatedAt,
  });

  factory Permission.fromJson(Map<String, dynamic> json) =>
      _$PermissionFromJson(json);

  static const toJsonFactory = _$PermissionToJson;
  Map<String, dynamic> toJson() => _$PermissionToJson(this);

  @JsonKey(name: 'audit', defaultValue: <PermissionAudit>[])
  final List<PermissionAudit>? audit;
  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'employees')
  final Employee? employees;
  @JsonKey(name: 'employees_id')
  final int? employeesId;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$PermissionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Permission &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)) &&
            (identical(other.employeesId, employeesId) ||
                const DeepCollectionEquality()
                    .equals(other.employeesId, employeesId)) &&
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
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(employees) ^
      const DeepCollectionEquality().hash(employeesId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $PermissionExtension on Permission {
  Permission copyWith(
      {List<PermissionAudit>? audit,
      bool? available,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      Employee? employees,
      int? employeesId,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return Permission(
        audit: audit ?? this.audit,
        available: available ?? this.available,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        employees: employees ?? this.employees,
        employeesId: employeesId ?? this.employeesId,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Permission copyWithWrapped(
      {Wrapped<List<PermissionAudit>?>? audit,
      Wrapped<bool?>? available,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<Employee?>? employees,
      Wrapped<int?>? employeesId,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return Permission(
        audit: (audit != null ? audit.value : this.audit),
        available: (available != null ? available.value : this.available),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        employees: (employees != null ? employees.value : this.employees),
        employeesId:
            (employeesId != null ? employeesId.value : this.employeesId),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionAudit {
  const PermissionAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.available,
    this.employees,
    this.employeesId,
    this.label,
    this.permissionModelID,
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
  @JsonKey(name: 'employees')
  final Employee? employees;
  @JsonKey(name: 'employees_id')
  final int? employeesId;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'permissionModelID')
  final int? permissionModelID;
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
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)) &&
            (identical(other.employeesId, employeesId) ||
                const DeepCollectionEquality()
                    .equals(other.employeesId, employeesId)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.permissionModelID, permissionModelID) ||
                const DeepCollectionEquality()
                    .equals(other.permissionModelID, permissionModelID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(employees) ^
      const DeepCollectionEquality().hash(employeesId) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(permissionModelID) ^
      runtimeType.hashCode;
}

extension $PermissionAuditExtension on PermissionAudit {
  PermissionAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      bool? available,
      Employee? employees,
      int? employeesId,
      String? label,
      int? permissionModelID}) {
    return PermissionAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        available: available ?? this.available,
        employees: employees ?? this.employees,
        employeesId: employeesId ?? this.employeesId,
        label: label ?? this.label,
        permissionModelID: permissionModelID ?? this.permissionModelID);
  }

  PermissionAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<bool?>? available,
      Wrapped<Employee?>? employees,
      Wrapped<int?>? employeesId,
      Wrapped<String?>? label,
      Wrapped<int?>? permissionModelID}) {
    return PermissionAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        available: (available != null ? available.value : this.available),
        employees: (employees != null ? employees.value : this.employees),
        employeesId:
            (employeesId != null ? employeesId.value : this.employeesId),
        label: (label != null ? label.value : this.label),
        permissionModelID: (permissionModelID != null
            ? permissionModelID.value
            : this.permissionModelID));
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionResponse {
  const PermissionResponse({
    this.available,
    this.createdAt,
    this.deletedAt,
    this.employees,
    this.employeesId,
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
  @JsonKey(name: 'employees')
  final Employee? employees;
  @JsonKey(name: 'employees_id')
  final int? employeesId;
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
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)) &&
            (identical(other.employeesId, employeesId) ||
                const DeepCollectionEquality()
                    .equals(other.employeesId, employeesId)) &&
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
      const DeepCollectionEquality().hash(employees) ^
      const DeepCollectionEquality().hash(employeesId) ^
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
      Employee? employees,
      int? employeesId,
      List<PermissionAudit>? history,
      int? id,
      String? label,
      DateTime? updatedAt}) {
    return PermissionResponse(
        available: available ?? this.available,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        employees: employees ?? this.employees,
        employeesId: employeesId ?? this.employeesId,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  PermissionResponse copyWithWrapped(
      {Wrapped<bool?>? available,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<Employee?>? employees,
      Wrapped<int?>? employeesId,
      Wrapped<List<PermissionAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<DateTime?>? updatedAt}) {
    return PermissionResponse(
        available: (available != null ? available.value : this.available),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        employees: (employees != null ? employees.value : this.employees),
        employeesId:
            (employeesId != null ? employeesId.value : this.employeesId),
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
class SparePart {
  const SparePart({
    this.audit,
    this.barcode,
    this.createdAt,
    this.deletedAt,
    this.id,
    this.reference,
    this.request,
    this.requestId,
    this.supplier,
    this.supplierId,
    this.updatedAt,
  });

  factory SparePart.fromJson(Map<String, dynamic> json) =>
      _$SparePartFromJson(json);

  static const toJsonFactory = _$SparePartToJson;
  Map<String, dynamic> toJson() => _$SparePartToJson(this);

  @JsonKey(name: 'audit', defaultValue: <SparePartAudit>[])
  final List<SparePartAudit>? audit;
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
  @JsonKey(name: 'request')
  final SparePartRequest? request;
  @JsonKey(name: 'request_id')
  final int? requestId;
  @JsonKey(name: 'supplier')
  final Supplier? supplier;
  @JsonKey(name: 'supplier_id')
  final int? supplierId;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$SparePartFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SparePart &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
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
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.supplier, supplier) ||
                const DeepCollectionEquality()
                    .equals(other.supplier, supplier)) &&
            (identical(other.supplierId, supplierId) ||
                const DeepCollectionEquality()
                    .equals(other.supplierId, supplierId)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(supplierId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SparePartExtension on SparePart {
  SparePart copyWith(
      {List<SparePartAudit>? audit,
      String? barcode,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      int? id,
      String? reference,
      SparePartRequest? request,
      int? requestId,
      Supplier? supplier,
      int? supplierId,
      DateTime? updatedAt}) {
    return SparePart(
        audit: audit ?? this.audit,
        barcode: barcode ?? this.barcode,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        reference: reference ?? this.reference,
        request: request ?? this.request,
        requestId: requestId ?? this.requestId,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SparePart copyWithWrapped(
      {Wrapped<List<SparePartAudit>?>? audit,
      Wrapped<String?>? barcode,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? reference,
      Wrapped<SparePartRequest?>? request,
      Wrapped<int?>? requestId,
      Wrapped<Supplier?>? supplier,
      Wrapped<int?>? supplierId,
      Wrapped<DateTime?>? updatedAt}) {
    return SparePart(
        audit: (audit != null ? audit.value : this.audit),
        barcode: (barcode != null ? barcode.value : this.barcode),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        reference: (reference != null ? reference.value : this.reference),
        request: (request != null ? request.value : this.request),
        requestId: (requestId != null ? requestId.value : this.requestId),
        supplier: (supplier != null ? supplier.value : this.supplier),
        supplierId: (supplierId != null ? supplierId.value : this.supplierId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
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
    this.request,
    this.requestId,
    this.sparePartModelID,
    this.supplier,
    this.supplierId,
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
  @JsonKey(name: 'request')
  final SparePartRequest? request;
  @JsonKey(name: 'request_id')
  final int? requestId;
  @JsonKey(name: 'sparePartModelID')
  final int? sparePartModelID;
  @JsonKey(name: 'supplier')
  final Supplier? supplier;
  @JsonKey(name: 'supplier_id')
  final int? supplierId;
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
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.sparePartModelID, sparePartModelID) ||
                const DeepCollectionEquality()
                    .equals(other.sparePartModelID, sparePartModelID)) &&
            (identical(other.supplier, supplier) ||
                const DeepCollectionEquality()
                    .equals(other.supplier, supplier)) &&
            (identical(other.supplierId, supplierId) ||
                const DeepCollectionEquality()
                    .equals(other.supplierId, supplierId)));
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
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(sparePartModelID) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(supplierId) ^
      runtimeType.hashCode;
}

extension $SparePartAuditExtension on SparePartAudit {
  SparePartAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      String? barcode,
      String? reference,
      SparePartRequest? request,
      int? requestId,
      int? sparePartModelID,
      Supplier? supplier,
      int? supplierId}) {
    return SparePartAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        barcode: barcode ?? this.barcode,
        reference: reference ?? this.reference,
        request: request ?? this.request,
        requestId: requestId ?? this.requestId,
        sparePartModelID: sparePartModelID ?? this.sparePartModelID,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId);
  }

  SparePartAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? barcode,
      Wrapped<String?>? reference,
      Wrapped<SparePartRequest?>? request,
      Wrapped<int?>? requestId,
      Wrapped<int?>? sparePartModelID,
      Wrapped<Supplier?>? supplier,
      Wrapped<int?>? supplierId}) {
    return SparePartAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        barcode: (barcode != null ? barcode.value : this.barcode),
        reference: (reference != null ? reference.value : this.reference),
        request: (request != null ? request.value : this.request),
        requestId: (requestId != null ? requestId.value : this.requestId),
        sparePartModelID: (sparePartModelID != null
            ? sparePartModelID.value
            : this.sparePartModelID),
        supplier: (supplier != null ? supplier.value : this.supplier),
        supplierId: (supplierId != null ? supplierId.value : this.supplierId));
  }
}

@JsonSerializable(explicitToJson: true)
class SparePartRequest {
  const SparePartRequest({
    this.audit,
    this.createdAt,
    this.deletedAt,
    this.id,
    this.requestBy,
    this.requestById,
    this.spareParts,
    this.updatedAt,
  });

  factory SparePartRequest.fromJson(Map<String, dynamic> json) =>
      _$SparePartRequestFromJson(json);

  static const toJsonFactory = _$SparePartRequestToJson;
  Map<String, dynamic> toJson() => _$SparePartRequestToJson(this);

  @JsonKey(name: 'audit', defaultValue: <SparePartRequestAudit>[])
  final List<SparePartRequestAudit>? audit;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'request_by')
  final Employee? requestBy;
  @JsonKey(name: 'request_by_id')
  final int? requestById;
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$SparePartRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SparePartRequest &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.requestBy, requestBy) ||
                const DeepCollectionEquality()
                    .equals(other.requestBy, requestBy)) &&
            (identical(other.requestById, requestById) ||
                const DeepCollectionEquality()
                    .equals(other.requestById, requestById)) &&
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(requestBy) ^
      const DeepCollectionEquality().hash(requestById) ^
      const DeepCollectionEquality().hash(spareParts) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SparePartRequestExtension on SparePartRequest {
  SparePartRequest copyWith(
      {List<SparePartRequestAudit>? audit,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      int? id,
      Employee? requestBy,
      int? requestById,
      List<SparePart>? spareParts,
      DateTime? updatedAt}) {
    return SparePartRequest(
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        requestBy: requestBy ?? this.requestBy,
        requestById: requestById ?? this.requestById,
        spareParts: spareParts ?? this.spareParts,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SparePartRequest copyWithWrapped(
      {Wrapped<List<SparePartRequestAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<Employee?>? requestBy,
      Wrapped<int?>? requestById,
      Wrapped<List<SparePart>?>? spareParts,
      Wrapped<DateTime?>? updatedAt}) {
    return SparePartRequest(
        audit: (audit != null ? audit.value : this.audit),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        requestBy: (requestBy != null ? requestBy.value : this.requestBy),
        requestById:
            (requestById != null ? requestById.value : this.requestById),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class SparePartRequestAudit {
  const SparePartRequestAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.requestBy,
    this.requestById,
    this.spareParts,
    this.sparePartRequestModelID,
  });

  factory SparePartRequestAudit.fromJson(Map<String, dynamic> json) =>
      _$SparePartRequestAuditFromJson(json);

  static const toJsonFactory = _$SparePartRequestAuditToJson;
  Map<String, dynamic> toJson() => _$SparePartRequestAuditToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'actionAt')
  final String? actionAt;
  @JsonKey(name: 'actionID')
  final int? actionID;
  @JsonKey(name: 'request_by')
  final Employee? requestBy;
  @JsonKey(name: 'request_by_id')
  final int? requestById;
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
  @JsonKey(name: 'sparePartRequestModelID')
  final int? sparePartRequestModelID;
  static const fromJsonFactory = _$SparePartRequestAuditFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SparePartRequestAudit &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionAt, actionAt) ||
                const DeepCollectionEquality()
                    .equals(other.actionAt, actionAt)) &&
            (identical(other.actionID, actionID) ||
                const DeepCollectionEquality()
                    .equals(other.actionID, actionID)) &&
            (identical(other.requestBy, requestBy) ||
                const DeepCollectionEquality()
                    .equals(other.requestBy, requestBy)) &&
            (identical(other.requestById, requestById) ||
                const DeepCollectionEquality()
                    .equals(other.requestById, requestById)) &&
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)) &&
            (identical(
                    other.sparePartRequestModelID, sparePartRequestModelID) ||
                const DeepCollectionEquality().equals(
                    other.sparePartRequestModelID, sparePartRequestModelID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(requestBy) ^
      const DeepCollectionEquality().hash(requestById) ^
      const DeepCollectionEquality().hash(spareParts) ^
      const DeepCollectionEquality().hash(sparePartRequestModelID) ^
      runtimeType.hashCode;
}

extension $SparePartRequestAuditExtension on SparePartRequestAudit {
  SparePartRequestAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      Employee? requestBy,
      int? requestById,
      List<SparePart>? spareParts,
      int? sparePartRequestModelID}) {
    return SparePartRequestAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        requestBy: requestBy ?? this.requestBy,
        requestById: requestById ?? this.requestById,
        spareParts: spareParts ?? this.spareParts,
        sparePartRequestModelID:
            sparePartRequestModelID ?? this.sparePartRequestModelID);
  }

  SparePartRequestAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<Employee?>? requestBy,
      Wrapped<int?>? requestById,
      Wrapped<List<SparePart>?>? spareParts,
      Wrapped<int?>? sparePartRequestModelID}) {
    return SparePartRequestAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        requestBy: (requestBy != null ? requestBy.value : this.requestBy),
        requestById:
            (requestById != null ? requestById.value : this.requestById),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts),
        sparePartRequestModelID: (sparePartRequestModelID != null
            ? sparePartRequestModelID.value
            : this.sparePartRequestModelID));
  }
}

@JsonSerializable(explicitToJson: true)
class SparePartRequestResponse {
  const SparePartRequestResponse({
    this.createdAt,
    this.deletedAt,
    this.history,
    this.id,
    this.requestBy,
    this.requestById,
    this.spareParts,
    this.updatedAt,
  });

  factory SparePartRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$SparePartRequestResponseFromJson(json);

  static const toJsonFactory = _$SparePartRequestResponseToJson;
  Map<String, dynamic> toJson() => _$SparePartRequestResponseToJson(this);

  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'history', defaultValue: <SparePartRequestAudit>[])
  final List<SparePartRequestAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'request_by')
  final Employee? requestBy;
  @JsonKey(name: 'request_by_id')
  final int? requestById;
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$SparePartRequestResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SparePartRequestResponse &&
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
            (identical(other.requestBy, requestBy) ||
                const DeepCollectionEquality()
                    .equals(other.requestBy, requestBy)) &&
            (identical(other.requestById, requestById) ||
                const DeepCollectionEquality()
                    .equals(other.requestById, requestById)) &&
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)) &&
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
      const DeepCollectionEquality().hash(requestBy) ^
      const DeepCollectionEquality().hash(requestById) ^
      const DeepCollectionEquality().hash(spareParts) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SparePartRequestResponseExtension on SparePartRequestResponse {
  SparePartRequestResponse copyWith(
      {DateTime? createdAt,
      GormDeletedAt? deletedAt,
      List<SparePartRequestAudit>? history,
      int? id,
      Employee? requestBy,
      int? requestById,
      List<SparePart>? spareParts,
      DateTime? updatedAt}) {
    return SparePartRequestResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        requestBy: requestBy ?? this.requestBy,
        requestById: requestById ?? this.requestById,
        spareParts: spareParts ?? this.spareParts,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SparePartRequestResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<SparePartRequestAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<Employee?>? requestBy,
      Wrapped<int?>? requestById,
      Wrapped<List<SparePart>?>? spareParts,
      Wrapped<DateTime?>? updatedAt}) {
    return SparePartRequestResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        requestBy: (requestBy != null ? requestBy.value : this.requestBy),
        requestById:
            (requestById != null ? requestById.value : this.requestById),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts),
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
    this.request,
    this.requestId,
    this.supplier,
    this.supplierId,
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
  @JsonKey(name: 'request')
  final SparePartRequest? request;
  @JsonKey(name: 'request_id')
  final int? requestId;
  @JsonKey(name: 'supplier')
  final Supplier? supplier;
  @JsonKey(name: 'supplier_id')
  final int? supplierId;
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
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.supplier, supplier) ||
                const DeepCollectionEquality()
                    .equals(other.supplier, supplier)) &&
            (identical(other.supplierId, supplierId) ||
                const DeepCollectionEquality()
                    .equals(other.supplierId, supplierId)) &&
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
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(supplier) ^
      const DeepCollectionEquality().hash(supplierId) ^
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
      SparePartRequest? request,
      int? requestId,
      Supplier? supplier,
      int? supplierId,
      DateTime? updatedAt}) {
    return SparePartResponse(
        barcode: barcode ?? this.barcode,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        reference: reference ?? this.reference,
        request: request ?? this.request,
        requestId: requestId ?? this.requestId,
        supplier: supplier ?? this.supplier,
        supplierId: supplierId ?? this.supplierId,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SparePartResponse copyWithWrapped(
      {Wrapped<String?>? barcode,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<SparePartAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? reference,
      Wrapped<SparePartRequest?>? request,
      Wrapped<int?>? requestId,
      Wrapped<Supplier?>? supplier,
      Wrapped<int?>? supplierId,
      Wrapped<DateTime?>? updatedAt}) {
    return SparePartResponse(
        barcode: (barcode != null ? barcode.value : this.barcode),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        reference: (reference != null ? reference.value : this.reference),
        request: (request != null ? request.value : this.request),
        requestId: (requestId != null ? requestId.value : this.requestId),
        supplier: (supplier != null ? supplier.value : this.supplier),
        supplierId: (supplierId != null ? supplierId.value : this.supplierId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class Supplier {
  const Supplier({
    this.audit,
    this.createdAt,
    this.deletedAt,
    this.id,
    this.name,
    this.spareParts,
    this.updatedAt,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);

  static const toJsonFactory = _$SupplierToJson;
  Map<String, dynamic> toJson() => _$SupplierToJson(this);

  @JsonKey(name: 'audit', defaultValue: <SupplierAudit>[])
  final List<SupplierAudit>? audit;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$SupplierFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Supplier &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
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
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(spareParts) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SupplierExtension on Supplier {
  Supplier copyWith(
      {List<SupplierAudit>? audit,
      DateTime? createdAt,
      GormDeletedAt? deletedAt,
      int? id,
      String? name,
      List<SparePart>? spareParts,
      DateTime? updatedAt}) {
    return Supplier(
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        name: name ?? this.name,
        spareParts: spareParts ?? this.spareParts,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Supplier copyWithWrapped(
      {Wrapped<List<SupplierAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<List<SparePart>?>? spareParts,
      Wrapped<DateTime?>? updatedAt}) {
    return Supplier(
        audit: (audit != null ? audit.value : this.audit),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts),
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
    this.spareParts,
    this.supplierModelID,
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
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
  @JsonKey(name: 'supplierModelID')
  final int? supplierModelID;
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
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)) &&
            (identical(other.supplierModelID, supplierModelID) ||
                const DeepCollectionEquality()
                    .equals(other.supplierModelID, supplierModelID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(spareParts) ^
      const DeepCollectionEquality().hash(supplierModelID) ^
      runtimeType.hashCode;
}

extension $SupplierAuditExtension on SupplierAudit {
  SupplierAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      String? name,
      List<SparePart>? spareParts,
      int? supplierModelID}) {
    return SupplierAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        name: name ?? this.name,
        spareParts: spareParts ?? this.spareParts,
        supplierModelID: supplierModelID ?? this.supplierModelID);
  }

  SupplierAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<String?>? name,
      Wrapped<List<SparePart>?>? spareParts,
      Wrapped<int?>? supplierModelID}) {
    return SupplierAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        name: (name != null ? name.value : this.name),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts),
        supplierModelID: (supplierModelID != null
            ? supplierModelID.value
            : this.supplierModelID));
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
    this.spareParts,
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
  @JsonKey(name: 'spare_parts', defaultValue: <SparePart>[])
  final List<SparePart>? spareParts;
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
            (identical(other.spareParts, spareParts) ||
                const DeepCollectionEquality()
                    .equals(other.spareParts, spareParts)) &&
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
      const DeepCollectionEquality().hash(spareParts) ^
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
      List<SparePart>? spareParts,
      DateTime? updatedAt}) {
    return SupplierResponse(
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        name: name ?? this.name,
        spareParts: spareParts ?? this.spareParts,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SupplierResponse copyWithWrapped(
      {Wrapped<DateTime?>? createdAt,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<SupplierAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? name,
      Wrapped<List<SparePart>?>? spareParts,
      Wrapped<DateTime?>? updatedAt}) {
    return SupplierResponse(
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        spareParts: (spareParts != null ? spareParts.value : this.spareParts),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class Task {
  const Task({
    this.attachedTo,
    this.audit,
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deletedAt,
    this.id,
    this.label,
    this.parentTaskID,
    this.subTasks,
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  static const toJsonFactory = _$TaskToJson;
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @JsonKey(name: 'attached_to', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? attachedTo;
  @JsonKey(name: 'audit', defaultValue: <TaskAudit>[])
  final List<TaskAudit>? audit;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted_at')
  final GormDeletedAt? deletedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parentTaskID')
  final int? parentTaskID;
  @JsonKey(name: 'subTasks', defaultValue: <Task>[])
  final List<Task>? subTasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$TaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Task &&
            (identical(other.attachedTo, attachedTo) ||
                const DeepCollectionEquality()
                    .equals(other.attachedTo, attachedTo)) &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
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
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTaskID, parentTaskID) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskID, parentTaskID)) &&
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
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(attachedTo) ^
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskID) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $TaskExtension on Task {
  Task copyWith(
      {List<VehicleTask>? attachedTo,
      List<TaskAudit>? audit,
      DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      int? id,
      String? label,
      int? parentTaskID,
      List<Task>? subTasks,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById}) {
    return Task(
        attachedTo: attachedTo ?? this.attachedTo,
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        id: id ?? this.id,
        label: label ?? this.label,
        parentTaskID: parentTaskID ?? this.parentTaskID,
        subTasks: subTasks ?? this.subTasks,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  Task copyWithWrapped(
      {Wrapped<List<VehicleTask>?>? attachedTo,
      Wrapped<List<TaskAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskID,
      Wrapped<List<Task>?>? subTasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return Task(
        attachedTo: (attachedTo != null ? attachedTo.value : this.attachedTo),
        audit: (audit != null ? audit.value : this.audit),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        id: (id != null ? id.value : this.id),
        label: (label != null ? label.value : this.label),
        parentTaskID:
            (parentTaskID != null ? parentTaskID.value : this.parentTaskID),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskAudit {
  const TaskAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.attachedTo,
    this.createdBy,
    this.createdById,
    this.label,
    this.parentTaskID,
    this.subTasks,
    this.taskModelID,
    this.updatedBy,
    this.updatedById,
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
  @JsonKey(name: 'attached_to', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? attachedTo;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'label')
  final String? label;
  @JsonKey(name: 'parentTaskID')
  final int? parentTaskID;
  @JsonKey(name: 'subTasks', defaultValue: <Task>[])
  final List<Task>? subTasks;
  @JsonKey(name: 'taskModelID')
  final int? taskModelID;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
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
            (identical(other.attachedTo, attachedTo) ||
                const DeepCollectionEquality()
                    .equals(other.attachedTo, attachedTo)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.parentTaskID, parentTaskID) ||
                const DeepCollectionEquality()
                    .equals(other.parentTaskID, parentTaskID)) &&
            (identical(other.subTasks, subTasks) ||
                const DeepCollectionEquality()
                    .equals(other.subTasks, subTasks)) &&
            (identical(other.taskModelID, taskModelID) ||
                const DeepCollectionEquality()
                    .equals(other.taskModelID, taskModelID)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(attachedTo) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskID) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(taskModelID) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $TaskAuditExtension on TaskAudit {
  TaskAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      List<VehicleTask>? attachedTo,
      Employee? createdBy,
      int? createdById,
      String? label,
      int? parentTaskID,
      List<Task>? subTasks,
      int? taskModelID,
      Employee? updatedBy,
      int? updatedById}) {
    return TaskAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        attachedTo: attachedTo ?? this.attachedTo,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        label: label ?? this.label,
        parentTaskID: parentTaskID ?? this.parentTaskID,
        subTasks: subTasks ?? this.subTasks,
        taskModelID: taskModelID ?? this.taskModelID,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  TaskAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<List<VehicleTask>?>? attachedTo,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskID,
      Wrapped<List<Task>?>? subTasks,
      Wrapped<int?>? taskModelID,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return TaskAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        attachedTo: (attachedTo != null ? attachedTo.value : this.attachedTo),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        label: (label != null ? label.value : this.label),
        parentTaskID:
            (parentTaskID != null ? parentTaskID.value : this.parentTaskID),
        subTasks: (subTasks != null ? subTasks.value : this.subTasks),
        taskModelID:
            (taskModelID != null ? taskModelID.value : this.taskModelID),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskResponse {
  const TaskResponse({
    this.attachedTo,
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deletedAt,
    this.history,
    this.id,
    this.label,
    this.parentTaskId,
    this.subTasks,
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
  });

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  static const toJsonFactory = _$TaskResponseToJson;
  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);

  @JsonKey(name: 'attached_to', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? attachedTo;
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
  @JsonKey(name: 'parent_task_id')
  final int? parentTaskId;
  @JsonKey(name: 'sub_tasks', defaultValue: <Task>[])
  final List<Task>? subTasks;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  static const fromJsonFactory = _$TaskResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskResponse &&
            (identical(other.attachedTo, attachedTo) ||
                const DeepCollectionEquality()
                    .equals(other.attachedTo, attachedTo)) &&
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
                    .equals(other.updatedById, updatedById)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(attachedTo) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(parentTaskId) ^
      const DeepCollectionEquality().hash(subTasks) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      runtimeType.hashCode;
}

extension $TaskResponseExtension on TaskResponse {
  TaskResponse copyWith(
      {List<VehicleTask>? attachedTo,
      DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      GormDeletedAt? deletedAt,
      List<TaskAudit>? history,
      int? id,
      String? label,
      int? parentTaskId,
      List<Task>? subTasks,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById}) {
    return TaskResponse(
        attachedTo: attachedTo ?? this.attachedTo,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deletedAt: deletedAt ?? this.deletedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        label: label ?? this.label,
        parentTaskId: parentTaskId ?? this.parentTaskId,
        subTasks: subTasks ?? this.subTasks,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById);
  }

  TaskResponse copyWithWrapped(
      {Wrapped<List<VehicleTask>?>? attachedTo,
      Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<List<TaskAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? label,
      Wrapped<int?>? parentTaskId,
      Wrapped<List<Task>?>? subTasks,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById}) {
    return TaskResponse(
        attachedTo: (attachedTo != null ? attachedTo.value : this.attachedTo),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
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
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById));
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
class UpdateCity {
  const UpdateCity({
    this.label,
  });

  factory UpdateCity.fromJson(Map<String, dynamic> json) =>
      _$UpdateCityFromJson(json);

  static const toJsonFactory = _$UpdateCityToJson;
  Map<String, dynamic> toJson() => _$UpdateCityToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$UpdateCityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCity &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $UpdateCityExtension on UpdateCity {
  UpdateCity copyWith({String? label}) {
    return UpdateCity(label: label ?? this.label);
  }

  UpdateCity copyWithWrapped({Wrapped<String?>? label}) {
    return UpdateCity(label: (label != null ? label.value : this.label));
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
    this.label,
  });

  factory UpdateGarage.fromJson(Map<String, dynamic> json) =>
      _$UpdateGarageFromJson(json);

  static const toJsonFactory = _$UpdateGarageToJson;
  Map<String, dynamic> toJson() => _$UpdateGarageToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$UpdateGarageFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateGarage &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $UpdateGarageExtension on UpdateGarage {
  UpdateGarage copyWith({String? label}) {
    return UpdateGarage(label: label ?? this.label);
  }

  UpdateGarage copyWithWrapped({Wrapped<String?>? label}) {
    return UpdateGarage(label: (label != null ? label.value : this.label));
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
class UpdateSparePartRequest {
  const UpdateSparePartRequest();

  factory UpdateSparePartRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSparePartRequestFromJson(json);

  static const toJsonFactory = _$UpdateSparePartRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateSparePartRequestToJson(this);

  static const fromJsonFactory = _$UpdateSparePartRequestFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
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
    this.label,
  });

  factory UpdateTask.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskFromJson(json);

  static const toJsonFactory = _$UpdateTaskToJson;
  Map<String, dynamic> toJson() => _$UpdateTaskToJson(this);

  @JsonKey(name: 'label')
  final String? label;
  static const fromJsonFactory = _$UpdateTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTask &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(label) ^ runtimeType.hashCode;
}

extension $UpdateTaskExtension on UpdateTask {
  UpdateTask copyWith({String? label}) {
    return UpdateTask(label: label ?? this.label);
  }

  UpdateTask copyWithWrapped({Wrapped<String?>? label}) {
    return UpdateTask(label: (label != null ? label.value : this.label));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateVehicle {
  const UpdateVehicle({
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

extension $UpdateVehicleExtension on UpdateVehicle {
  UpdateVehicle copyWith(
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
    return UpdateVehicle(
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

  UpdateVehicle copyWithWrapped(
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
    return UpdateVehicle(
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
class UpdateVehicleTask {
  const UpdateVehicleTask({
    this.deleted,
    this.finishedAt,
    this.note,
    this.startedAt,
  });

  factory UpdateVehicleTask.fromJson(Map<String, dynamic> json) =>
      _$UpdateVehicleTaskFromJson(json);

  static const toJsonFactory = _$UpdateVehicleTaskToJson;
  Map<String, dynamic> toJson() => _$UpdateVehicleTaskToJson(this);

  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  static const fromJsonFactory = _$UpdateVehicleTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateVehicleTask &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
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
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(startedAt) ^
      runtimeType.hashCode;
}

extension $UpdateVehicleTaskExtension on UpdateVehicleTask {
  UpdateVehicleTask copyWith(
      {bool? deleted,
      DateTime? finishedAt,
      String? note,
      DateTime? startedAt}) {
    return UpdateVehicleTask(
        deleted: deleted ?? this.deleted,
        finishedAt: finishedAt ?? this.finishedAt,
        note: note ?? this.note,
        startedAt: startedAt ?? this.startedAt);
  }

  UpdateVehicleTask copyWithWrapped(
      {Wrapped<bool?>? deleted,
      Wrapped<DateTime?>? finishedAt,
      Wrapped<String?>? note,
      Wrapped<DateTime?>? startedAt}) {
    return UpdateVehicleTask(
        deleted: (deleted != null ? deleted.value : this.deleted),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        note: (note != null ? note.value : this.note),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class Vehicle {
  const Vehicle({
    this.audit,
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
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
    this.vehicleTasks,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);

  static const toJsonFactory = _$VehicleToJson;
  Map<String, dynamic> toJson() => _$VehicleToJson(this);

  @JsonKey(name: 'audit', defaultValue: <VehicleAudit>[])
  final List<VehicleAudit>? audit;
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
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? vehicleTasks;
  static const fromJsonFactory = _$VehicleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Vehicle &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
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
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality().equals(other.updatedById, updatedById)) &&
            (identical(other.vehicleTasks, vehicleTasks) || const DeepCollectionEquality().equals(other.vehicleTasks, vehicleTasks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(audit) ^
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
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
      runtimeType.hashCode;
}

extension $VehicleExtension on Vehicle {
  Vehicle copyWith(
      {List<VehicleAudit>? audit,
      String? chrono,
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
      int? id,
      int? mileage,
      String? note,
      Owner? owner,
      int? ownerId,
      bool? procedureVe,
      String? registration,
      String? serialNumber,
      DateTime? soldAt,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById,
      List<VehicleTask>? vehicleTasks}) {
    return Vehicle(
        audit: audit ?? this.audit,
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
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
  }

  Vehicle copyWithWrapped(
      {Wrapped<List<VehicleAudit>?>? audit,
      Wrapped<String?>? chrono,
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
      Wrapped<int?>? id,
      Wrapped<int?>? mileage,
      Wrapped<String?>? note,
      Wrapped<Owner?>? owner,
      Wrapped<int?>? ownerId,
      Wrapped<bool?>? procedureVe,
      Wrapped<String?>? registration,
      Wrapped<String?>? serialNumber,
      Wrapped<DateTime?>? soldAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<List<VehicleTask>?>? vehicleTasks}) {
    return Vehicle(
        audit: (audit != null ? audit.value : this.audit),
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
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
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
    this.vehicleTasks,
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
  @JsonKey(name: 'vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? vehicleTasks;
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
            (identical(other.vehicleTasks, vehicleTasks) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTasks, vehicleTasks)) &&
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
      const DeepCollectionEquality().hash(vehicleTasks) ^
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
      List<VehicleTask>? vehicleTasks,
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
        vehicleTasks: vehicleTasks ?? this.vehicleTasks,
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
      Wrapped<List<VehicleTask>?>? vehicleTasks,
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
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks),
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
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
    this.vehicleTasks,
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
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle_tasks', defaultValue: <VehicleTask>[])
  final List<VehicleTask>? vehicleTasks;
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
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) || const DeepCollectionEquality().equals(other.updatedById, updatedById)) &&
            (identical(other.vehicleTasks, vehicleTasks) || const DeepCollectionEquality().equals(other.vehicleTasks, vehicleTasks)));
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
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicleTasks) ^
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
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById,
      List<VehicleTask>? vehicleTasks}) {
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
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        vehicleTasks: vehicleTasks ?? this.vehicleTasks);
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
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<List<VehicleTask>?>? vehicleTasks}) {
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
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicleTasks:
            (vehicleTasks != null ? vehicleTasks.value : this.vehicleTasks));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTask {
  const VehicleTask({
    this.assignedTo,
    this.assignedToId,
    this.audit,
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deleted,
    this.deletedAt,
    this.deletedBy,
    this.deletedById,
    this.finishedAt,
    this.id,
    this.note,
    this.startedAt,
    this.task,
    this.taskId,
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
    this.vehicle,
    this.vehicleId,
  });

  factory VehicleTask.fromJson(Map<String, dynamic> json) =>
      _$VehicleTaskFromJson(json);

  static const toJsonFactory = _$VehicleTaskToJson;
  Map<String, dynamic> toJson() => _$VehicleTaskToJson(this);

  @JsonKey(name: 'assigned_to')
  final Employee? assignedTo;
  @JsonKey(name: 'assigned_to_id')
  final int? assignedToId;
  @JsonKey(name: 'audit', defaultValue: <VehicleTaskAudit>[])
  final List<VehicleTaskAudit>? audit;
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
  @JsonKey(name: 'deleted_by')
  final Employee? deletedBy;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'task')
  final Task? task;
  @JsonKey(name: 'task_id')
  final int? taskId;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'vehicle_id')
  final int? vehicleId;
  static const fromJsonFactory = _$VehicleTaskFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTask &&
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality()
                    .equals(other.assignedTo, assignedTo)) &&
            (identical(other.assignedToId, assignedToId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedToId, assignedToId)) &&
            (identical(other.audit, audit) ||
                const DeepCollectionEquality().equals(other.audit, audit)) &&
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
            (identical(other.deletedBy, deletedBy) ||
                const DeepCollectionEquality()
                    .equals(other.deletedBy, deletedBy)) &&
            (identical(other.deletedById, deletedById) ||
                const DeepCollectionEquality()
                    .equals(other.deletedById, deletedById)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
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
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
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
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(assignedToId) ^
      const DeepCollectionEquality().hash(audit) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedBy) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $VehicleTaskExtension on VehicleTask {
  VehicleTask copyWith(
      {Employee? assignedTo,
      int? assignedToId,
      List<VehicleTaskAudit>? audit,
      DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      bool? deleted,
      GormDeletedAt? deletedAt,
      Employee? deletedBy,
      int? deletedById,
      DateTime? finishedAt,
      int? id,
      String? note,
      DateTime? startedAt,
      Task? task,
      int? taskId,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById,
      Vehicle? vehicle,
      int? vehicleId}) {
    return VehicleTask(
        assignedTo: assignedTo ?? this.assignedTo,
        assignedToId: assignedToId ?? this.assignedToId,
        audit: audit ?? this.audit,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedBy: deletedBy ?? this.deletedBy,
        deletedById: deletedById ?? this.deletedById,
        finishedAt: finishedAt ?? this.finishedAt,
        id: id ?? this.id,
        note: note ?? this.note,
        startedAt: startedAt ?? this.startedAt,
        task: task ?? this.task,
        taskId: taskId ?? this.taskId,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        vehicle: vehicle ?? this.vehicle,
        vehicleId: vehicleId ?? this.vehicleId);
  }

  VehicleTask copyWithWrapped(
      {Wrapped<Employee?>? assignedTo,
      Wrapped<int?>? assignedToId,
      Wrapped<List<VehicleTaskAudit>?>? audit,
      Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<Employee?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? finishedAt,
      Wrapped<int?>? id,
      Wrapped<String?>? note,
      Wrapped<DateTime?>? startedAt,
      Wrapped<Task?>? task,
      Wrapped<int?>? taskId,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<Vehicle?>? vehicle,
      Wrapped<int?>? vehicleId}) {
    return VehicleTask(
        assignedTo: (assignedTo != null ? assignedTo.value : this.assignedTo),
        assignedToId:
            (assignedToId != null ? assignedToId.value : this.assignedToId),
        audit: (audit != null ? audit.value : this.audit),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedBy: (deletedBy != null ? deletedBy.value : this.deletedBy),
        deletedById:
            (deletedById != null ? deletedById.value : this.deletedById),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        id: (id != null ? id.value : this.id),
        note: (note != null ? note.value : this.note),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        task: (task != null ? task.value : this.task),
        taskId: (taskId != null ? taskId.value : this.taskId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicle: (vehicle != null ? vehicle.value : this.vehicle),
        vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTaskAudit {
  const VehicleTaskAudit({
    this.action,
    this.actionAt,
    this.actionID,
    this.assignedTo,
    this.assignedToId,
    this.createdBy,
    this.createdById,
    this.deleted,
    this.deletedBy,
    this.deletedById,
    this.finishedAt,
    this.note,
    this.startedAt,
    this.task,
    this.taskId,
    this.updatedBy,
    this.updatedById,
    this.vehicle,
    this.vehicleId,
    this.vehicleTaskModelID,
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
  @JsonKey(name: 'assigned_to')
  final Employee? assignedTo;
  @JsonKey(name: 'assigned_to_id')
  final int? assignedToId;
  @JsonKey(name: 'created_by')
  final Employee? createdBy;
  @JsonKey(name: 'created_by_id')
  final int? createdById;
  @JsonKey(name: 'deleted')
  final bool? deleted;
  @JsonKey(name: 'deleted_by')
  final Employee? deletedBy;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'finishedAt')
  final String? finishedAt;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'startedAt')
  final String? startedAt;
  @JsonKey(name: 'task')
  final Task? task;
  @JsonKey(name: 'task_id')
  final int? taskId;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'vehicle_id')
  final int? vehicleId;
  @JsonKey(name: 'vehicleTaskModelID')
  final int? vehicleTaskModelID;
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
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality()
                    .equals(other.assignedTo, assignedTo)) &&
            (identical(other.assignedToId, assignedToId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedToId, assignedToId)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdById, createdById) ||
                const DeepCollectionEquality()
                    .equals(other.createdById, createdById)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.deletedBy, deletedBy) ||
                const DeepCollectionEquality()
                    .equals(other.deletedBy, deletedBy)) &&
            (identical(other.deletedById, deletedById) ||
                const DeepCollectionEquality()
                    .equals(other.deletedById, deletedById)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.startedAt, startedAt) ||
                const DeepCollectionEquality()
                    .equals(other.startedAt, startedAt)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.taskId, taskId) ||
                const DeepCollectionEquality().equals(other.taskId, taskId)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.vehicleTaskModelID, vehicleTaskModelID) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleTaskModelID, vehicleTaskModelID)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionAt) ^
      const DeepCollectionEquality().hash(actionID) ^
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(assignedToId) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(deletedBy) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(vehicleTaskModelID) ^
      runtimeType.hashCode;
}

extension $VehicleTaskAuditExtension on VehicleTaskAudit {
  VehicleTaskAudit copyWith(
      {String? action,
      String? actionAt,
      int? actionID,
      Employee? assignedTo,
      int? assignedToId,
      Employee? createdBy,
      int? createdById,
      bool? deleted,
      Employee? deletedBy,
      int? deletedById,
      String? finishedAt,
      String? note,
      String? startedAt,
      Task? task,
      int? taskId,
      Employee? updatedBy,
      int? updatedById,
      Vehicle? vehicle,
      int? vehicleId,
      int? vehicleTaskModelID}) {
    return VehicleTaskAudit(
        action: action ?? this.action,
        actionAt: actionAt ?? this.actionAt,
        actionID: actionID ?? this.actionID,
        assignedTo: assignedTo ?? this.assignedTo,
        assignedToId: assignedToId ?? this.assignedToId,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedBy: deletedBy ?? this.deletedBy,
        deletedById: deletedById ?? this.deletedById,
        finishedAt: finishedAt ?? this.finishedAt,
        note: note ?? this.note,
        startedAt: startedAt ?? this.startedAt,
        task: task ?? this.task,
        taskId: taskId ?? this.taskId,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        vehicle: vehicle ?? this.vehicle,
        vehicleId: vehicleId ?? this.vehicleId,
        vehicleTaskModelID: vehicleTaskModelID ?? this.vehicleTaskModelID);
  }

  VehicleTaskAudit copyWithWrapped(
      {Wrapped<String?>? action,
      Wrapped<String?>? actionAt,
      Wrapped<int?>? actionID,
      Wrapped<Employee?>? assignedTo,
      Wrapped<int?>? assignedToId,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<Employee?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<String?>? finishedAt,
      Wrapped<String?>? note,
      Wrapped<String?>? startedAt,
      Wrapped<Task?>? task,
      Wrapped<int?>? taskId,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<Vehicle?>? vehicle,
      Wrapped<int?>? vehicleId,
      Wrapped<int?>? vehicleTaskModelID}) {
    return VehicleTaskAudit(
        action: (action != null ? action.value : this.action),
        actionAt: (actionAt != null ? actionAt.value : this.actionAt),
        actionID: (actionID != null ? actionID.value : this.actionID),
        assignedTo: (assignedTo != null ? assignedTo.value : this.assignedTo),
        assignedToId:
            (assignedToId != null ? assignedToId.value : this.assignedToId),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedBy: (deletedBy != null ? deletedBy.value : this.deletedBy),
        deletedById:
            (deletedById != null ? deletedById.value : this.deletedById),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        note: (note != null ? note.value : this.note),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        task: (task != null ? task.value : this.task),
        taskId: (taskId != null ? taskId.value : this.taskId),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicle: (vehicle != null ? vehicle.value : this.vehicle),
        vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId),
        vehicleTaskModelID: (vehicleTaskModelID != null
            ? vehicleTaskModelID.value
            : this.vehicleTaskModelID));
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTaskResponse {
  const VehicleTaskResponse({
    this.assignedTo,
    this.assignedToId,
    this.createdAt,
    this.createdBy,
    this.createdById,
    this.deleted,
    this.deletedAt,
    this.deletedBy,
    this.deletedById,
    this.finishedAt,
    this.history,
    this.id,
    this.note,
    this.startedAt,
    this.task,
    this.taskId,
    this.updatedAt,
    this.updatedBy,
    this.updatedById,
    this.vehicle,
    this.vehicleId,
  });

  factory VehicleTaskResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleTaskResponseFromJson(json);

  static const toJsonFactory = _$VehicleTaskResponseToJson;
  Map<String, dynamic> toJson() => _$VehicleTaskResponseToJson(this);

  @JsonKey(name: 'assigned_to')
  final Employee? assignedTo;
  @JsonKey(name: 'assigned_to_id')
  final int? assignedToId;
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
  @JsonKey(name: 'deleted_by')
  final Employee? deletedBy;
  @JsonKey(name: 'deleted_by_id')
  final int? deletedById;
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  @JsonKey(name: 'history', defaultValue: <VehicleTaskAudit>[])
  final List<VehicleTaskAudit>? history;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @JsonKey(name: 'task')
  final Task? task;
  @JsonKey(name: 'task_id')
  final int? taskId;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'updated_by')
  final Employee? updatedBy;
  @JsonKey(name: 'updated_by_id')
  final int? updatedById;
  @JsonKey(name: 'vehicle')
  final Vehicle? vehicle;
  @JsonKey(name: 'vehicle_id')
  final int? vehicleId;
  static const fromJsonFactory = _$VehicleTaskResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTaskResponse &&
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality()
                    .equals(other.assignedTo, assignedTo)) &&
            (identical(other.assignedToId, assignedToId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedToId, assignedToId)) &&
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
            (identical(other.deletedBy, deletedBy) ||
                const DeepCollectionEquality()
                    .equals(other.deletedBy, deletedBy)) &&
            (identical(other.deletedById, deletedById) ||
                const DeepCollectionEquality()
                    .equals(other.deletedById, deletedById)) &&
            (identical(other.finishedAt, finishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.finishedAt, finishedAt)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
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
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedById, updatedById) ||
                const DeepCollectionEquality()
                    .equals(other.updatedById, updatedById)) &&
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
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(assignedToId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdById) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(deletedBy) ^
      const DeepCollectionEquality().hash(deletedById) ^
      const DeepCollectionEquality().hash(finishedAt) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(startedAt) ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(taskId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedById) ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $VehicleTaskResponseExtension on VehicleTaskResponse {
  VehicleTaskResponse copyWith(
      {Employee? assignedTo,
      int? assignedToId,
      DateTime? createdAt,
      Employee? createdBy,
      int? createdById,
      bool? deleted,
      GormDeletedAt? deletedAt,
      Employee? deletedBy,
      int? deletedById,
      DateTime? finishedAt,
      List<VehicleTaskAudit>? history,
      int? id,
      String? note,
      DateTime? startedAt,
      Task? task,
      int? taskId,
      DateTime? updatedAt,
      Employee? updatedBy,
      int? updatedById,
      Vehicle? vehicle,
      int? vehicleId}) {
    return VehicleTaskResponse(
        assignedTo: assignedTo ?? this.assignedTo,
        assignedToId: assignedToId ?? this.assignedToId,
        createdAt: createdAt ?? this.createdAt,
        createdBy: createdBy ?? this.createdBy,
        createdById: createdById ?? this.createdById,
        deleted: deleted ?? this.deleted,
        deletedAt: deletedAt ?? this.deletedAt,
        deletedBy: deletedBy ?? this.deletedBy,
        deletedById: deletedById ?? this.deletedById,
        finishedAt: finishedAt ?? this.finishedAt,
        history: history ?? this.history,
        id: id ?? this.id,
        note: note ?? this.note,
        startedAt: startedAt ?? this.startedAt,
        task: task ?? this.task,
        taskId: taskId ?? this.taskId,
        updatedAt: updatedAt ?? this.updatedAt,
        updatedBy: updatedBy ?? this.updatedBy,
        updatedById: updatedById ?? this.updatedById,
        vehicle: vehicle ?? this.vehicle,
        vehicleId: vehicleId ?? this.vehicleId);
  }

  VehicleTaskResponse copyWithWrapped(
      {Wrapped<Employee?>? assignedTo,
      Wrapped<int?>? assignedToId,
      Wrapped<DateTime?>? createdAt,
      Wrapped<Employee?>? createdBy,
      Wrapped<int?>? createdById,
      Wrapped<bool?>? deleted,
      Wrapped<GormDeletedAt?>? deletedAt,
      Wrapped<Employee?>? deletedBy,
      Wrapped<int?>? deletedById,
      Wrapped<DateTime?>? finishedAt,
      Wrapped<List<VehicleTaskAudit>?>? history,
      Wrapped<int?>? id,
      Wrapped<String?>? note,
      Wrapped<DateTime?>? startedAt,
      Wrapped<Task?>? task,
      Wrapped<int?>? taskId,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<Employee?>? updatedBy,
      Wrapped<int?>? updatedById,
      Wrapped<Vehicle?>? vehicle,
      Wrapped<int?>? vehicleId}) {
    return VehicleTaskResponse(
        assignedTo: (assignedTo != null ? assignedTo.value : this.assignedTo),
        assignedToId:
            (assignedToId != null ? assignedToId.value : this.assignedToId),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        createdById:
            (createdById != null ? createdById.value : this.createdById),
        deleted: (deleted != null ? deleted.value : this.deleted),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt),
        deletedBy: (deletedBy != null ? deletedBy.value : this.deletedBy),
        deletedById:
            (deletedById != null ? deletedById.value : this.deletedById),
        finishedAt: (finishedAt != null ? finishedAt.value : this.finishedAt),
        history: (history != null ? history.value : this.history),
        id: (id != null ? id.value : this.id),
        note: (note != null ? note.value : this.note),
        startedAt: (startedAt != null ? startedAt.value : this.startedAt),
        task: (task != null ? task.value : this.task),
        taskId: (taskId != null ? taskId.value : this.taskId),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy),
        updatedById:
            (updatedById != null ? updatedById.value : this.updatedById),
        vehicle: (vehicle != null ? vehicle.value : this.vehicle),
        vehicleId: (vehicleId != null ? vehicleId.value : this.vehicleId));
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
