//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_model.freezed.dart';

part 'permission_model.g.dart';

@freezed
class PermissionModel with _$PermissionModel {
  const factory PermissionModel({
    @Default(null) String? label,
    @Default(null) DateTime? updated_at,
    @Default(null) bool? available,
    @Default(null) DateTime? created_at,
    @Default(null) String? id,
  }) = _PermissionModel;

  factory PermissionModel.fromJson(Map<String, Object?> json) =>
      _$PermissionModelFromJson(json);
}

const List<String> kPermissionModelColumns = [
  'label',
  'updated_at',
  'available',
  'created_at',
  'id',
];
