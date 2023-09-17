// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      commercial_name: json['commercial_name'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      delivery_date: DateTime.parse(json['delivery_date'] as String),
      info: json['info'],
      registration: json['registration'] as String,
      serial_number: json['serial_number'] as String,
      chrono: json['chrono'] as String? ?? null,
      collection_date: DateTime.parse(json['collection_date'] as String),
      current_status: json['current_status'] as String? ?? null,
      expertise: json['expertise'] as bool? ?? false,
      id: json['id'] as String,
      note: json['note'] as String,
      owner_id: json['owner_id'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      procedure_ve: json['procedure_ve'] as bool? ?? false,
      first_circulation: DateTime.parse(json['first_circulation'] as String),
      mileage: json['mileage'] as int,
      sold_at: DateTime.parse(json['sold_at'] as String),
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'commercial_name': instance.commercial_name,
      'created_at': instance.created_at.toIso8601String(),
      'delivery_date': instance.delivery_date.toIso8601String(),
      'info': instance.info,
      'registration': instance.registration,
      'serial_number': instance.serial_number,
      'chrono': instance.chrono,
      'collection_date': instance.collection_date.toIso8601String(),
      'current_status': instance.current_status,
      'expertise': instance.expertise,
      'id': instance.id,
      'note': instance.note,
      'owner_id': instance.owner_id,
      'updated_at': instance.updated_at.toIso8601String(),
      'procedure_ve': instance.procedure_ve,
      'first_circulation': instance.first_circulation.toIso8601String(),
      'mileage': instance.mileage,
      'sold_at': instance.sold_at.toIso8601String(),
    };
