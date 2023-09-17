//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_model.freezed.dart';

part 'create_account_model.g.dart';

@freezed
class CreateAccountModel with _$CreateAccountModel {
  const factory CreateAccountModel({
    @Default(null) String? email,
    @Default(null) String? name,
  }) = _CreateAccountModel;

  factory CreateAccountModel.fromJson(Map<String, Object?> json) =>
      _$CreateAccountModelFromJson(json);
}
