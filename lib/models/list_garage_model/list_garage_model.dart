//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_garage_model.freezed.dart';

part 'list_garage_model.g.dart';

@freezed
class ListGarageModel with _$ListGarageModel {
  const factory ListGarageModel({
    @Default(null) int? total,
    @Default(null) List<GarageModel>? data,
  }) = _ListGarageModel;

  factory ListGarageModel.fromJson(Map<String, Object?> json) =>
      _$ListGarageModelFromJson(json);
}

const List<String> kListGarageModelColumns = [
  'total',
  'data',
];
