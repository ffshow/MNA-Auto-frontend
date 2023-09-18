// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListVehicleModel _$ListVehicleModelFromJson(Map<String, dynamic> json) {
  return _ListVehicleModel.fromJson(json);
}

/// @nodoc
mixin _$ListVehicleModel {
  List<VehicleModel>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListVehicleModelCopyWith<ListVehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListVehicleModelCopyWith<$Res> {
  factory $ListVehicleModelCopyWith(
          ListVehicleModel value, $Res Function(ListVehicleModel) then) =
      _$ListVehicleModelCopyWithImpl<$Res, ListVehicleModel>;
  @useResult
  $Res call({List<VehicleModel>? data, int? total});
}

/// @nodoc
class _$ListVehicleModelCopyWithImpl<$Res, $Val extends ListVehicleModel>
    implements $ListVehicleModelCopyWith<$Res> {
  _$ListVehicleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListVehicleModelCopyWith<$Res>
    implements $ListVehicleModelCopyWith<$Res> {
  factory _$$_ListVehicleModelCopyWith(
          _$_ListVehicleModel value, $Res Function(_$_ListVehicleModel) then) =
      __$$_ListVehicleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VehicleModel>? data, int? total});
}

/// @nodoc
class __$$_ListVehicleModelCopyWithImpl<$Res>
    extends _$ListVehicleModelCopyWithImpl<$Res, _$_ListVehicleModel>
    implements _$$_ListVehicleModelCopyWith<$Res> {
  __$$_ListVehicleModelCopyWithImpl(
      _$_ListVehicleModel _value, $Res Function(_$_ListVehicleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ListVehicleModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListVehicleModel implements _ListVehicleModel {
  const _$_ListVehicleModel(
      {final List<VehicleModel>? data = null, this.total = null})
      : _data = data;

  factory _$_ListVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListVehicleModelFromJson(json);

  final List<VehicleModel>? _data;
  @override
  @JsonKey()
  List<VehicleModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? total;

  @override
  String toString() {
    return 'ListVehicleModel(data: $data, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListVehicleModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListVehicleModelCopyWith<_$_ListVehicleModel> get copyWith =>
      __$$_ListVehicleModelCopyWithImpl<_$_ListVehicleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListVehicleModelToJson(
      this,
    );
  }
}

abstract class _ListVehicleModel implements ListVehicleModel {
  const factory _ListVehicleModel(
      {final List<VehicleModel>? data, final int? total}) = _$_ListVehicleModel;

  factory _ListVehicleModel.fromJson(Map<String, dynamic> json) =
      _$_ListVehicleModel.fromJson;

  @override
  List<VehicleModel>? get data;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ListVehicleModelCopyWith<_$_ListVehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
