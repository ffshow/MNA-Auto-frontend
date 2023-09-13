// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return _VehicleModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleModel {
  String? get current_status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get registration => throw _privateConstructorUsedError;
  String get serial_number => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  DateTime get delivery_date => throw _privateConstructorUsedError;
  int get mileage => throw _privateConstructorUsedError;
  String get owner_id => throw _privateConstructorUsedError;
  String? get chrono => throw _privateConstructorUsedError;
  DateTime get collection_date => throw _privateConstructorUsedError;
  String get commercial_name => throw _privateConstructorUsedError;
  bool get expertise => throw _privateConstructorUsedError;
  DateTime get first_circulation => throw _privateConstructorUsedError;
  bool get procedure_ve => throw _privateConstructorUsedError;
  DateTime get sold_at => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  dynamic get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelCopyWith<VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelCopyWith<$Res> {
  factory $VehicleModelCopyWith(
          VehicleModel value, $Res Function(VehicleModel) then) =
      _$VehicleModelCopyWithImpl<$Res, VehicleModel>;
  @useResult
  $Res call(
      {String? current_status,
      String id,
      String note,
      String registration,
      String serial_number,
      DateTime updated_at,
      DateTime delivery_date,
      int mileage,
      String owner_id,
      String? chrono,
      DateTime collection_date,
      String commercial_name,
      bool expertise,
      DateTime first_circulation,
      bool procedure_ve,
      DateTime sold_at,
      DateTime created_at,
      dynamic info});
}

/// @nodoc
class _$VehicleModelCopyWithImpl<$Res, $Val extends VehicleModel>
    implements $VehicleModelCopyWith<$Res> {
  _$VehicleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_status = freezed,
    Object? id = null,
    Object? note = null,
    Object? registration = null,
    Object? serial_number = null,
    Object? updated_at = null,
    Object? delivery_date = null,
    Object? mileage = null,
    Object? owner_id = null,
    Object? chrono = freezed,
    Object? collection_date = null,
    Object? commercial_name = null,
    Object? expertise = null,
    Object? first_circulation = null,
    Object? procedure_ve = null,
    Object? sold_at = null,
    Object? created_at = null,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      current_status: freezed == current_status
          ? _value.current_status
          : current_status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
      serial_number: null == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      delivery_date: null == delivery_date
          ? _value.delivery_date
          : delivery_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mileage: null == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int,
      owner_id: null == owner_id
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as String,
      chrono: freezed == chrono
          ? _value.chrono
          : chrono // ignore: cast_nullable_to_non_nullable
              as String?,
      collection_date: null == collection_date
          ? _value.collection_date
          : collection_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commercial_name: null == commercial_name
          ? _value.commercial_name
          : commercial_name // ignore: cast_nullable_to_non_nullable
              as String,
      expertise: null == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as bool,
      first_circulation: null == first_circulation
          ? _value.first_circulation
          : first_circulation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      procedure_ve: null == procedure_ve
          ? _value.procedure_ve
          : procedure_ve // ignore: cast_nullable_to_non_nullable
              as bool,
      sold_at: null == sold_at
          ? _value.sold_at
          : sold_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleModelCopyWith<$Res>
    implements $VehicleModelCopyWith<$Res> {
  factory _$$_VehicleModelCopyWith(
          _$_VehicleModel value, $Res Function(_$_VehicleModel) then) =
      __$$_VehicleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? current_status,
      String id,
      String note,
      String registration,
      String serial_number,
      DateTime updated_at,
      DateTime delivery_date,
      int mileage,
      String owner_id,
      String? chrono,
      DateTime collection_date,
      String commercial_name,
      bool expertise,
      DateTime first_circulation,
      bool procedure_ve,
      DateTime sold_at,
      DateTime created_at,
      dynamic info});
}

