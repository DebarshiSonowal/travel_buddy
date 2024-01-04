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
  String? get seat_selected => throw _privateConstructorUsedError;
  String? get seat_occupied => throw _privateConstructorUsedError;
  String? get seat_available => throw _privateConstructorUsedError;

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
      {String? seat_selected, String? seat_occupied, String? seat_available});
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
    Object? seat_selected = freezed,
    Object? seat_occupied = freezed,
    Object? seat_available = freezed,
  }) {
    return _then(_value.copyWith(
      seat_selected: freezed == seat_selected
          ? _value.seat_selected
          : seat_selected // ignore: cast_nullable_to_non_nullable
              as String?,
      seat_occupied: freezed == seat_occupied
          ? _value.seat_occupied
          : seat_occupied // ignore: cast_nullable_to_non_nullable
              as String?,
      seat_available: freezed == seat_available
          ? _value.seat_available
          : seat_available // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? seat_selected, String? seat_occupied, String? seat_available});
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
    Object? seat_selected = freezed,
    Object? seat_occupied = freezed,
    Object? seat_available = freezed,
  }) {
    return _then(_$_SeatData(
      seat_selected: freezed == seat_selected
          ? _value.seat_selected
          : seat_selected // ignore: cast_nullable_to_non_nullable
              as String?,
      seat_occupied: freezed == seat_occupied
          ? _value.seat_occupied
          : seat_occupied // ignore: cast_nullable_to_non_nullable
              as String?,
      seat_available: freezed == seat_available
          ? _value.seat_available
          : seat_available // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeatData implements _SeatData {
  const _$_SeatData(
      {required this.seat_selected,
      required this.seat_occupied,
      required this.seat_available});

  factory _$_SeatData.fromJson(Map<String, dynamic> json) =>
      _$$_SeatDataFromJson(json);

  @override
  final String? seat_selected;
  @override
  final String? seat_occupied;
  @override
  final String? seat_available;

  @override
  String toString() {
    return 'SeatData(seat_selected: $seat_selected, seat_occupied: $seat_occupied, seat_available: $seat_available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeatData &&
            (identical(other.seat_selected, seat_selected) ||
                other.seat_selected == seat_selected) &&
            (identical(other.seat_occupied, seat_occupied) ||
                other.seat_occupied == seat_occupied) &&
            (identical(other.seat_available, seat_available) ||
                other.seat_available == seat_available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, seat_selected, seat_occupied, seat_available);

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
      {required final String? seat_selected,
      required final String? seat_occupied,
      required final String? seat_available}) = _$_SeatData;

  factory _SeatData.fromJson(Map<String, dynamic> json) = _$_SeatData.fromJson;

  @override
  String? get seat_selected;
  @override
  String? get seat_occupied;
  @override
  String? get seat_available;
  @override
  @JsonKey(ignore: true)
  _$$_SeatDataCopyWith<_$_SeatData> get copyWith =>
      throw _privateConstructorUsedError;
}
