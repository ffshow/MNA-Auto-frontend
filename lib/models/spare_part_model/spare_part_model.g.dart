// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spare_part_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SparePartModel _$$_SparePartModelFromJson(Map<String, dynamic> json) =>
    _$_SparePartModel(
      barcode: json['barcode'] as String? ?? null,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as String? ?? null,
      reference: json['reference'] as String? ?? null,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_SparePartModelToJson(_$_SparePartModel instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'created_at': instance.created_at?.toIso8601String(),
      'id': instance.id,
      'reference': instance.reference,
      'updated_at': instance.updated_at?.toIso8601String(),
    };
