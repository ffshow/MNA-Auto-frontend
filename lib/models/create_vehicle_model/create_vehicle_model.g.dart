// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateVehicleModel _$$_CreateVehicleModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateVehicleModel(
      procedure_ve: json['procedure_ve'] as bool? ?? false,
      sold_at: json['sold_at'] as String,
      chrono: json['chrono'] as String,
      collection_date: json['collection_date'] as String,
      commercial_name: json['commercial_name'] as String,
      expertise: json['expertise'] as bool? ?? false,
      mileage: json['mileage'] as int,
      note: json['note'] as String,
      owner_id: json['owner_id'] as String,
      registration: json['registration'] as String,
      serial_number: json['serial_number'] as String,
      delivery_date: json['delivery_date'] as String,
      first_circulation: json['first_circulation'] as String,
      info: json['info'],
      current_status: json['current_status'] as String,
    );

Map<String, dynamic> _$$_CreateVehicleModelToJson(
        _$_CreateVehicleModel instance) =>
    <String, dynamic>{
      'procedure_ve': instance.procedure_ve,
      'sold_at': instance.sold_at,
      'chrono': instance.chrono,
      'collection_date': instance.collection_date,
      'commercial_name': instance.commercial_name,
      'expertise': instance.expertise,
      'mileage': instance.mileage,
      'note': instance.note,
      'owner_id': instance.owner_id,
      'registration': instance.registration,
      'serial_number': instance.serial_number,
      'delivery_date': instance.delivery_date,
      'first_circulation': instance.first_circulation,
      'info': instance.info,
      'current_status': instance.current_status,
    };
