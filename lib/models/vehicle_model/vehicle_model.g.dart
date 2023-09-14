// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      chrono: json['chrono'] as String? ?? null,
      note: json['note'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      commercial_name: json['commercial_name'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      delivery_date: DateTime.parse(json['delivery_date'] as String),
      id: json['id'] as String,
      mileage: json['mileage'] as int,
      procedure_ve: json['procedure_ve'] as bool? ?? false,
      sold_at: DateTime.parse(json['sold_at'] as String),
      collection_date: DateTime.parse(json['collection_date'] as String),
      first_circulation: DateTime.parse(json['first_circulation'] as String),
      registration: json['registration'] as String,
      serial_number: json['serial_number'] as String,
      current_status: json['current_status'] as String? ?? null,
      expertise: json['expertise'] as bool? ?? false,
      info: json['info'],
      owner_id: json['owner_id'] as String,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'note': instance.note,
      'updated_at': instance.updated_at.toIso8601String(),
      'commercial_name': instance.commercial_name,
      'created_at': instance.created_at.toIso8601String(),
      'delivery_date': instance.delivery_date.toIso8601String(),
      'id': instance.id,
      'mileage': instance.mileage,
      'procedure_ve': instance.procedure_ve,
      'sold_at': instance.sold_at.toIso8601String(),
      'collection_date': instance.collection_date.toIso8601String(),
      'first_circulation': instance.first_circulation.toIso8601String(),
      'registration': instance.registration,
      'serial_number': instance.serial_number,
      'current_status': instance.current_status,
      'expertise': instance.expertise,
      'info': instance.info,
      'owner_id': instance.owner_id,
    };
