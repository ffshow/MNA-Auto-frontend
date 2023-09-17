// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePermissionModel _$$_CreatePermissionModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePermissionModel(
      label: json['label'] as String,
      available: json['available'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CreatePermissionModelToJson(
        _$_CreatePermissionModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'available': instance.available,
    };
