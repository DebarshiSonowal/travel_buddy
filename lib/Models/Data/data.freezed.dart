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

CustomSeatData _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$CustomSeatData {
  int get ticket_id => throw _privateConstructorUsedError;
  String get ticket_number => throw _privateConstructorUsedError;
  int get total_amount => throw _privateConstructorUsedError;
  int get gst => throw _privateConstructorUsedError;
  String get timeout_time => throw _privateConstructorUsedError;
  List<CustomSeatData> get seatData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<CustomSeatData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(CustomSeatData value, $Res Function(CustomSeatData) then) =
      _$DataCopyWithImpl<$Res, CustomSeatData>;
  @useResult
  $Res call(
      {int ticket_id,
      String ticket_number,
      int total_amount,
      int gst,
      String timeout_time,
      List<CustomSeatData> seatData});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends CustomSeatData>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

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
    Object? timeout_time = null,
    Object? seatData = null,
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
      timeout_time: null == timeout_time
          ? _value.timeout_time
          : timeout_time // ignore: cast_nullable_to_non_nullable
              as String,
      seatData: null == seatData
          ? _value.seatData
          : seatData // ignore: cast_nullable_to_non_nullable
              as List<CustomSeatData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ticket_id,
      String ticket_number,
      int total_amount,
      int gst,
      String timeout_time,
      List<CustomSeatData> seatData});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
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
    Object? timeout_time = null,
    Object? seatData = null,
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
      timeout_time: null == timeout_time
          ? _value.timeout_time
          : timeout_time // ignore: cast_nullable_to_non_nullable
              as String,
      seatData: null == seatData
          ? _value._seatData
          : seatData // ignore: cast_nullable_to_non_nullable
              as List<CustomSeatData>,
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
      this.timeout_time = '0',
      final List<CustomSeatData> seatData = const []})
      : _seatData = seatData;

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
  final String timeout_time;
  final List<CustomSeatData> _seatData;
  @override
  @JsonKey()
  List<CustomSeatData> get seatData {
    if (_seatData is EqualUnmodifiableListView) return _seatData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatData);
  }

  @override
  String toString() {
    return 'Data(ticket_id: $ticket_id, ticket_number: $ticket_number, total_amount: $total_amount, gst: $gst, timeout_time: $timeout_time, seatData: $seatData)';
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
            (identical(other.timeout_time, timeout_time) ||
                other.timeout_time == timeout_time) &&
            const DeepCollectionEquality().equals(other._seatData, _seatData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ticket_id,
      ticket_number,
      total_amount,
      gst,
      timeout_time,
      const DeepCollectionEquality().hash(_seatData));

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
      final String timeout_time,
      final List<CustomSeatData> seatData}) = _$_Data;

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
  String get timeout_time;
  @override
  List<CustomSeatData> get seatData;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
