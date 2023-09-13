// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      current_status: json['current_status'] as String? ?? null,
      id: json['id'] as String,
      note: json['note'] as String,
      registration: json['registration'] as String,
      serial_number: json['serial_number'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      delivery_date: DateTime.parse(json['delivery_date'] as String),
      mileage: json['mileage'] as int,
      owner_id: json['owner_id'] as String,
      chrono: json['chrono'] as String? ?? null,
      collection_date: DateTime.parse(json['collection_date'] as String),
      commercial_name: json['commercial_name'] as String,
      expertise: json['expertise'] as bool? ?? false,
      first_circulation: DateTime.parse(json['first_circulation'] as String),
      procedure_ve: json['procedure_ve'] as bool? ?? false,
      sold_at: DateTime.parse(json['sold_at'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      info: json['info'],
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'current_status': instance.current_status,
      'id': instance.id,
      'note': instance.note,
      'registration': instance.registration,
      'serial_number': instance.serial_number,
      'updated_at': instance.updated_at.toIso8601String(),
      'delivery_date': instance.delivery_date.toIso8601String(),
      'mileage': instance.mileage,
      'owner_id': instance.owner_id,
      'chrono': instance.chrono,
      'collection_date': instance.collection_date.toIso8601String(),
      'commercial_name': instance.commercial_name,
      'expertise': instance.expertise,
      'first_circulation': instance.first_circulation.toIso8601String(),
      'procedure_ve': instance.procedure_ve,
      'sold_at': instance.sold_at.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
      'info': instance.info,
    };
