// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_supplier_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSupplierModel _$CreateSupplierModelFromJson(Map<String, dynamic> json) {
  return _CreateSupplierModel.fromJson(json);
}

/// @nodoc
mixin _$CreateSupplierModel {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSupplierModelCopyWith<CreateSupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupplierModelCopyWith<$Res> {
  factory $CreateSupplierModelCopyWith(
          CreateSupplierModel value, $Res Function(CreateSupplierModel) then) =
      _$CreateSupplierModelCopyWithImpl<$Res, CreateSupplierModel>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$CreateSupplierModelCopyWithImpl<$Res, $Val extends CreateSupplierModel>
    implements $CreateSupplierModelCopyWith<$Res> {
  _$CreateSupplierModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateSupplierModelCopyWith<$Res>
    implements $CreateSupplierModelCopyWith<$Res> {
  factory _$$_CreateSupplierModelCopyWith(_$_CreateSupplierModel value,
          $Res Function(_$_CreateSupplierModel) then) =
      __$$_CreateSupplierModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_CreateSupplierModelCopyWithImpl<$Res>
    extends _$CreateSupplierModelCopyWithImpl<$Res, _$_CreateSupplierModel>
    implements _$$_CreateSupplierModelCopyWith<$Res> {
  __$$_CreateSupplierModelCopyWithImpl(_$_CreateSupplierModel _value,
      $Res Function(_$_CreateSupplierModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_CreateSupplierModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateSupplierModel implements _CreateSupplierModel {
  const _$_CreateSupplierModel({this.name = null});

  factory _$_CreateSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSupplierModelFromJson(json);

  @override
  @JsonKey()
  final String? name;

  @override
  String toString() {
    return 'CreateSupplierModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSupplierModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateSupplierModelCopyWith<_$_CreateSupplierModel> get copyWith =>
      __$$_CreateSupplierModelCopyWithImpl<_$_CreateSupplierModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSupplierModelToJson(
      this,
    );
  }
}

abstract class _CreateSupplierModel implements CreateSupplierModel {
  const factory _CreateSupplierModel({final String? name}) =
      _$_CreateSupplierModel;

  factory _CreateSupplierModel.fromJson(Map<String, dynamic> json) =
      _$_CreateSupplierModel.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSupplierModelCopyWith<_$_CreateSupplierModel> get copyWith =>
      throw _privateConstructorUsedError;
}
