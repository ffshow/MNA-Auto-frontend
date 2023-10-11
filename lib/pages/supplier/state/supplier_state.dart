part of 'supplier_cubit.dart';

@freezed
class SupplierState with _$SupplierState {
  const factory SupplierState.initial() = _Initial;
  const factory SupplierState.success(List<SupplierResponse> suppliers) =
      _Success;
  const factory SupplierState.failure(String error) = _Failure;
}
