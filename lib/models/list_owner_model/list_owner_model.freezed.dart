// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOwnerModel _$ListOwnerModelFromJson(Map<String, dynamic> json) {
  return _ListOwnerModel.fromJson(json);
}

/// @nodoc
mixin _$ListOwnerModel {
  List<OwnerModel>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOwnerModelCopyWith<ListOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOwnerModelCopyWith<$Res> {
  factory $ListOwnerModelCopyWith(
          ListOwnerModel value, $Res Function(ListOwnerModel) then) =
      _$ListOwnerModelCopyWithImpl<$Res, ListOwnerModel>;
  @useResult
  $Res call({List<OwnerModel>? data, int? total});
}

/// @nodoc
class _$ListOwnerModelCopyWithImpl<$Res, $Val extends ListOwnerModel>
    implements $ListOwnerModelCopyWith<$Res> {
  _$ListOwnerModelCopyWithImpl(this._value, this._then);

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
              as List<OwnerModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListOwnerModelCopyWith<$Res>
    implements $ListOwnerModelCopyWith<$Res> {
  factory _$$_ListOwnerModelCopyWith(
          _$_ListOwnerModel value, $Res Function(_$_ListOwnerModel) then) =
      __$$_ListOwnerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OwnerModel>? data, int? total});
}

/// @nodoc
class __$$_ListOwnerModelCopyWithImpl<$Res>
    extends _$ListOwnerModelCopyWithImpl<$Res, _$_ListOwnerModel>
    implements _$$_ListOwnerModelCopyWith<$Res> {
  __$$_ListOwnerModelCopyWithImpl(
      _$_ListOwnerModel _value, $Res Function(_$_ListOwnerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ListOwnerModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OwnerModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOwnerModel implements _ListOwnerModel {
  const _$_ListOwnerModel(
      {final List<OwnerModel>? data = null, this.total = null})
      : _data = data;

  factory _$_ListOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListOwnerModelFromJson(json);

  final List<OwnerModel>? _data;
  @override
  @JsonKey()
  List<OwnerModel>? get data {
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
    return 'ListOwnerModel(data: $data, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListOwnerModel &&
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
  _$$_ListOwnerModelCopyWith<_$_ListOwnerModel> get copyWith =>
      __$$_ListOwnerModelCopyWithImpl<_$_ListOwnerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOwnerModelToJson(
      this,
    );
  }
}

abstract class _ListOwnerModel implements ListOwnerModel {
  const factory _ListOwnerModel(
      {final List<OwnerModel>? data, final int? total}) = _$_ListOwnerModel;

  factory _ListOwnerModel.fromJson(Map<String, dynamic> json) =
      _$_ListOwnerModel.fromJson;

  @override
  List<OwnerModel>? get data;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ListOwnerModelCopyWith<_$_ListOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
