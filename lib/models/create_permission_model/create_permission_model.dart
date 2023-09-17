//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_permission_model.freezed.dart';

part 'create_permission_model.g.dart';

@freezed
class CreatePermissionModel with _$CreatePermissionModel {
  const factory CreatePermissionModel({
    required String label,
    @Default(false) bool available,
  }) = _CreatePermissionModel;

  factory CreatePermissionModel.fromJson(Map<String, Object?> json) =>
      _$CreatePermissionModelFromJson(json);
}
