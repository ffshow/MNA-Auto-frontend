// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_spare_part_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListSparePartModel _$$_ListSparePartModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListSparePartModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SparePartModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      total: json['total'] as int? ?? null,
    );

Map<String, dynamic> _$$_ListSparePartModelToJson(
        _$_ListSparePartModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };
