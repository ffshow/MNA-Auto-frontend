// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateVehicleModel _$$_CreateVehicleModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateVehicleModel(
      chrono: json['chrono'] as String? ?? null,
      commercial_name: json['commercial_name'] as String? ?? null,
      sold_at: json['sold_at'] as String? ?? null,
      expertise: json['expertise'] as bool? ?? null,
      first_circulation: json['first_circulation'] as String? ?? null,
      serial_number: json['serial_number'] as String? ?? null,
      mileage: json['mileage'] as int? ?? null,
      note: json['note'] as String? ?? null,
      owner_id: json['owner_id'] as String? ?? null,
      collection_date: json['collection_date'] as String? ?? null,
      current_status: json['current_status'] as String? ?? null,
      delivery_date: json['delivery_date'] as String? ?? null,
      info: json['info'] ?? null,
      procedure_ve: json['procedure_ve'] as bool? ?? null,
      registration: json['registration'] as String? ?? null,
    );

Map<String, dynamic> _$$_CreateVehicleModelToJson(
        _$_CreateVehicleModel instance) =>
    <String, dynamic>{
      'chrono': instance.chrono,
      'commercial_name': instance.commercial_name,
      'sold_at': instance.sold_at,
      'expertise': instance.expertise,
      'first_circulation': instance.first_circulation,
      'serial_number': instance.serial_number,
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.owner_id,
      'collection_date': instance.collection_date,
      'current_status': instance.current_status,
      'delivery_date': instance.delivery_date,
      'info': instance.info,
      'procedure_ve': instance.procedure_ve,
      'registration': instance.registration,
    };
