//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';

part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    required DateTime created_at,
    required String email,
    required String id,
    required String phone,
    required String photo,
    required String postal_code,
    required DateTime updated_at,
    required String address,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, Object?> json) =>
      _$OwnerModelFromJson(json);
}
