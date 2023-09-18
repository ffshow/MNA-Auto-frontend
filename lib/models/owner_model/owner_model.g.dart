// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnerModel _$$_OwnerModelFromJson(Map<String, dynamic> json) =>
    _$_OwnerModel(
      address: json['address'] as String? ?? null,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      email: json['email'] as String? ?? null,
      id: json['id'] as String? ?? null,
      phone: json['phone'] as String? ?? null,
      photo: json['photo'] as String? ?? null,
      postal_code: json['postal_code'] as String? ?? null,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_OwnerModelToJson(_$_OwnerModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': instance.created_at?.toIso8601String(),
      'email': instance.email,
      'id': instance.id,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postal_code,
      'updated_at': instance.updated_at?.toIso8601String(),
    };
