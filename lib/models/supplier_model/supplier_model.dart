//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_model.freezed.dart';

part 'supplier_model.g.dart';

@freezed
class SupplierModel with _$SupplierModel {
  const factory SupplierModel({
    required DateTime created_at,
    required String id,
    required String name,
    required DateTime updated_at,
  }) = _SupplierModel;

  factory SupplierModel.fromJson(Map<String, Object?> json) =>
      _$SupplierModelFromJson(json);
}
