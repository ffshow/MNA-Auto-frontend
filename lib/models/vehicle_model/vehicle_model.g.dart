// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      delivery_date: json['delivery_date'] == null
          ? null
          : DateTime.parse(json['delivery_date'] as String),
      mileage: json['mileage'] as int? ?? null,
      procedure_ve: json['procedure_ve'] as bool? ?? null,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      chrono: json['chrono'] as String? ?? null,
      commercial_name: json['commercial_name'] as String? ?? null,
      current_status: json['current_status'] as String? ?? null,
      note: json['note'] as String? ?? null,
      owner_id: json['owner_id'] as String? ?? null,
      sold_at: json['sold_at'] == null
          ? null
          : DateTime.parse(json['sold_at'] as String),
      collection_date: json['collection_date'] == null
          ? null
          : DateTime.parse(json['collection_date'] as String),
      first_circulation: json['first_circulation'] == null
          ? null
          : DateTime.parse(json['first_circulation'] as String),
      id: json['id'] as String? ?? null,
      info: json['info'] ?? null,
      registration: json['registration'] as String? ?? null,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      expertise: json['expertise'] as bool? ?? null,
      serial_number: json['serial_number'] as String? ?? null,
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'delivery_date': instance.delivery_date?.toIso8601String(),
      'mileage': instance.mileage,
      'procedure_ve': instance.procedure_ve,
      'updated_at': instance.updated_at?.toIso8601String(),
      'chrono': instance.chrono,
      'commercial_name': instance.commercial_name,
      'current_status': instance.current_status,
      'note': instance.note,
      'owner_id': instance.owner_id,
      'sold_at': instance.sold_at?.toIso8601String(),
      'collection_date': instance.collection_date?.toIso8601String(),
      'first_circulation': instance.first_circulation?.toIso8601String(),
      'id': instance.id,
      'info': instance.info,
      'registration': instance.registration,
      'created_at': instance.created_at?.toIso8601String(),
      'expertise': instance.expertise,
      'serial_number': instance.serial_number,
    };
