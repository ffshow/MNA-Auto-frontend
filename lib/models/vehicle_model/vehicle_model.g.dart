// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      expertise: json['expertise'] as bool? ?? false,
      procedure_ve: json['procedure_ve'] as bool? ?? false,
      current_status: json['current_status'] as String? ?? null,
      created_at: DateTime.parse(json['created_at'] as String),
      delivery_date: DateTime.parse(json['delivery_date'] as String),
      first_circulation: DateTime.parse(json['first_circulation'] as String),
      info: json['info'],
      mileage: json['mileage'] as int,
      note: json['note'] as String,
      owner_id: json['owner_id'] as String,
      commercial_name: json['commercial_name'] as String,
      serial_number: json['serial_number'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      registration: json['registration'] as String,
      collection_date: DateTime.parse(json['collection_date'] as String),
      id: json['id'] as String,
      sold_at: DateTime.parse(json['sold_at'] as String),
      chrono: json['chrono'] as String? ?? null,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'expertise': instance.expertise,
      'procedure_ve': instance.procedure_ve,
      'current_status': instance.current_status,
      'created_at': instance.created_at.toIso8601String(),
      'delivery_date': instance.delivery_date.toIso8601String(),
      'first_circulation': instance.first_circulation.toIso8601String(),
      'info': instance.info,
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.owner_id,
      'commercial_name': instance.commercial_name,
      'serial_number': instance.serial_number,
      'updated_at': instance.updated_at.toIso8601String(),
      'registration': instance.registration,
      'collection_date': instance.collection_date.toIso8601String(),
      'id': instance.id,
      'sold_at': instance.sold_at.toIso8601String(),
      'chrono': instance.chrono,
    };
