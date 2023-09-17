// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOwnerModel _$CreateOwnerModelFromJson(Map<String, dynamic> json) {
  return _CreateOwnerModel.fromJson(json);
}

/// @nodoc
mixin _$CreateOwnerModel {
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get postal_code => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOwnerModelCopyWith<CreateOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOwnerModelCopyWith<$Res> {
  factory $CreateOwnerModelCopyWith(
          CreateOwnerModel value, $Res Function(CreateOwnerModel) then) =
      _$CreateOwnerModelCopyWithImpl<$Res, CreateOwnerModel>;
  @useResult
  $Res call(
      {String email,
      String phone,
      String photo,
      String postal_code,
      String address});
}

/// @nodoc
class _$CreateOwnerModelCopyWithImpl<$Res, $Val extends CreateOwnerModel>
    implements $CreateOwnerModelCopyWith<$Res> {
  _$CreateOwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
    Object? photo = null,
    Object? postal_code = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code: null == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateOwnerModelCopyWith<$Res>
    implements $CreateOwnerModelCopyWith<$Res> {
  factory _$$_CreateOwnerModelCopyWith(
          _$_CreateOwnerModel value, $Res Function(_$_CreateOwnerModel) then) =
      __$$_CreateOwnerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String phone,
      String photo,
      String postal_code,
      String address});
}

/// @nodoc
class __$$_CreateOwnerModelCopyWithImpl<$Res>
    extends _$CreateOwnerModelCopyWithImpl<$Res, _$_CreateOwnerModel>
    implements _$$_CreateOwnerModelCopyWith<$Res> {
  __$$_CreateOwnerModelCopyWithImpl(
      _$_CreateOwnerModel _value, $Res Function(_$_CreateOwnerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
    Object? photo = null,
    Object? postal_code = null,
    Object? address = null,
  }) {
    return _then(_$_CreateOwnerModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code: null == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOwnerModel implements _CreateOwnerModel {
  const _$_CreateOwnerModel(
      {required this.email,
      required this.phone,
      required this.photo,
      required this.postal_code,
      required this.address});

  factory _$_CreateOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOwnerModelFromJson(json);

  @override
  final String email;
  @override
  final String phone;
  @override
  final String photo;
  @override
  final String postal_code;
  @override
  final String address;

  @override
  String toString() {
    return 'CreateOwnerModel(email: $email, phone: $phone, photo: $photo, postal_code: $postal_code, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOwnerModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.postal_code, postal_code) ||
                other.postal_code == postal_code) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phone, photo, postal_code, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOwnerModelCopyWith<_$_CreateOwnerModel> get copyWith =>
      __$$_CreateOwnerModelCopyWithImpl<_$_CreateOwnerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOwnerModelToJson(
      this,
    );
  }
}

abstract class _CreateOwnerModel implements CreateOwnerModel {
  const factory _CreateOwnerModel(
      {required final String email,
      required final String phone,
      required final String photo,
      required final String postal_code,
      required final String address}) = _$_CreateOwnerModel;

  factory _CreateOwnerModel.fromJson(Map<String, dynamic> json) =
      _$_CreateOwnerModel.fromJson;

  @override
  String get email;
  @override
  String get phone;
  @override
  String get photo;
  @override
  String get postal_code;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOwnerModelCopyWith<_$_CreateOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
