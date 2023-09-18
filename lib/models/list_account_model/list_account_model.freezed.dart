// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListAccountModel _$ListAccountModelFromJson(Map<String, dynamic> json) {
  return _ListAccountModel.fromJson(json);
}

/// @nodoc
mixin _$ListAccountModel {
  List<AccountModel>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListAccountModelCopyWith<ListAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAccountModelCopyWith<$Res> {
  factory $ListAccountModelCopyWith(
          ListAccountModel value, $Res Function(ListAccountModel) then) =
      _$ListAccountModelCopyWithImpl<$Res, ListAccountModel>;
  @useResult
  $Res call({List<AccountModel>? data, int? total});
}

/// @nodoc
class _$ListAccountModelCopyWithImpl<$Res, $Val extends ListAccountModel>
    implements $ListAccountModelCopyWith<$Res> {
  _$ListAccountModelCopyWithImpl(this._value, this._then);

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
              as List<AccountModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListAccountModelCopyWith<$Res>
    implements $ListAccountModelCopyWith<$Res> {
  factory _$$_ListAccountModelCopyWith(
          _$_ListAccountModel value, $Res Function(_$_ListAccountModel) then) =
      __$$_ListAccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AccountModel>? data, int? total});
}

/// @nodoc
class __$$_ListAccountModelCopyWithImpl<$Res>
    extends _$ListAccountModelCopyWithImpl<$Res, _$_ListAccountModel>
    implements _$$_ListAccountModelCopyWith<$Res> {
  __$$_ListAccountModelCopyWithImpl(
      _$_ListAccountModel _value, $Res Function(_$_ListAccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ListAccountModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListAccountModel implements _ListAccountModel {
  const _$_ListAccountModel(
      {final List<AccountModel>? data = null, this.total = null})
      : _data = data;

  factory _$_ListAccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListAccountModelFromJson(json);

  final List<AccountModel>? _data;
  @override
  @JsonKey()
  List<AccountModel>? get data {
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
    return 'ListAccountModel(data: $data, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListAccountModel &&
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
  _$$_ListAccountModelCopyWith<_$_ListAccountModel> get copyWith =>
      __$$_ListAccountModelCopyWithImpl<_$_ListAccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListAccountModelToJson(
      this,
    );
  }
}

abstract class _ListAccountModel implements ListAccountModel {
  const factory _ListAccountModel(
      {final List<AccountModel>? data, final int? total}) = _$_ListAccountModel;

  factory _ListAccountModel.fromJson(Map<String, dynamic> json) =
      _$_ListAccountModel.fromJson;

  @override
  List<AccountModel>? get data;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ListAccountModelCopyWith<_$_ListAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
