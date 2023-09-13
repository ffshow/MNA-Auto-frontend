// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GarageModel _$$_GarageModelFromJson(Map<String, dynamic> json) =>
    _$_GarageModel(
      id: json['id'] as String,
      label: json['label'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_GarageModelToJson(_$_GarageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'updated_at': instance.updated_at.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
    };
