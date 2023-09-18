// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_supplier_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListSupplierModel _$ListSupplierModelFromJson(Map<String, dynamic> json) {
  return _ListSupplierModel.fromJson(json);
}

/// @nodoc
mixin _$ListSupplierModel {
  List<SupplierModel>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListSupplierModelCopyWith<ListSupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSupplierModelCopyWith<$Res> {
  factory $ListSupplierModelCopyWith(
          ListSupplierModel value, $Res Function(ListSupplierModel) then) =
      _$ListSupplierModelCopyWithImpl<$Res, ListSupplierModel>;
  @useResult
  $Res call({List<SupplierModel>? data, int? total});
}

/// @nodoc
class _$ListSupplierModelCopyWithImpl<$Res, $Val extends ListSupplierModel>
    implements $ListSupplierModelCopyWith<$Res> {
  _$ListSupplierModelCopyWithImpl(this._value, this._then);

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
              as List<SupplierModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListSupplierModelCopyWith<$Res>
    implements $ListSupplierModelCopyWith<$Res> {
  factory _$$_ListSupplierModelCopyWith(_$_ListSupplierModel value,
          $Res Function(_$_ListSupplierModel) then) =
      __$$_ListSupplierModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SupplierModel>? data, int? total});
}

/// @nodoc
class __$$_ListSupplierModelCopyWithImpl<$Res>
    extends _$ListSupplierModelCopyWithImpl<$Res, _$_ListSupplierModel>
    implements _$$_ListSupplierModelCopyWith<$Res> {
  __$$_ListSupplierModelCopyWithImpl(
      _$_ListSupplierModel _value, $Res Function(_$_ListSupplierModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ListSupplierModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SupplierModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListSupplierModel implements _ListSupplierModel {
  const _$_ListSupplierModel(
      {final List<SupplierModel>? data = null, this.total = null})
      : _data = data;

  factory _$_ListSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListSupplierModelFromJson(json);

  final List<SupplierModel>? _data;
  @override
  @JsonKey()
  List<SupplierModel>? get data {
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
    return 'ListSupplierModel(data: $data, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListSupplierModel &&
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
  _$$_ListSupplierModelCopyWith<_$_ListSupplierModel> get copyWith =>
      __$$_ListSupplierModelCopyWithImpl<_$_ListSupplierModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListSupplierModelToJson(
      this,
    );
  }
}

abstract class _ListSupplierModel implements ListSupplierModel {
  const factory _ListSupplierModel(
      {final List<SupplierModel>? data,
      final int? total}) = _$_ListSupplierModel;

  factory _ListSupplierModel.fromJson(Map<String, dynamic> json) =
      _$_ListSupplierModel.fromJson;

  @override
  List<SupplierModel>? get data;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ListSupplierModelCopyWith<_$_ListSupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}
