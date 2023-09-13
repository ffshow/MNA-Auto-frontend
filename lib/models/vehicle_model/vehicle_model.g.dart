// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      id: json['id'] as String,
      info: json['info'],
      owner_id: json['owner_id'] as String,
      serial_number: json['serial_number'] as String,
      sold_at: DateTime.parse(json['sold_at'] as String),
      current_status: json['current_status'] as String? ?? null,
      created_at: DateTime.parse(json['created_at'] as String),
      delivery_date: DateTime.parse(json['delivery_date'] as String),
      expertise: json['expertise'] as bool? ?? false,
      first_circulation: DateTime.parse(json['first_circulation'] as String),
      procedure_ve: json['procedure_ve'] as bool? ?? false,
      chrono: json['chrono'] as String? ?? null,
      updated_at: DateTime.parse(json['updated_at'] as String),
      collection_date: DateTime.parse(json['collection_date'] as String),
      mileage: json['mileage'] as int,
      note: json['note'] as String,
      registration: json['registration'] as String,
      commercial_name: json['commercial_name'] as String,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info,
      'owner_id': instance.owner_id,
      'serial_number': instance.serial_number,
      'sold_at': instance.sold_at.toIso8601String(),
      'current_status': instance.current_status,
      'created_at': instance.created_at.toIso8601String(),
      'delivery_date': instance.delivery_date.toIso8601String(),
      'expertise': instance.expertise,
      'first_circulation': instance.first_circulation.toIso8601String(),
      'procedure_ve': instance.procedure_ve,
      'chrono': instance.chrono,
      'updated_at': instance.updated_at.toIso8601String(),
      'collection_date': instance.collection_date.toIso8601String(),
      'mileage': instance.mileage,
      'note': instance.note,
      'registration': instance.registration,
      'commercial_name': instance.commercial_name,
    };
