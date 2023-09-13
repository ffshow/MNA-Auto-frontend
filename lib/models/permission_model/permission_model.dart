//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_model.freezed.dart';

part 'permission_model.g.dart';

@freezed
class PermissionModel with _$PermissionModel {
  const factory PermissionModel({
    @Default(false) bool available,
    required DateTime created_at,
    required String id,
    required String label,
    required DateTime updated_at,
  }) = _PermissionModel;

  factory PermissionModel.fromJson(Map<String, Object?> json) =>
      _$PermissionModelFromJson(json);
}
