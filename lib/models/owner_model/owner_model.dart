//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';

part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    @Default(null) String? email,
    @Default(null) String? id,
    @Default(null) String? phone,
    @Default(null) String? photo,
    @Default(null) String? postal_code,
    @Default(null) DateTime? updated_at,
    @Default(null) String? address,
    @Default(null) DateTime? created_at,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, Object?> json) =>
      _$OwnerModelFromJson(json);
}

const List<String> kOwnerModelColumns = [
  'email',
  'id',
  'phone',
  'photo',
  'postal_code',
  'updated_at',
  'address',
  'created_at',
];
