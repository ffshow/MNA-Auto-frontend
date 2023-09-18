// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_supplier_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListSupplierModel _$$_ListSupplierModelFromJson(Map<String, dynamic> json) =>
    _$_ListSupplierModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SupplierModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      total: json['total'] as int? ?? null,
    );

Map<String, dynamic> _$$_ListSupplierModelToJson(
        _$_ListSupplierModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };
