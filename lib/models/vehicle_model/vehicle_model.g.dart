// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      mileage: json['mileage'] as int,
      owner_id: json['owner_id'] as String,
      procedure_ve: json['procedure_ve'] as bool? ?? false,
      collection_date: DateTime.parse(json['collection_date'] as String),
      delivery_date: DateTime.parse(json['delivery_date'] as String),
      id: json['id'] as String,
      info: json['info'],
      commercial_name: json['commercial_name'] as String,
      first_circulation: DateTime.parse(json['first_circulation'] as String),
      registration: json['registration'] as String,
      serial_number: json['serial_number'] as String,
      note: json['note'] as String,
      sold_at: DateTime.parse(json['sold_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      chrono: json['chrono'] as String? ?? null,
      created_at: DateTime.parse(json['created_at'] as String),
      current_status: json['current_status'] as String? ?? null,
      expertise: json['expertise'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'mileage': instance.mileage,
      'owner_id': instance.owner_id,
      'procedure_ve': instance.procedure_ve,
      'collection_date': instance.collection_date.toIso8601String(),
      'delivery_date': instance.delivery_date.toIso8601String(),
      'id': instance.id,
      'info': instance.info,
      'commercial_name': instance.commercial_name,
      'first_circulation': instance.first_circulation.toIso8601String(),
      'registration': instance.registration,
      'serial_number': instance.serial_number,
      'note': instance.note,
      'sold_at': instance.sold_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'chrono': instance.chrono,
      'created_at': instance.created_at.toIso8601String(),
      'current_status': instance.current_status,
      'expertise': instance.expertise,
    };
