
//CODE GENERATED, DO NOT EDIT
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';

part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    required String id,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, Object?> json) =>
      _$OwnerModelFromJson(json);
}
