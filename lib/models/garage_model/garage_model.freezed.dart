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
  String? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

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
  $Res call(
      {String? id, String? label, DateTime? updated_at, DateTime? created_at});
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
    Object? id = freezed,
    Object? label = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $Res call(
      {String? id, String? label, DateTime? updated_at, DateTime? created_at});
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
    Object? id = freezed,
    Object? label = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$_GarageModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GarageModel implements _GarageModel {
  const _$_GarageModel(
      {this.id = null,
      this.label = null,
      this.updated_at = null,
      this.created_at = null});

  factory _$_GarageModel.fromJson(Map<String, dynamic> json) =>
      _$$_GarageModelFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? label;
  @override
  @JsonKey()
  final DateTime? updated_at;
  @override
  @JsonKey()
  final DateTime? created_at;

  @override
  String toString() {
    return 'GarageModel(id: $id, label: $label, updated_at: $updated_at, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GarageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, updated_at, created_at);

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
  const factory _GarageModel(
      {final String? id,
      final String? label,
      final DateTime? updated_at,
      final DateTime? created_at}) = _$_GarageModel;

  factory _GarageModel.fromJson(Map<String, dynamic> json) =
      _$_GarageModel.fromJson;

  @override
  String? get id;
  @override
  String? get label;
  @override
  DateTime? get updated_at;
  @override
  DateTime? get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_GarageModelCopyWith<_$_GarageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
