//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.freezed.dart';

part 'account_model.g.dart';

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    @Default(null) DateTime? created_at,
    @Default(null) String? email,
    @Default(null) String? id,
    @Default(null) String? name,
    @Default(null) DateTime? updated_at,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, Object?> json) =>
      _$AccountModelFromJson(json);
}
