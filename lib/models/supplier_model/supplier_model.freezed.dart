// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierModel _$SupplierModelFromJson(Map<String, dynamic> json) {
  return _SupplierModel.fromJson(json);
}

/// @nodoc
mixin _$SupplierModel {
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierModelCopyWith<SupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierModelCopyWith<$Res> {
  factory $SupplierModelCopyWith(
          SupplierModel value, $Res Function(SupplierModel) then) =
      _$SupplierModelCopyWithImpl<$Res, SupplierModel>;
  @useResult
  $Res call(
      {DateTime? created_at, String? id, String? name, DateTime? updated_at});
}

/// @nodoc
class _$SupplierModelCopyWithImpl<$Res, $Val extends SupplierModel>
    implements $SupplierModelCopyWith<$Res> {
  _$SupplierModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupplierModelCopyWith<$Res>
    implements $SupplierModelCopyWith<$Res> {
  factory _$$_SupplierModelCopyWith(
          _$_SupplierModel value, $Res Function(_$_SupplierModel) then) =
      __$$_SupplierModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? created_at, String? id, String? name, DateTime? updated_at});
}

/// @nodoc
class __$$_SupplierModelCopyWithImpl<$Res>
    extends _$SupplierModelCopyWithImpl<$Res, _$_SupplierModel>
    implements _$$_SupplierModelCopyWith<$Res> {
  __$$_SupplierModelCopyWithImpl(
      _$_SupplierModel _value, $Res Function(_$_SupplierModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_SupplierModel(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupplierModel implements _SupplierModel {
  const _$_SupplierModel(
      {this.created_at = null,
      this.id = null,
      this.name = null,
      this.updated_at = null});

  factory _$_SupplierModel.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierModelFromJson(json);

  @override
  @JsonKey()
  final DateTime? created_at;
  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final DateTime? updated_at;

  @override
  String toString() {
    return 'SupplierModel(created_at: $created_at, id: $id, name: $name, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupplierModel &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, created_at, id, name, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupplierModelCopyWith<_$_SupplierModel> get copyWith =>
      __$$_SupplierModelCopyWithImpl<_$_SupplierModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierModelToJson(
      this,
    );
  }
}

abstract class _SupplierModel implements SupplierModel {
  const factory _SupplierModel(
      {final DateTime? created_at,
      final String? id,
      final String? name,
      final DateTime? updated_at}) = _$_SupplierModel;

  factory _SupplierModel.fromJson(Map<String, dynamic> json) =
      _$_SupplierModel.fromJson;

  @override
  DateTime? get created_at;
  @override
  String? get id;
  @override
  String? get name;
  @override
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierModelCopyWith<_$_SupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}
