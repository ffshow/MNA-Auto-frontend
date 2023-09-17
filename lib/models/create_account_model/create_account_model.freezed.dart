// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountModel _$CreateAccountModelFromJson(Map<String, dynamic> json) {
  return _CreateAccountModel.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountModel {
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountModelCopyWith<CreateAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountModelCopyWith<$Res> {
  factory $CreateAccountModelCopyWith(
          CreateAccountModel value, $Res Function(CreateAccountModel) then) =
      _$CreateAccountModelCopyWithImpl<$Res, CreateAccountModel>;
  @useResult
  $Res call({String? email, String? name});
}

/// @nodoc
class _$CreateAccountModelCopyWithImpl<$Res, $Val extends CreateAccountModel>
    implements $CreateAccountModelCopyWith<$Res> {
  _$CreateAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAccountModelCopyWith<$Res>
    implements $CreateAccountModelCopyWith<$Res> {
  factory _$$_CreateAccountModelCopyWith(_$_CreateAccountModel value,
          $Res Function(_$_CreateAccountModel) then) =
      __$$_CreateAccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? name});
}

/// @nodoc
class __$$_CreateAccountModelCopyWithImpl<$Res>
    extends _$CreateAccountModelCopyWithImpl<$Res, _$_CreateAccountModel>
    implements _$$_CreateAccountModelCopyWith<$Res> {
  __$$_CreateAccountModelCopyWithImpl(
      _$_CreateAccountModel _value, $Res Function(_$_CreateAccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CreateAccountModel(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAccountModel implements _CreateAccountModel {
  const _$_CreateAccountModel({this.email = null, this.name = null});

  factory _$_CreateAccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountModelFromJson(json);

  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? name;

  @override
  String toString() {
    return 'CreateAccountModel(email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountModelCopyWith<_$_CreateAccountModel> get copyWith =>
      __$$_CreateAccountModelCopyWithImpl<_$_CreateAccountModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAccountModelToJson(
      this,
    );
  }
}

abstract class _CreateAccountModel implements CreateAccountModel {
  const factory _CreateAccountModel({final String? email, final String? name}) =
      _$_CreateAccountModel;

  factory _CreateAccountModel.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountModel.fromJson;

  @override
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountModelCopyWith<_$_CreateAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
