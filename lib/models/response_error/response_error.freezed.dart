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
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

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
  $Res call({int? code, String? message});
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
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({int? code, String? message});
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
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ResponseError(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseError implements _ResponseError {
  const _$_ResponseError({this.code = null, this.message = null});

  factory _$_ResponseError.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseErrorFromJson(json);

  @override
  @JsonKey()
  final int? code;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'ResponseError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

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
  const factory _ResponseError({final int? code, final String? message}) =
      _$_ResponseError;

  factory _ResponseError.fromJson(Map<String, dynamic> json) =
      _$_ResponseError.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseErrorCopyWith<_$_ResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
