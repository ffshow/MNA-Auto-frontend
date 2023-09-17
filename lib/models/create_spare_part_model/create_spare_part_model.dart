//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_spare_part_model.freezed.dart';

part 'create_spare_part_model.g.dart';

@freezed
class CreateSparePartModel with _$CreateSparePartModel {
  const factory CreateSparePartModel({
    required String barcode,
    required String reference,
  }) = _CreateSparePartModel;

  factory CreateSparePartModel.fromJson(Map<String, Object?> json) =>
      _$CreateSparePartModelFromJson(json);
}
