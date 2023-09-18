// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListPermissionModel _$$_ListPermissionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListPermissionModel(
      total: json['total'] as int? ?? null,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PermissionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
    );

Map<String, dynamic> _$$_ListPermissionModelToJson(
        _$_ListPermissionModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data,
    };
