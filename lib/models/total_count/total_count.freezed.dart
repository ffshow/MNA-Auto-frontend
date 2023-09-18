// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TotalCount _$TotalCountFromJson(Map<String, dynamic> json) {
  return _TotalCount.fromJson(json);
}

/// @nodoc
mixin _$TotalCount {
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalCountCopyWith<TotalCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalCountCopyWith<$Res> {
  factory $TotalCountCopyWith(
          TotalCount value, $Res Function(TotalCount) then) =
      _$TotalCountCopyWithImpl<$Res, TotalCount>;
  @useResult
  $Res call({int? count});
}

/// @nodoc
class _$TotalCountCopyWithImpl<$Res, $Val extends TotalCount>
    implements $TotalCountCopyWith<$Res> {
  _$TotalCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalCountCopyWith<$Res>
    implements $TotalCountCopyWith<$Res> {
  factory _$$_TotalCountCopyWith(
          _$_TotalCount value, $Res Function(_$_TotalCount) then) =
      __$$_TotalCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count});
}

/// @nodoc
class __$$_TotalCountCopyWithImpl<$Res>
    extends _$TotalCountCopyWithImpl<$Res, _$_TotalCount>
    implements _$$_TotalCountCopyWith<$Res> {
  __$$_TotalCountCopyWithImpl(
      _$_TotalCount _value, $Res Function(_$_TotalCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$_TotalCount(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotalCount implements _TotalCount {
  const _$_TotalCount({this.count = null});

  factory _$_TotalCount.fromJson(Map<String, dynamic> json) =>
      _$$_TotalCountFromJson(json);

  @override
  @JsonKey()
  final int? count;

  @override
  String toString() {
    return 'TotalCount(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalCount &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalCountCopyWith<_$_TotalCount> get copyWith =>
      __$$_TotalCountCopyWithImpl<_$_TotalCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotalCountToJson(
      this,
    );
  }
}

abstract class _TotalCount implements TotalCount {
  const factory _TotalCount({final int? count}) = _$_TotalCount;

  factory _TotalCount.fromJson(Map<String, dynamic> json) =
      _$_TotalCount.fromJson;

  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_TotalCountCopyWith<_$_TotalCount> get copyWith =>
      throw _privateConstructorUsedError;
}
