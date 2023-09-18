// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PermissionModel _$PermissionModelFromJson(Map<String, dynamic> json) {
  return _PermissionModel.fromJson(json);
}

/// @nodoc
mixin _$PermissionModel {
  String? get label => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionModelCopyWith<PermissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionModelCopyWith<$Res> {
  factory $PermissionModelCopyWith(
          PermissionModel value, $Res Function(PermissionModel) then) =
      _$PermissionModelCopyWithImpl<$Res, PermissionModel>;
  @useResult
  $Res call(
      {String? label,
      DateTime? updated_at,
      bool? available,
      DateTime? created_at,
      String? id});
}

/// @nodoc
class _$PermissionModelCopyWithImpl<$Res, $Val extends PermissionModel>
    implements $PermissionModelCopyWith<$Res> {
  _$PermissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? updated_at = freezed,
    Object? available = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PermissionModelCopyWith<$Res>
    implements $PermissionModelCopyWith<$Res> {
  factory _$$_PermissionModelCopyWith(
          _$_PermissionModel value, $Res Function(_$_PermissionModel) then) =
      __$$_PermissionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      DateTime? updated_at,
      bool? available,
      DateTime? created_at,
      String? id});
}

/// @nodoc
class __$$_PermissionModelCopyWithImpl<$Res>
    extends _$PermissionModelCopyWithImpl<$Res, _$_PermissionModel>
    implements _$$_PermissionModelCopyWith<$Res> {
  __$$_PermissionModelCopyWithImpl(
      _$_PermissionModel _value, $Res Function(_$_PermissionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? updated_at = freezed,
    Object? available = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_PermissionModel(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PermissionModel implements _PermissionModel {
  const _$_PermissionModel(
      {this.label = null,
      this.updated_at = null,
      this.available = null,
      this.created_at = null,
      this.id = null});

  factory _$_PermissionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PermissionModelFromJson(json);

  @override
  @JsonKey()
  final String? label;
  @override
  @JsonKey()
  final DateTime? updated_at;
  @override
  @JsonKey()
  final bool? available;
  @override
  @JsonKey()
  final DateTime? created_at;
  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'PermissionModel(label: $label, updated_at: $updated_at, available: $available, created_at: $created_at, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermissionModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, label, updated_at, available, created_at, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermissionModelCopyWith<_$_PermissionModel> get copyWith =>
      __$$_PermissionModelCopyWithImpl<_$_PermissionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PermissionModelToJson(
      this,
    );
  }
}

abstract class _PermissionModel implements PermissionModel {
  const factory _PermissionModel(
      {final String? label,
      final DateTime? updated_at,
      final bool? available,
      final DateTime? created_at,
      final String? id}) = _$_PermissionModel;

  factory _PermissionModel.fromJson(Map<String, dynamic> json) =
      _$_PermissionModel.fromJson;

  @override
  String? get label;
  @override
  DateTime? get updated_at;
  @override
  bool? get available;
  @override
  DateTime? get created_at;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PermissionModelCopyWith<_$_PermissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
