// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_spare_part_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListSparePartModel _$ListSparePartModelFromJson(Map<String, dynamic> json) {
  return _ListSparePartModel.fromJson(json);
}

/// @nodoc
mixin _$ListSparePartModel {
  List<SparePartModel>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListSparePartModelCopyWith<ListSparePartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSparePartModelCopyWith<$Res> {
  factory $ListSparePartModelCopyWith(
          ListSparePartModel value, $Res Function(ListSparePartModel) then) =
      _$ListSparePartModelCopyWithImpl<$Res, ListSparePartModel>;
  @useResult
  $Res call({List<SparePartModel>? data, int? total});
}

/// @nodoc
class _$ListSparePartModelCopyWithImpl<$Res, $Val extends ListSparePartModel>
    implements $ListSparePartModelCopyWith<$Res> {
  _$ListSparePartModelCopyWithImpl(this._value, this._then);

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
              as List<SparePartModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListSparePartModelCopyWith<$Res>
    implements $ListSparePartModelCopyWith<$Res> {
  factory _$$_ListSparePartModelCopyWith(_$_ListSparePartModel value,
          $Res Function(_$_ListSparePartModel) then) =
      __$$_ListSparePartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SparePartModel>? data, int? total});
}

/// @nodoc
class __$$_ListSparePartModelCopyWithImpl<$Res>
    extends _$ListSparePartModelCopyWithImpl<$Res, _$_ListSparePartModel>
    implements _$$_ListSparePartModelCopyWith<$Res> {
  __$$_ListSparePartModelCopyWithImpl(
      _$_ListSparePartModel _value, $Res Function(_$_ListSparePartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ListSparePartModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SparePartModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListSparePartModel implements _ListSparePartModel {
  const _$_ListSparePartModel(
      {final List<SparePartModel>? data = null, this.total = null})
      : _data = data;

  factory _$_ListSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListSparePartModelFromJson(json);

  final List<SparePartModel>? _data;
  @override
  @JsonKey()
  List<SparePartModel>? get data {
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
    return 'ListSparePartModel(data: $data, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListSparePartModel &&
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
  _$$_ListSparePartModelCopyWith<_$_ListSparePartModel> get copyWith =>
      __$$_ListSparePartModelCopyWithImpl<_$_ListSparePartModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListSparePartModelToJson(
      this,
    );
  }
}

abstract class _ListSparePartModel implements ListSparePartModel {
  const factory _ListSparePartModel(
      {final List<SparePartModel>? data,
      final int? total}) = _$_ListSparePartModel;

  factory _ListSparePartModel.fromJson(Map<String, dynamic> json) =
      _$_ListSparePartModel.fromJson;

  @override
  List<SparePartModel>? get data;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ListSparePartModelCopyWith<_$_ListSparePartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
