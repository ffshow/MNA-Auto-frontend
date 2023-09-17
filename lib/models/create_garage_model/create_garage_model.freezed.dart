// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_garage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateGarageModel _$CreateGarageModelFromJson(Map<String, dynamic> json) {
  return _CreateGarageModel.fromJson(json);
}

/// @nodoc
mixin _$CreateGarageModel {
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGarageModelCopyWith<CreateGarageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGarageModelCopyWith<$Res> {
  factory $CreateGarageModelCopyWith(
          CreateGarageModel value, $Res Function(CreateGarageModel) then) =
      _$CreateGarageModelCopyWithImpl<$Res, CreateGarageModel>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$CreateGarageModelCopyWithImpl<$Res, $Val extends CreateGarageModel>
    implements $CreateGarageModelCopyWith<$Res> {
  _$CreateGarageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateGarageModelCopyWith<$Res>
    implements $CreateGarageModelCopyWith<$Res> {
  factory _$$_CreateGarageModelCopyWith(_$_CreateGarageModel value,
          $Res Function(_$_CreateGarageModel) then) =
      __$$_CreateGarageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$_CreateGarageModelCopyWithImpl<$Res>
    extends _$CreateGarageModelCopyWithImpl<$Res, _$_CreateGarageModel>
    implements _$$_CreateGarageModelCopyWith<$Res> {
  __$$_CreateGarageModelCopyWithImpl(
      _$_CreateGarageModel _value, $Res Function(_$_CreateGarageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$_CreateGarageModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateGarageModel implements _CreateGarageModel {
  const _$_CreateGarageModel({required this.label});

  factory _$_CreateGarageModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateGarageModelFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'CreateGarageModel(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGarageModel &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateGarageModelCopyWith<_$_CreateGarageModel> get copyWith =>
      __$$_CreateGarageModelCopyWithImpl<_$_CreateGarageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateGarageModelToJson(
      this,
    );
  }
}

abstract class _CreateGarageModel implements CreateGarageModel {
  const factory _CreateGarageModel({required final String label}) =
      _$_CreateGarageModel;

  factory _CreateGarageModel.fromJson(Map<String, dynamic> json) =
      _$_CreateGarageModel.fromJson;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_CreateGarageModelCopyWith<_$_CreateGarageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
