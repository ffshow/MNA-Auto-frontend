//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'garage_model.freezed.dart';

part 'garage_model.g.dart';

@freezed
class GarageModel with _$GarageModel {
  const factory GarageModel({
    @Default(null) DateTime? created_at,
    @Default(null) String? id,
    @Default(null) String? label,
    @Default(null) DateTime? updated_at,
  }) = _GarageModel;

  factory GarageModel.fromJson(Map<String, Object?> json) =>
      _$GarageModelFromJson(json);
}
