//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_model.freezed.dart';

part 'create_account_model.g.dart';

@freezed
class CreateAccountModel with _$CreateAccountModel {
  const factory CreateAccountModel({
    @Default(null) String? name,
    @Default(null) String? email,
  }) = _CreateAccountModel;

  factory CreateAccountModel.fromJson(Map<String, Object?> json) =>
      _$CreateAccountModelFromJson(json);
}

const List<String> kCreateAccountModelColumns = [
  'name',
  'email',
];
