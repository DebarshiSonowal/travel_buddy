// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeatResponse _$SeatResponseFromJson(Map<String, dynamic> json) {
  return _SeatResponse.fromJson(json);
}

/// @nodoc
mixin _$SeatResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Seat> get seats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatResponseCopyWith<SeatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatResponseCopyWith<$Res> {
  factory $SeatResponseCopyWith(
          SeatResponse value, $Res Function(SeatResponse) then) =
      _$SeatResponseCopyWithImpl<$Res, SeatResponse>;
  @useResult
  $Res call({bool success, String? message, List<Seat> seats});
}

/// @nodoc
class _$SeatResponseCopyWithImpl<$Res, $Val extends SeatResponse>
    implements $SeatResponseCopyWith<$Res> {
  _$SeatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? seats = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeatResponseCopyWith<$Res>
    implements $SeatResponseCopyWith<$Res> {
  factory _$$_SeatResponseCopyWith(
          _$_SeatResponse value, $Res Function(_$_SeatResponse) then) =
      __$$_SeatResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, List<Seat> seats});
}

/// @nodoc
class __$$_SeatResponseCopyWithImpl<$Res>
    extends _$SeatResponseCopyWithImpl<$Res, _$_SeatResponse>
    implements _$$_SeatResponseCopyWith<$Res> {
  __$$_SeatResponseCopyWithImpl(
      _$_SeatResponse _value, $Res Function(_$_SeatResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? seats = null,
  }) {
    return _then(_$_SeatResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeatResponse implements _SeatResponse {
  const _$_SeatResponse(
      {this.success = false,
      required this.message,
      final List<Seat> seats = const []})
      : _seats = seats;

  factory _$_SeatResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SeatResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  final List<Seat> _seats;
  @override
  @JsonKey()
  List<Seat> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  @override
  String toString() {
    return 'SeatResponse(success: $success, message: $message, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeatResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_seats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeatResponseCopyWith<_$_SeatResponse> get copyWith =>
      __$$_SeatResponseCopyWithImpl<_$_SeatResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeatResponseToJson(
      this,
    );
  }
}

abstract class _SeatResponse implements SeatResponse {
  const factory _SeatResponse(
      {final bool success,
      required final String? message,
      final List<Seat> seats}) = _$_SeatResponse;

  factory _SeatResponse.fromJson(Map<String, dynamic> json) =
      _$_SeatResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<Seat> get seats;
  @override
  @JsonKey(ignore: true)
  _$$_SeatResponseCopyWith<_$_SeatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
