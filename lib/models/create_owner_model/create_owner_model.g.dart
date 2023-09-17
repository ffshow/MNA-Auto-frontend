// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateOwnerModel _$$_CreateOwnerModelFromJson(Map<String, dynamic> json) =>
    _$_CreateOwnerModel(
      address: json['address'] as String? ?? null,
      email: json['email'] as String? ?? null,
      phone: json['phone'] as String? ?? null,
      photo: json['photo'] as String? ?? null,
      postal_code: json['postal_code'] as String? ?? null,
    );

Map<String, dynamic> _$$_CreateOwnerModelToJson(_$_CreateOwnerModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'postal_code': instance.postal_code,
    };
