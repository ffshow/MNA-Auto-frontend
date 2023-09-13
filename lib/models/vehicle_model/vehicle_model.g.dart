// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      registration: json['registration'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      current_status: json['current_status'] as String,
      delivery_date: DateTime.parse(json['delivery_date'] as String),
      serial_number: json['serial_number'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      id: json['id'] as String,
      info: json['info'],
      mileage: json['mileage'] as int,
      note: json['note'] as String,
      owner_id: json['owner_id'] as String,
      chrono: json['chrono'] as String,
      expertise: json['expertise'] as bool,
      first_circulation: DateTime.parse(json['first_circulation'] as String),
      sold_at: DateTime.parse(json['sold_at'] as String),
      collection_date: DateTime.parse(json['collection_date'] as String),
      commercial_name: json['commercial_name'] as String,
      procedure_ve: json['procedure_ve'] as bool,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'registration': instance.registration,
      'created_at': instance.created_at.toIso8601String(),
      'current_status': instance.current_status,
      'delivery_date': instance.delivery_date.toIso8601String(),
      'serial_number': instance.serial_number,
      'updated_at': instance.updated_at.toIso8601String(),
      'id': instance.id,
      'info': instance.info,
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.owner_id,
      'chrono': instance.chrono,
      'expertise': instance.expertise,
      'first_circulation': instance.first_circulation.toIso8601String(),
      'sold_at': instance.sold_at.toIso8601String(),
      'collection_date': instance.collection_date.toIso8601String(),
      'commercial_name': instance.commercial_name,
      'procedure_ve': instance.procedure_ve,
    };
