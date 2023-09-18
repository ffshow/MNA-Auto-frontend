//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_model.freezed.dart';

part 'supplier_model.g.dart';

@freezed
class SupplierModel with _$SupplierModel {
  const factory SupplierModel({
    @Default(null) String? name,
    @Default(null) DateTime? updated_at,
    @Default(null) DateTime? created_at,
    @Default(null) String? id,
  }) = _SupplierModel;

  factory SupplierModel.fromJson(Map<String, Object?> json) =>
      _$SupplierModelFromJson(json);
}

const List<String> kSupplierModelColumns = [
  'name',
  'updated_at',
  'created_at',
  'id',
];
