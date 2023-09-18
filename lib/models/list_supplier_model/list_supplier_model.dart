//CODE GENERATED, DO NOT EDIT
import 'package:mna/models/models.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_supplier_model.freezed.dart';

part 'list_supplier_model.g.dart';

@freezed
class ListSupplierModel with _$ListSupplierModel {
  const factory ListSupplierModel({
    @Default(null) List<SupplierModel>? data,
    @Default(null) int? total,
  }) = _ListSupplierModel;

  factory ListSupplierModel.fromJson(Map<String, Object?> json) =>
      _$ListSupplierModelFromJson(json);
}

const List<String> kListSupplierModelColumns = [
  'data',
  'total',
];
