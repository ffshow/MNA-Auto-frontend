//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_spare_part_model.freezed.dart';

part 'list_spare_part_model.g.dart';

@freezed
class ListSparePartModel with _$ListSparePartModel {
  const factory ListSparePartModel({
    @Default(null) List<SparePartModel>? data,
    @Default(null) int? total,
  }) = _ListSparePartModel;

  factory ListSparePartModel.fromJson(Map<String, Object?> json) =>
      _$ListSparePartModelFromJson(json);
}

const List<String> kListSparePartModelColumns = [
  'data',
  'total',
];
