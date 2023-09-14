// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      email: json['email'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updated_at.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
    };
