//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_garage_model.freezed.dart';

part 'create_garage_model.g.dart';

@freezed
class CreateGarageModel with _$CreateGarageModel {
  const factory CreateGarageModel({
    @Default(null) String? label,
  }) = _CreateGarageModel;

  factory CreateGarageModel.fromJson(Map<String, Object?> json) =>
      _$CreateGarageModelFromJson(json);
}

const List<String> kCreateGarageModelColumns = [
  'label',
];
