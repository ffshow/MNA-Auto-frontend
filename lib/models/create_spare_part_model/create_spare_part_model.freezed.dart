// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_spare_part_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSparePartModel _$CreateSparePartModelFromJson(Map<String, dynamic> json) {
  return _CreateSparePartModel.fromJson(json);
}

/// @nodoc
mixin _$CreateSparePartModel {
  String get barcode => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSparePartModelCopyWith<CreateSparePartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSparePartModelCopyWith<$Res> {
  factory $CreateSparePartModelCopyWith(CreateSparePartModel value,
          $Res Function(CreateSparePartModel) then) =
      _$CreateSparePartModelCopyWithImpl<$Res, CreateSparePartModel>;
  @useResult
  $Res call({String barcode, String reference});
}

/// @nodoc
class _$CreateSparePartModelCopyWithImpl<$Res,
        $Val extends CreateSparePartModel>
    implements $CreateSparePartModelCopyWith<$Res> {
  _$CreateSparePartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? reference = null,
  }) {
    return _then(_value.copyWith(
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateSparePartModelCopyWith<$Res>
    implements $CreateSparePartModelCopyWith<$Res> {
  factory _$$_CreateSparePartModelCopyWith(_$_CreateSparePartModel value,
          $Res Function(_$_CreateSparePartModel) then) =
      __$$_CreateSparePartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String barcode, String reference});
}

/// @nodoc
class __$$_CreateSparePartModelCopyWithImpl<$Res>
    extends _$CreateSparePartModelCopyWithImpl<$Res, _$_CreateSparePartModel>
    implements _$$_CreateSparePartModelCopyWith<$Res> {
  __$$_CreateSparePartModelCopyWithImpl(_$_CreateSparePartModel _value,
      $Res Function(_$_CreateSparePartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
    Object? reference = null,
  }) {
    return _then(_$_CreateSparePartModel(
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
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
class _$_CreateSparePartModel implements _CreateSparePartModel {
  const _$_CreateSparePartModel(
      {required this.barcode, required this.reference});

  factory _$_CreateSparePartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSparePartModelFromJson(json);

  @override
  final String barcode;
  @override
  final String reference;

  @override
  String toString() {
    return 'CreateSparePartModel(barcode: $barcode, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSparePartModel &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, barcode, reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateSparePartModelCopyWith<_$_CreateSparePartModel> get copyWith =>
      __$$_CreateSparePartModelCopyWithImpl<_$_CreateSparePartModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSparePartModelToJson(
      this,
    );
  }
}

abstract class _CreateSparePartModel implements CreateSparePartModel {
  const factory _CreateSparePartModel(
      {required final String barcode,
      required final String reference}) = _$_CreateSparePartModel;

  factory _CreateSparePartModel.fromJson(Map<String, dynamic> json) =
      _$_CreateSparePartModel.fromJson;

  @override
  String get barcode;
  @override
  String get reference;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSparePartModelCopyWith<_$_CreateSparePartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
