// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_garage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListGarageModel _$$_ListGarageModelFromJson(Map<String, dynamic> json) =>
    _$_ListGarageModel(
      total: json['total'] as int? ?? null,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => GarageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
    );

Map<String, dynamic> _$$_ListGarageModelToJson(_$_ListGarageModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data,
    };
