//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_owner_model.freezed.dart';

part 'create_owner_model.g.dart';

@freezed
class CreateOwnerModel with _$CreateOwnerModel {
  const factory CreateOwnerModel({
    required String email,
    required String phone,
    required String photo,
    required String postal_code,
    required String address,
  }) = _CreateOwnerModel;

  factory CreateOwnerModel.fromJson(Map<String, Object?> json) =>
      _$CreateOwnerModelFromJson(json);
}