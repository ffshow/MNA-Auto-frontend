//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'garage_model.freezed.dart';

part 'garage_model.g.dart';

@freezed
class GarageModel with _$GarageModel {
  const factory GarageModel({
    @Default(null) String? id,
    @Default(null) String? label,
    @Default(null) DateTime? updated_at,
    @Default(null) DateTime? created_at,
  }) = _GarageModel;

  factory GarageModel.fromJson(Map<String, Object?> json) =>
      _$GarageModelFromJson(json);
}

const List<String> kGarageModelColumns = [
  'id',
  'label',
  'updated_at',
  'created_at',
];
