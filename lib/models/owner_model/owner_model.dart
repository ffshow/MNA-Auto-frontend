//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';

part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    @Default(null) String? address,
    required DateTime created_at,
    @Default(null) String? email,
    required String id,
    @Default(null) String? phone,
    @Default(null) String? photo,
    @Default(null) String? postal_code,
    required DateTime updated_at,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, Object?> json) =>
      _$OwnerModelFromJson(json);
}
