// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      email: json['email'] as String? ?? null,
      id: json['id'] as String? ?? null,
      name: json['name'] as String? ?? null,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'created_at': instance.created_at?.toIso8601String(),
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updated_at?.toIso8601String(),
    };
