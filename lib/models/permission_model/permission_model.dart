
//CODE GENERATED, DO NOT EDIT
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_model.freezed.dart';

part 'permission_model.g.dart';

@freezed
class PermissionModel with _$PermissionModel {
  const factory PermissionModel({
    required String id,
  }) = _PermissionModel;

  factory PermissionModel.fromJson(Map<String, Object?> json) =>
      _$PermissionModelFromJson(json);
}
