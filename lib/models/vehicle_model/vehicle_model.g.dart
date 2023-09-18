// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      mileage: json['mileage'] as int? ?? null,
      note: json['note'] as String? ?? null,
      owner_id: json['owner_id'] as String? ?? null,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      info: json['info'] ?? null,
      registration: json['registration'] as String? ?? null,
      serial_number: json['serial_number'] as String? ?? null,
      chrono: json['chrono'] as String? ?? null,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      delivery_date: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      id: json['id'] as String? ?? null,
      sold_at: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      current_status: json['current_status'] as String? ?? null,
      expertise: json['expertise'] as bool? ?? null,
      first_circulation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      procedure_ve: json['procedure_ve'] as bool? ?? null,
      collection_date: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      commercial_name: json['commercial_name'] as String? ?? null,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.owner_id,
      'updated_at': instance.updated_at?.toIso8601String(),
      'info': instance.info,
      'registration': instance.registration,
      'serial_number': instance.serial_number,
      'chrono': instance.chrono,
      'created_at': instance.created_at?.toIso8601String(),
      'delivery_date': instance.delivery_date?.toIso8601String(),
      'id': instance.id,
      'sold_at': instance.sold_at?.toIso8601String(),
      'current_status': instance.current_status,
      'expertise': instance.expertise,
      'first_circulation': instance.first_circulation?.toIso8601String(),
      'procedure_ve': instance.procedure_ve,
      'collection_date': instance.collection_date?.toIso8601String(),
      'commercial_name': instance.commercial_name,
    };
