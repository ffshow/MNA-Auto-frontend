//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_permission_model.freezed.dart';

part 'list_permission_model.g.dart';

@freezed
class ListPermissionModel with _$ListPermissionModel {
  const factory ListPermissionModel({
    @Default(null) int? total,
    @Default(null) List<PermissionModel>? data,
  }) = _ListPermissionModel;

  factory ListPermissionModel.fromJson(Map<String, Object?> json) =>
      _$ListPermissionModelFromJson(json);
}

const List<String> kListPermissionModelColumns = [
  'total',
  'data',
];
