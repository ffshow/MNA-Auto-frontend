// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) {
  return _OwnerModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerModel {
  String? get postal_code => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerModelCopyWith<OwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerModelCopyWith<$Res> {
  factory $OwnerModelCopyWith(
          OwnerModel value, $Res Function(OwnerModel) then) =
      _$OwnerModelCopyWithImpl<$Res, OwnerModel>;
  @useResult
  $Res call(
      {String? postal_code,
      DateTime? updated_at,
      String? address,
      DateTime? created_at,
      String? email,
      String? id,
      String? phone,
      String? photo});
}

/// @nodoc
class _$OwnerModelCopyWithImpl<$Res, $Val extends OwnerModel>
    implements $OwnerModelCopyWith<$Res> {
  _$OwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postal_code = freezed,
    Object? updated_at = freezed,
    Object? address = freezed,
    Object? created_at = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      postal_code: freezed == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerModelCopyWith<$Res>
    implements $OwnerModelCopyWith<$Res> {
  factory _$$_OwnerModelCopyWith(
          _$_OwnerModel value, $Res Function(_$_OwnerModel) then) =
      __$$_OwnerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? postal_code,
      DateTime? updated_at,
      String? address,
      DateTime? created_at,
      String? email,
      String? id,
      String? phone,
      String? photo});
}

/// @nodoc
class __$$_OwnerModelCopyWithImpl<$Res>
    extends _$OwnerModelCopyWithImpl<$Res, _$_OwnerModel>
    implements _$$_OwnerModelCopyWith<$Res> {
  __$$_OwnerModelCopyWithImpl(
      _$_OwnerModel _value, $Res Function(_$_OwnerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postal_code = freezed,
    Object? updated_at = freezed,
    Object? address = freezed,
    Object? created_at = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_OwnerModel(
      postal_code: freezed == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerModel implements _OwnerModel {
  const _$_OwnerModel(
      {this.postal_code = null,
      this.updated_at = null,
      this.address = null,
      this.created_at = null,
      this.email = null,
      this.id = null,
      this.phone = null,
      this.photo = null});

  factory _$_OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerModelFromJson(json);

  @override
  @JsonKey()
  final String? postal_code;
  @override
  @JsonKey()
  final DateTime? updated_at;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey()
  final DateTime? created_at;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final String? photo;

  @override
  String toString() {
    return 'OwnerModel(postal_code: $postal_code, updated_at: $updated_at, address: $address, created_at: $created_at, email: $email, id: $id, phone: $phone, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerModel &&
            (identical(other.postal_code, postal_code) ||
                other.postal_code == postal_code) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postal_code, updated_at, address,
      created_at, email, id, phone, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerModelCopyWith<_$_OwnerModel> get copyWith =>
      __$$_OwnerModelCopyWithImpl<_$_OwnerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerModelToJson(
      this,
    );
  }
}

abstract class _OwnerModel implements OwnerModel {
  const factory _OwnerModel(
      {final String? postal_code,
      final DateTime? updated_at,
      final String? address,
      final DateTime? created_at,
      final String? email,
      final String? id,
      final String? phone,
      final String? photo}) = _$_OwnerModel;

  factory _OwnerModel.fromJson(Map<String, dynamic> json) =
      _$_OwnerModel.fromJson;

  @override
  String? get postal_code;
  @override
  DateTime? get updated_at;
  @override
  String? get address;
  @override
  DateTime? get created_at;
  @override
  String? get email;
  @override
  String? get id;
  @override
  String? get phone;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerModelCopyWith<_$_OwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
