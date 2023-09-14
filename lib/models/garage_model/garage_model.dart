//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'garage_model.freezed.dart';

part 'garage_model.g.dart';

@freezed
class GarageModel with _$GarageModel {
  const factory GarageModel({
    required DateTime created_at,
    required String id,
    required String label,
    required DateTime updated_at,
  }) = _GarageModel;

  factory GarageModel.fromJson(Map<String, Object?> json) =>
      _$GarageModelFromJson(json);
}
