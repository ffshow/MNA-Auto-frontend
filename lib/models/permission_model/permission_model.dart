//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_model.freezed.dart';

part 'permission_model.g.dart';

@freezed
class PermissionModel with _$PermissionModel {
  const factory PermissionModel({
    @Default(null) bool? available,
    @Default(null) DateTime? created_at,
    @Default(null) String? id,
    @Default(null) String? label,
    @Default(null) DateTime? updated_at,
  }) = _PermissionModel;

  factory PermissionModel.fromJson(Map<String, Object?> json) =>
      _$PermissionModelFromJson(json);
}

const List<String> kPermissionModelColumns = [
  'available',
  'created_at',
  'id',
  'label',
  'updated_at',
];
