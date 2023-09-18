//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_owner_model.freezed.dart';

part 'list_owner_model.g.dart';

@freezed
class ListOwnerModel with _$ListOwnerModel {
  const factory ListOwnerModel({
    @Default(null) List<OwnerModel>? data,
    @Default(null) int? total,
  }) = _ListOwnerModel;

  factory ListOwnerModel.fromJson(Map<String, Object?> json) =>
      _$ListOwnerModelFromJson(json);
}

const List<String> kListOwnerModelColumns = [
  'data',
  'total',
];
