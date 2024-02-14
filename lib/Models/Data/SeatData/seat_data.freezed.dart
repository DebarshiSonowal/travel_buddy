// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeatData _$SeatDataFromJson(Map<String, dynamic> json) {
  return _SeatData.fromJson(json);
}

/// @nodoc
mixin _$SeatData {
  int get trip_tickets_seat_id => throw _privateConstructorUsedError;
  String get seat_no => throw _privateConstructorUsedError;
  String get passenger_name => throw _privateConstructorUsedError;
  String get passenger_contact => throw _privateConstructorUsedError;
  String get is_insured => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatDataCopyWith<SeatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatDataCopyWith<$Res> {
  factory $SeatDataCopyWith(SeatData value, $Res Function(SeatData) then) =
      _$SeatDataCopyWithImpl<$Res, SeatData>;
  @useResult
  $Res call(
      {int trip_tickets_seat_id,
      String seat_no,
      String passenger_name,
      String passenger_contact,
      String is_insured});
}

/// @nodoc
class _$SeatDataCopyWithImpl<$Res, $Val extends SeatData>
    implements $SeatDataCopyWith<$Res> {
  _$SeatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip_tickets_seat_id = null,
    Object? seat_no = null,
    Object? passenger_name = null,
    Object? passenger_contact = null,
    Object? is_insured = null,
  }) {
    return _then(_value.copyWith(
      trip_tickets_seat_id: null == trip_tickets_seat_id
          ? _value.trip_tickets_seat_id
          : trip_tickets_seat_id // ignore: cast_nullable_to_non_nullable
              as int,
      seat_no: null == seat_no
          ? _value.seat_no
          : seat_no // ignore: cast_nullable_to_non_nullable
              as String,
      passenger_name: null == passenger_name
          ? _value.passenger_name
          : passenger_name // ignore: cast_nullable_to_non_nullable
              as String,
      passenger_contact: null == passenger_contact
          ? _value.passenger_contact
          : passenger_contact // ignore: cast_nullable_to_non_nullable
              as String,
      is_insured: null == is_insured
          ? _value.is_insured
          : is_insured // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeatDataCopyWith<$Res> implements $SeatDataCopyWith<$Res> {
  factory _$$_SeatDataCopyWith(
          _$_SeatData value, $Res Function(_$_SeatData) then) =
      __$$_SeatDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int trip_tickets_seat_id,
      String seat_no,
      String passenger_name,
      String passenger_contact,
      String is_insured});
}

/// @nodoc
class __$$_SeatDataCopyWithImpl<$Res>
    extends _$SeatDataCopyWithImpl<$Res, _$_SeatData>
    implements _$$_SeatDataCopyWith<$Res> {
  __$$_SeatDataCopyWithImpl(
      _$_SeatData _value, $Res Function(_$_SeatData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip_tickets_seat_id = null,
    Object? seat_no = null,
    Object? passenger_name = null,
    Object? passenger_contact = null,
    Object? is_insured = null,
  }) {
    return _then(_$_SeatData(
      trip_tickets_seat_id: null == trip_tickets_seat_id
          ? _value.trip_tickets_seat_id
          : trip_tickets_seat_id // ignore: cast_nullable_to_non_nullable
              as int,
      seat_no: null == seat_no
          ? _value.seat_no
          : seat_no // ignore: cast_nullable_to_non_nullable
              as String,
      passenger_name: null == passenger_name
          ? _value.passenger_name
          : passenger_name // ignore: cast_nullable_to_non_nullable
              as String,
      passenger_contact: null == passenger_contact
          ? _value.passenger_contact
          : passenger_contact // ignore: cast_nullable_to_non_nullable
              as String,
      is_insured: null == is_insured
          ? _value.is_insured
          : is_insured // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeatData implements _SeatData {
  const _$_SeatData(
      {this.trip_tickets_seat_id = 0,
      this.seat_no = "",
      this.passenger_name = "",
      this.passenger_contact = "",
      this.is_insured = ""});

  factory _$_SeatData.fromJson(Map<String, dynamic> json) =>
      _$$_SeatDataFromJson(json);

  @override
  @JsonKey()
  final int trip_tickets_seat_id;
  @override
  @JsonKey()
  final String seat_no;
  @override
  @JsonKey()
  final String passenger_name;
  @override
  @JsonKey()
  final String passenger_contact;
  @override
  @JsonKey()
  final String is_insured;

  @override
  String toString() {
    return 'SeatData(trip_tickets_seat_id: $trip_tickets_seat_id, seat_no: $seat_no, passenger_name: $passenger_name, passenger_contact: $passenger_contact, is_insured: $is_insured)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeatData &&
            (identical(other.trip_tickets_seat_id, trip_tickets_seat_id) ||
                other.trip_tickets_seat_id == trip_tickets_seat_id) &&
            (identical(other.seat_no, seat_no) || other.seat_no == seat_no) &&
            (identical(other.passenger_name, passenger_name) ||
                other.passenger_name == passenger_name) &&
            (identical(other.passenger_contact, passenger_contact) ||
                other.passenger_contact == passenger_contact) &&
            (identical(other.is_insured, is_insured) ||
                other.is_insured == is_insured));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, trip_tickets_seat_id, seat_no,
      passenger_name, passenger_contact, is_insured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeatDataCopyWith<_$_SeatData> get copyWith =>
      __$$_SeatDataCopyWithImpl<_$_SeatData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeatDataToJson(
      this,
    );
  }
}

abstract class _SeatData implements SeatData {
  const factory _SeatData(
      {final int trip_tickets_seat_id,
      final String seat_no,
      final String passenger_name,
      final String passenger_contact,
      final String is_insured}) = _$_SeatData;

  factory _SeatData.fromJson(Map<String, dynamic> json) = _$_SeatData.fromJson;

  @override
  int get trip_tickets_seat_id;
  @override
  String get seat_no;
  @override
  String get passenger_name;
  @override
  String get passenger_contact;
  @override
  String get is_insured;
  @override
  @JsonKey(ignore: true)
  _$$_SeatDataCopyWith<_$_SeatData> get copyWith =>
      throw _privateConstructorUsedError;
}
