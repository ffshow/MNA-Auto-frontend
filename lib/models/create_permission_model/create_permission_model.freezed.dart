// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_permission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePermissionModel _$CreatePermissionModelFromJson(
    Map<String, dynamic> json) {
  return _CreatePermissionModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePermissionModel {
  String get label => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePermissionModelCopyWith<CreatePermissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePermissionModelCopyWith<$Res> {
  factory $CreatePermissionModelCopyWith(CreatePermissionModel value,
          $Res Function(CreatePermissionModel) then) =
      _$CreatePermissionModelCopyWithImpl<$Res, CreatePermissionModel>;
  @useResult
  $Res call({String label, bool available});
}

/// @nodoc
class _$CreatePermissionModelCopyWithImpl<$Res,
        $Val extends CreatePermissionModel>
    implements $CreatePermissionModelCopyWith<$Res> {
  _$CreatePermissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePermissionModelCopyWith<$Res>
    implements $CreatePermissionModelCopyWith<$Res> {
  factory _$$_CreatePermissionModelCopyWith(_$_CreatePermissionModel value,
          $Res Function(_$_CreatePermissionModel) then) =
      __$$_CreatePermissionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, bool available});
}

/// @nodoc
class __$$_CreatePermissionModelCopyWithImpl<$Res>
    extends _$CreatePermissionModelCopyWithImpl<$Res, _$_CreatePermissionModel>
    implements _$$_CreatePermissionModelCopyWith<$Res> {
  __$$_CreatePermissionModelCopyWithImpl(_$_CreatePermissionModel _value,
      $Res Function(_$_CreatePermissionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? available = null,
  }) {
    return _then(_$_CreatePermissionModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePermissionModel implements _CreatePermissionModel {
  const _$_CreatePermissionModel({required this.label, this.available = false});

  factory _$_CreatePermissionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePermissionModelFromJson(json);

  @override
  final String label;
  @override
  @JsonKey()
  final bool available;

  @override
  String toString() {
    return 'CreatePermissionModel(label: $label, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePermissionModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePermissionModelCopyWith<_$_CreatePermissionModel> get copyWith =>
      __$$_CreatePermissionModelCopyWithImpl<_$_CreatePermissionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePermissionModelToJson(
      this,
    );
  }
}

abstract class _CreatePermissionModel implements CreatePermissionModel {
  const factory _CreatePermissionModel(
      {required final String label,
      final bool available}) = _$_CreatePermissionModel;

  factory _CreatePermissionModel.fromJson(Map<String, dynamic> json) =
      _$_CreatePermissionModel.fromJson;

  @override
  String get label;
  @override
  bool get available;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePermissionModelCopyWith<_$_CreatePermissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
