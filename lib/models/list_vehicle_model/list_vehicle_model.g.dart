// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListVehicleModel _$$_ListVehicleModelFromJson(Map<String, dynamic> json) =>
    _$_ListVehicleModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      total: json['total'] as int? ?? null,
    );

Map<String, dynamic> _$$_ListVehicleModelToJson(_$_ListVehicleModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };
