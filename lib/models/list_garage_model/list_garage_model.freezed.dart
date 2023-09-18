// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_garage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListGarageModel _$ListGarageModelFromJson(Map<String, dynamic> json) {
  return _ListGarageModel.fromJson(json);
}

/// @nodoc
mixin _$ListGarageModel {
  int? get total => throw _privateConstructorUsedError;
  List<GarageModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListGarageModelCopyWith<ListGarageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListGarageModelCopyWith<$Res> {
  factory $ListGarageModelCopyWith(
          ListGarageModel value, $Res Function(ListGarageModel) then) =
      _$ListGarageModelCopyWithImpl<$Res, ListGarageModel>;
  @useResult
  $Res call({int? total, List<GarageModel>? data});
}

/// @nodoc
class _$ListGarageModelCopyWithImpl<$Res, $Val extends ListGarageModel>
    implements $ListGarageModelCopyWith<$Res> {
  _$ListGarageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GarageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListGarageModelCopyWith<$Res>
    implements $ListGarageModelCopyWith<$Res> {
  factory _$$_ListGarageModelCopyWith(
          _$_ListGarageModel value, $Res Function(_$_ListGarageModel) then) =
      __$$_ListGarageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, List<GarageModel>? data});
}

/// @nodoc
class __$$_ListGarageModelCopyWithImpl<$Res>
    extends _$ListGarageModelCopyWithImpl<$Res, _$_ListGarageModel>
    implements _$$_ListGarageModelCopyWith<$Res> {
  __$$_ListGarageModelCopyWithImpl(
      _$_ListGarageModel _value, $Res Function(_$_ListGarageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ListGarageModel(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GarageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListGarageModel implements _ListGarageModel {
  const _$_ListGarageModel(
      {this.total = null, final List<GarageModel>? data = null})
      : _data = data;

  factory _$_ListGarageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListGarageModelFromJson(json);

  @override
  @JsonKey()
  final int? total;
  final List<GarageModel>? _data;
  @override
  @JsonKey()
  List<GarageModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListGarageModel(total: $total, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListGarageModel &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListGarageModelCopyWith<_$_ListGarageModel> get copyWith =>
      __$$_ListGarageModelCopyWithImpl<_$_ListGarageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListGarageModelToJson(
      this,
    );
  }
}

abstract class _ListGarageModel implements ListGarageModel {
  const factory _ListGarageModel(
      {final int? total, final List<GarageModel>? data}) = _$_ListGarageModel;

  factory _ListGarageModel.fromJson(Map<String, dynamic> json) =
      _$_ListGarageModel.fromJson;

  @override
  int? get total;
  @override
  List<GarageModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ListGarageModelCopyWith<_$_ListGarageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
