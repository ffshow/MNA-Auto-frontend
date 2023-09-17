// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PermissionModel _$$_PermissionModelFromJson(Map<String, dynamic> json) =>
    _$_PermissionModel(
      available: json['available'] as bool? ?? null,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as String? ?? null,
      label: json['label'] as String? ?? null,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_PermissionModelToJson(_$_PermissionModel instance) =>
    <String, dynamic>{
      'available': instance.available,
      'created_at': instance.created_at?.toIso8601String(),
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updated_at?.toIso8601String(),
    };
