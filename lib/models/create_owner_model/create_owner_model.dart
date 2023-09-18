//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_owner_model.freezed.dart';

part 'create_owner_model.g.dart';

@freezed
class CreateOwnerModel with _$CreateOwnerModel {
  const factory CreateOwnerModel({
    @Default(null) String? address,
    @Default(null) String? email,
    @Default(null) String? phone,
    @Default(null) String? photo,
    @Default(null) String? postal_code,
  }) = _CreateOwnerModel;

  factory CreateOwnerModel.fromJson(Map<String, Object?> json) =>
      _$CreateOwnerModelFromJson(json);
}

const List<String> kCreateOwnerModelColumns = [
  'address',
  'email',
  'phone',
  'photo',
  'postal_code',
];
