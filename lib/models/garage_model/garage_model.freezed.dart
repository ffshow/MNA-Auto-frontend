// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GarageModel _$GarageModelFromJson(Map<String, dynamic> json) {
  return _GarageModel.fromJson(json);
}

/// @nodoc
mixin _$GarageModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GarageModelCopyWith<GarageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageModelCopyWith<$Res> {
  factory $GarageModelCopyWith(
          GarageModel value, $Res Function(GarageModel) then) =
      _$GarageModelCopyWithImpl<$Res, GarageModel>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$GarageModelCopyWithImpl<$Res, $Val extends GarageModel>
    implements $GarageModelCopyWith<$Res> {
  _$GarageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GarageModelCopyWith<$Res>
    implements $GarageModelCopyWith<$Res> {
  factory _$$_GarageModelCopyWith(
          _$_GarageModel value, $Res Function(_$_GarageModel) then) =
      __$$_GarageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GarageModelCopyWithImpl<$Res>
    extends _$GarageModelCopyWithImpl<$Res, _$_GarageModel>
    implements _$$_GarageModelCopyWith<$Res> {
  __$$_GarageModelCopyWithImpl(
      _$_GarageModel _value, $Res Function(_$_GarageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GarageModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GarageModel implements _GarageModel {
  const _$_GarageModel({required this.id});

  factory _$_GarageModel.fromJson(Map<String, dynamic> json) =>
      _$$_GarageModelFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'GarageModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GarageModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GarageModelCopyWith<_$_GarageModel> get copyWith =>
      __$$_GarageModelCopyWithImpl<_$_GarageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GarageModelToJson(
      this,
    );
  }
}

abstract class _GarageModel implements GarageModel {
  const factory _GarageModel({required final String id}) = _$_GarageModel;

  factory _GarageModel.fromJson(Map<String, dynamic> json) =
      _$_GarageModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_GarageModelCopyWith<_$_GarageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
