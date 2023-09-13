// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseError _$ResponseErrorFromJson(Map<String, dynamic> json) {
  return _ResponseError.fromJson(json);
}

/// @nodoc
mixin _$ResponseError {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseErrorCopyWith<ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseErrorCopyWith<$Res> {
  factory $ResponseErrorCopyWith(
          ResponseError value, $Res Function(ResponseError) then) =
      _$ResponseErrorCopyWithImpl<$Res, ResponseError>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ResponseErrorCopyWithImpl<$Res, $Val extends ResponseError>
    implements $ResponseErrorCopyWith<$Res> {
  _$ResponseErrorCopyWithImpl(this._value, this._then);

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
abstract class _$$_ResponseErrorCopyWith<$Res>
    implements $ResponseErrorCopyWith<$Res> {
  factory _$$_ResponseErrorCopyWith(
          _$_ResponseError value, $Res Function(_$_ResponseError) then) =
      __$$_ResponseErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_ResponseErrorCopyWithImpl<$Res>
    extends _$ResponseErrorCopyWithImpl<$Res, _$_ResponseError>
    implements _$$_ResponseErrorCopyWith<$Res> {
  __$$_ResponseErrorCopyWithImpl(
      _$_ResponseError _value, $Res Function(_$_ResponseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ResponseError(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseError implements _ResponseError {
  const _$_ResponseError({required this.id});

  factory _$_ResponseError.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseErrorFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'ResponseError(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseError &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      __$$_ResponseErrorCopyWithImpl<_$_ResponseError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseErrorToJson(
      this,
    );
  }
}

abstract class _ResponseError implements ResponseError {
  const factory _ResponseError({required final String id}) = _$_ResponseError;

  factory _ResponseError.fromJson(Map<String, dynamic> json) =
      _$_ResponseError.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
