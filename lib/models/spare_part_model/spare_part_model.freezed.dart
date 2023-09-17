// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spare_part_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SparePartModel _$SparePartModelFromJson(Map<String, dynamic> json) {
  return _SparePartModel.fromJson(json);
}

/// @nodoc
mixin _$SparePartModel {
  DateTime get updated_at => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SparePartModelCopyWith<SparePartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SparePartModelCopyWith<$Res> {
  factory $SparePartModelCopyWith(
          SparePartModel value, $Res Function(SparePartModel) then) =
      _$SparePartModelCopyWithImpl<$Res, SparePartModel>;
  @useResult
  $Res call(
      {DateTime updated_at,
      String barcode,
      DateTime created_at,
      String id,
      String reference});
}

/// @nodoc
class _$SparePartModelCopyWithImpl<$Res, $Val extends SparePartModel>
    implements $SparePartModelCopyWith<$Res> {
  _$SparePartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updated_at = null,
    Object? barcode = null,
    Object? created_at = null,
    Object? id = null,
    Object? reference = null,
  }) {
    return _then(_value.copyWith(
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SparePartModelCopyWith<$Res>
    implements $SparePartModelCopyWith<$Res> {
  factory _$$_SparePartModelCopyWith(
          _$_SparePartModel value, $Res Function(_$_SparePartModel) then) =
      __$$_SparePartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime updated_at,
      String barcode,
      DateTime created_at,
      String id,
      String reference});
}

/// @nodoc
class __$$_SparePartModelCopyWithImpl<$Res>
    extends _$SparePartModelCopyWithImpl<$Res, _$_SparePartModel>
    implements _$$_SparePartModelCopyWith<$Res> {
  __$$_SparePartModelCopyWithImpl(
      _$_SparePartModel _value, $Res Function(_$_SparePartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updated_at = null,
    Object? barcode = null,
    Object? created_at = null,
    Object? id = null,
    Object? reference = null,
  }) {
    return _then(_$_SparePartModel(
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SparePartModel implements _SparePartModel {
  const _$_SparePartModel(
      {required this.updated_at,
      required this.barcode,
      required this.created_at,
      required this.id,
      required this.reference});

  factory _$_SparePartModel.fromJson(Map<String, dynamic> json) =>
      _$$_SparePartModelFromJson(json);

  @override
  final DateTime updated_at;
  @override
  final String barcode;
  @override
  final DateTime created_at;
  @override
  final String id;
  @override
  final String reference;

  @override
  String toString() {
    return 'SparePartModel(updated_at: $updated_at, barcode: $barcode, created_at: $created_at, id: $id, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SparePartModel &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, updated_at, barcode, created_at, id, reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SparePartModelCopyWith<_$_SparePartModel> get copyWith =>
      __$$_SparePartModelCopyWithImpl<_$_SparePartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SparePartModelToJson(
      this,
    );
  }
}

abstract class _SparePartModel implements SparePartModel {
  const factory _SparePartModel(
      {required final DateTime updated_at,
      required final String barcode,
      required final DateTime created_at,
      required final String id,
      required final String reference}) = _$_SparePartModel;

  factory _SparePartModel.fromJson(Map<String, dynamic> json) =
      _$_SparePartModel.fromJson;

  @override
  DateTime get updated_at;
  @override
  String get barcode;
  @override
  DateTime get created_at;
  @override
  String get id;
  @override
  String get reference;
  @override
  @JsonKey(ignore: true)
  _$$_SparePartModelCopyWith<_$_SparePartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
