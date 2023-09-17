// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spare_part_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SparePartModel _$$_SparePartModelFromJson(Map<String, dynamic> json) =>
    _$_SparePartModel(
      updated_at: DateTime.parse(json['updated_at'] as String),
      barcode: json['barcode'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      id: json['id'] as String,
      reference: json['reference'] as String,
    );

Map<String, dynamic> _$$_SparePartModelToJson(_$_SparePartModel instance) =>
    <String, dynamic>{
      'updated_at': instance.updated_at.toIso8601String(),
      'barcode': instance.barcode,
      'created_at': instance.created_at.toIso8601String(),
      'id': instance.id,
      'reference': instance.reference,
    };
