
//CODE GENERATED, DO NOT EDIT
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spare_part_model.freezed.dart';

part 'spare_part_model.g.dart';

@freezed
class SparePartModel with _$SparePartModel {
  const factory SparePartModel({
    required String id,
  }) = _SparePartModel;

  factory SparePartModel.fromJson(Map<String, Object?> json) =>
      _$SparePartModelFromJson(json);
}
