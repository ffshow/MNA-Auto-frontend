// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOwnerModel _$$_ListOwnerModelFromJson(Map<String, dynamic> json) =>
    _$_ListOwnerModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => OwnerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      total: json['total'] as int? ?? null,
    );

Map<String, dynamic> _$$_ListOwnerModelToJson(_$_ListOwnerModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };
