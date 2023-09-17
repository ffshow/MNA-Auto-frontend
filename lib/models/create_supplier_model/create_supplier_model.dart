//CODE GENERATED, DO NOT EDIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_supplier_model.freezed.dart';

part 'create_supplier_model.g.dart';

@freezed
class CreateSupplierModel with _$CreateSupplierModel {
  const factory CreateSupplierModel({
    @Default(null) String? name,
  }) = _CreateSupplierModel;

  factory CreateSupplierModel.fromJson(Map<String, Object?> json) =>
      _$CreateSupplierModelFromJson(json);
}
