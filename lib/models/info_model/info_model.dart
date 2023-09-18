//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_model.freezed.dart';

part 'info_model.g.dart';

@freezed
class InfoModel with _$InfoModel {
  const factory InfoModel({
    @Default(null) String? label,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, Object?> json) =>
      _$InfoModelFromJson(json);
}

const List<String> kInfoModelColumns = [
  'label',
];
