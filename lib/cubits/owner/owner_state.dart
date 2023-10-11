part of 'owner_cubit.dart';

@freezed
class OwnerState with _$OwnerState {
  const factory OwnerState.initial() = _Initial;
  const factory OwnerState.loaded(Iterable<OwnerResponse> owners) = _Loaded;
  const factory OwnerState.failed(String error) = _failed;
}
