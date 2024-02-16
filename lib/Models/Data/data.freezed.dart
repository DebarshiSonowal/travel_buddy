// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomSeatData _$CustomSeatDataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$CustomSeatData {
  int get ticket_id => throw _privateConstructorUsedError;
  String get ticket_number => throw _privateConstructorUsedError;
  int get total_amount => throw _privateConstructorUsedError;
  int get gst => throw _privateConstructorUsedError;
  int get platform_charge => throw _privateConstructorUsedError;
  String get timeout_time => throw _privateConstructorUsedError;
  String get fair => throw _privateConstructorUsedError;
  String get insurance_charge => throw _privateConstructorUsedError;
  CustomCounter? get counter_info => throw _privateConstructorUsedError;
  List<SeatData> get seats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomSeatDataCopyWith<CustomSeatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomSeatDataCopyWith<$Res> {
  factory $CustomSeatDataCopyWith(
          CustomSeatData value, $Res Function(CustomSeatData) then) =
      _$CustomSeatDataCopyWithImpl<$Res, CustomSeatData>;
  @useResult
  $Res call(
      {int ticket_id,
      String ticket_number,
      int total_amount,
      int gst,
      int platform_charge,
      String timeout_time,
      String fair,
      String insurance_charge,
      CustomCounter? counter_info,
      List<SeatData> seats});

  $CustomCounterCopyWith<$Res>? get counter_info;
}

/// @nodoc
class _$CustomSeatDataCopyWithImpl<$Res, $Val extends CustomSeatData>
    implements $CustomSeatDataCopyWith<$Res> {
  _$CustomSeatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = null,
    Object? ticket_number = null,
    Object? total_amount = null,
    Object? gst = null,
    Object? platform_charge = null,
    Object? timeout_time = null,
    Object? fair = null,
    Object? insurance_charge = null,
    Object? counter_info = freezed,
    Object? seats = null,
  }) {
    return _then(_value.copyWith(
      ticket_id: null == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as int,
      ticket_number: null == ticket_number
          ? _value.ticket_number
          : ticket_number // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int,
      gst: null == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as int,
      platform_charge: null == platform_charge
          ? _value.platform_charge
          : platform_charge // ignore: cast_nullable_to_non_nullable
              as int,
      timeout_time: null == timeout_time
          ? _value.timeout_time
          : timeout_time // ignore: cast_nullable_to_non_nullable
              as String,
      fair: null == fair
          ? _value.fair
          : fair // ignore: cast_nullable_to_non_nullable
              as String,
      insurance_charge: null == insurance_charge
          ? _value.insurance_charge
          : insurance_charge // ignore: cast_nullable_to_non_nullable
              as String,
      counter_info: freezed == counter_info
          ? _value.counter_info
          : counter_info // ignore: cast_nullable_to_non_nullable
              as CustomCounter?,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomCounterCopyWith<$Res>? get counter_info {
    if (_value.counter_info == null) {
      return null;
    }

    return $CustomCounterCopyWith<$Res>(_value.counter_info!, (value) {
      return _then(_value.copyWith(counter_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $CustomSeatDataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ticket_id,
      String ticket_number,
      int total_amount,
      int gst,
      int platform_charge,
      String timeout_time,
      String fair,
      String insurance_charge,
      CustomCounter? counter_info,
      List<SeatData> seats});

  @override
  $CustomCounterCopyWith<$Res>? get counter_info;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$CustomSeatDataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = null,
    Object? ticket_number = null,
    Object? total_amount = null,
    Object? gst = null,
    Object? platform_charge = null,
    Object? timeout_time = null,
    Object? fair = null,
    Object? insurance_charge = null,
    Object? counter_info = freezed,
    Object? seats = null,
  }) {
    return _then(_$_Data(
      ticket_id: null == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as int,
      ticket_number: null == ticket_number
          ? _value.ticket_number
          : ticket_number // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int,
      gst: null == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as int,
      platform_charge: null == platform_charge
          ? _value.platform_charge
          : platform_charge // ignore: cast_nullable_to_non_nullable
              as int,
      timeout_time: null == timeout_time
          ? _value.timeout_time
          : timeout_time // ignore: cast_nullable_to_non_nullable
              as String,
      fair: null == fair
          ? _value.fair
          : fair // ignore: cast_nullable_to_non_nullable
              as String,
      insurance_charge: null == insurance_charge
          ? _value.insurance_charge
          : insurance_charge // ignore: cast_nullable_to_non_nullable
              as String,
      counter_info: freezed == counter_info
          ? _value.counter_info
          : counter_info // ignore: cast_nullable_to_non_nullable
              as CustomCounter?,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.ticket_id = 0,
      this.ticket_number = "",
      this.total_amount = 0,
      this.gst = 0,
      this.platform_charge = 0,
      this.timeout_time = '0',
      this.fair = '0',
      this.insurance_charge = '0',
      this.counter_info,
      final List<SeatData> seats = const []})
      : _seats = seats;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey()
  final int ticket_id;
  @override
  @JsonKey()
  final String ticket_number;
  @override
  @JsonKey()
  final int total_amount;
  @override
  @JsonKey()
  final int gst;
  @override
  @JsonKey()
  final int platform_charge;
  @override
  @JsonKey()
  final String timeout_time;
  @override
  @JsonKey()
  final String fair;
  @override
  @JsonKey()
  final String insurance_charge;
  @override
  final CustomCounter? counter_info;
  final List<SeatData> _seats;
  @override
  @JsonKey()
  List<SeatData> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  @override
  String toString() {
    return 'CustomSeatData(ticket_id: $ticket_id, ticket_number: $ticket_number, total_amount: $total_amount, gst: $gst, platform_charge: $platform_charge, timeout_time: $timeout_time, fair: $fair, insurance_charge: $insurance_charge, counter_info: $counter_info, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.ticket_id, ticket_id) ||
                other.ticket_id == ticket_id) &&
            (identical(other.ticket_number, ticket_number) ||
                other.ticket_number == ticket_number) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.platform_charge, platform_charge) ||
                other.platform_charge == platform_charge) &&
            (identical(other.timeout_time, timeout_time) ||
                other.timeout_time == timeout_time) &&
            (identical(other.fair, fair) || other.fair == fair) &&
            (identical(other.insurance_charge, insurance_charge) ||
                other.insurance_charge == insurance_charge) &&
            (identical(other.counter_info, counter_info) ||
                other.counter_info == counter_info) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ticket_id,
      ticket_number,
      total_amount,
      gst,
      platform_charge,
      timeout_time,
      fair,
      insurance_charge,
      counter_info,
      const DeepCollectionEquality().hash(_seats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements CustomSeatData {
  const factory _Data(
      {final int ticket_id,
      final String ticket_number,
      final int total_amount,
      final int gst,
      final int platform_charge,
      final String timeout_time,
      final String fair,
      final String insurance_charge,
      final CustomCounter? counter_info,
      final List<SeatData> seats}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int get ticket_id;
  @override
  String get ticket_number;
  @override
  int get total_amount;
  @override
  int get gst;
  @override
  int get platform_charge;
  @override
  String get timeout_time;
  @override
  String get fair;
  @override
  String get insurance_charge;
  @override
  CustomCounter? get counter_info;
  @override
  List<SeatData> get seats;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
