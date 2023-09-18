// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateVehicleModel _$$_CreateVehicleModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateVehicleModel(
      collection_date: json['collection_date'] as String? ?? null,
      note: json['note'] as String? ?? null,
      registration: json['registration'] as String? ?? null,
      serial_number: json['serial_number'] as String? ?? null,
      sold_at: json['sold_at'] as String? ?? null,
      owner_id: json['owner_id'] as String? ?? null,
      procedure_ve: json['procedure_ve'] as bool? ?? null,
      current_status: json['current_status'] as String? ?? null,
      expertise: json['expertise'] as bool? ?? null,
      first_circulation: json['first_circulation'] as String? ?? null,
      info: json['info'] ?? null,
      mileage: json['mileage'] as int? ?? null,
      chrono: json['chrono'] as String? ?? null,
      commercial_name: json['commercial_name'] as String? ?? null,
      delivery_date: json['delivery_date'] as String? ?? null,
    );

Map<String, dynamic> _$$_CreateVehicleModelToJson(
        _$_CreateVehicleModel instance) =>
    <String, dynamic>{
      'collection_date': instance.collection_date,
      'note': instance.note,
      'registration': instance.registration,
      'serial_number': instance.serial_number,
      'sold_at': instance.sold_at,
      'owner_id': instance.owner_id,
      'procedure_ve': instance.procedure_ve,
      'current_status': instance.current_status,
      'expertise': instance.expertise,
      'first_circulation': instance.first_circulation,
      'info': instance.info,
      'mileage': instance.mileage,
      'chrono': instance.chrono,
      'commercial_name': instance.commercial_name,
      'delivery_date': instance.delivery_date,
    };
