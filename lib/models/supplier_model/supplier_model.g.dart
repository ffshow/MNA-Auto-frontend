// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplierModel _$$_SupplierModelFromJson(Map<String, dynamic> json) =>
    _$_SupplierModel(
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as String? ?? null,
      name: json['name'] as String? ?? null,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_SupplierModelToJson(_$_SupplierModel instance) =>
    <String, dynamic>{
      'created_at': instance.created_at?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updated_at?.toIso8601String(),
    };
