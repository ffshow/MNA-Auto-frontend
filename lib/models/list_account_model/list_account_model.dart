//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_account_model.freezed.dart';

part 'list_account_model.g.dart';

@freezed
class ListAccountModel with _$ListAccountModel {
  const factory ListAccountModel({
    @Default(null) List<AccountModel>? data,
    @Default(null) int? total,
  }) = _ListAccountModel;

  factory ListAccountModel.fromJson(Map<String, Object?> json) =>
      _$ListAccountModelFromJson(json);
}

const List<String> kListAccountModelColumns = [
  'data',
  'total',
];