/// @nodoc
class __$$_VehicleModelCopyWithImpl<$Res>
    extends _$VehicleModelCopyWithImpl<$Res, _$_VehicleModel>
    implements _$$_VehicleModelCopyWith<$Res> {
  __$$_VehicleModelCopyWithImpl(
      _$_VehicleModel _value, $Res Function(_$_VehicleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_status = freezed,
    Object? id = null,
    Object? note = null,
    Object? registration = null,
    Object? serial_number = null,
    Object? updated_at = null,
    Object? delivery_date = null,
    Object? mileage = null,
    Object? owner_id = null,
    Object? chrono = freezed,
    Object? collection_date = null,
    Object? commercial_name = null,
    Object? expertise = null,
    Object? first_circulation = null,
    Object? procedure_ve = null,
    Object? sold_at = null,
    Object? created_at = null,
    Object? info = freezed,
  }) {
    return _then(_$_VehicleModel(
      current_status: freezed == current_status
          ? _value.current_status
          : current_status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      registration: null == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String,
      serial_number: null == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      delivery_date: null == delivery_date
          ? _value.delivery_date
          : delivery_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mileage: null == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int,
      owner_id: null == owner_id
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as String,
      chrono: freezed == chrono
          ? _value.chrono
          : chrono // ignore: cast_nullable_to_non_nullable
              as String?,
      collection_date: null == collection_date
          ? _value.collection_date
          : collection_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commercial_name: null == commercial_name
          ? _value.commercial_name
          : commercial_name // ignore: cast_nullable_to_non_nullable
              as String,
      expertise: null == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as bool,
      first_circulation: null == first_circulation
          ? _value.first_circulation
          : first_circulation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      procedure_ve: null == procedure_ve
          ? _value.procedure_ve
          : procedure_ve // ignore: cast_nullable_to_non_nullable
              as bool,
      sold_at: null == sold_at
          ? _value.sold_at
          : sold_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleModel implements _VehicleModel {
  const _$_VehicleModel(
      {this.current_status = null,
      required this.id,
      required this.note,
      required this.registration,
      required this.serial_number,
      required this.updated_at,
      required this.delivery_date,
      required this.mileage,
      required this.owner_id,
      this.chrono = null,
      required this.collection_date,
      required this.commercial_name,
      this.expertise = false,
      required this.first_circulation,
      this.procedure_ve = false,
      required this.sold_at,
      required this.created_at,
      required this.info});

  factory _$_VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleModelFromJson(json);

  @override
  @JsonKey()
  final String? current_status;
  @override
  final String id;
  @override
  final String note;
  @override
  final String registration;
  @override
  final String serial_number;
  @override
  final DateTime updated_at;
  @override
  final DateTime delivery_date;
  @override
  final int mileage;
  @override
  final String owner_id;
  @override
  @JsonKey()
  final String? chrono;
  @override
  final DateTime collection_date;
  @override
  final String commercial_name;
  @override
  @JsonKey()
  final bool expertise;
  @override
  final DateTime first_circulation;
  @override
  @JsonKey()
  final bool procedure_ve;
  @override
  final DateTime sold_at;
  @override
  final DateTime created_at;
  @override
  final dynamic info;

  @override
  String toString() {
    return 'VehicleModel(current_status: $current_status, id: $id, note: $note, registration: $registration, serial_number: $serial_number, updated_at: $updated_at, delivery_date: $delivery_date, mileage: $mileage, owner_id: $owner_id, chrono: $chrono, collection_date: $collection_date, commercial_name: $commercial_name, expertise: $expertise, first_circulation: $first_circulation, procedure_ve: $procedure_ve, sold_at: $sold_at, created_at: $created_at, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleModel &&
            (identical(other.current_status, current_status) ||
                other.current_status == current_status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.serial_number, serial_number) ||
                other.serial_number == serial_number) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.delivery_date, delivery_date) ||
                other.delivery_date == delivery_date) &&
            (identical(other.mileage, mileage) || other.mileage == mileage) &&
            (identical(other.owner_id, owner_id) ||
                other.owner_id == owner_id) &&
            (identical(other.chrono, chrono) || other.chrono == chrono) &&
            (identical(other.collection_date, collection_date) ||
                other.collection_date == collection_date) &&
            (identical(other.commercial_name, commercial_name) ||
                other.commercial_name == commercial_name) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            (identical(other.first_circulation, first_circulation) ||
                other.first_circulation == first_circulation) &&
            (identical(other.procedure_ve, procedure_ve) ||
                other.procedure_ve == procedure_ve) &&
            (identical(other.sold_at, sold_at) || other.sold_at == sold_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      current_status,
      id,
      note,
      registration,
      serial_number,
      updated_at,
      delivery_date,
      mileage,
      owner_id,
      chrono,
      collection_date,
      commercial_name,
      expertise,
      first_circulation,
      procedure_ve,
      sold_at,
      created_at,
      const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      __$$_VehicleModelCopyWithImpl<_$_VehicleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleModelToJson(
      this,
    );
  }
}

abstract class _VehicleModel implements VehicleModel {
  const factory _VehicleModel(
      {final String? current_status,
      required final String id,
      required final String note,
      required final String registration,
      required final String serial_number,
      required final DateTime updated_at,
      required final DateTime delivery_date,
      required final int mileage,
      required final String owner_id,
      final String? chrono,
      required final DateTime collection_date,
      required final String commercial_name,
      final bool expertise,
      required final DateTime first_circulation,
      final bool procedure_ve,
      required final DateTime sold_at,
      required final DateTime created_at,
      required final dynamic info}) = _$_VehicleModel;

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleModel.fromJson;

  @override
  String? get current_status;
  @override
  String get id;
  @override
  String get note;
  @override
  String get registration;
  @override
  String get serial_number;
  @override
  DateTime get updated_at;
  @override
  DateTime get delivery_date;
  @override
  int get mileage;
  @override
  String get owner_id;
  @override
  String? get chrono;
  @override
  DateTime get collection_date;
  @override
  String get commercial_name;
  @override
  bool get expertise;
  @override
  DateTime get first_circulation;
  @override
  bool get procedure_ve;
  @override
  DateTime get sold_at;
  @override
  DateTime get created_at;
  @override
  dynamic get info;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
