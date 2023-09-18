// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListAccountModel _$$_ListAccountModelFromJson(Map<String, dynamic> json) =>
    _$_ListAccountModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AccountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      total: json['total'] as int? ?? null,
    );

Map<String, dynamic> _$$_ListAccountModelToJson(_$_ListAccountModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };
