
//CODE GENERATED, DO NOT EDIT
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_model.freezed.dart';

part 'supplier_model.g.dart';

@freezed
class SupplierModel with _$SupplierModel {
  const factory SupplierModel({
    required String id,
  }) = _SupplierModel;

  factory SupplierModel.fromJson(Map<String, Object?> json) =>
      _$SupplierModelFromJson(json);
}
