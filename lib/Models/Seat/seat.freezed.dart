// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Seat _$SeatFromJson(Map<String, dynamic> json) {
  return _Seat.fromJson(json);
}

/// @nodoc
mixin _$Seat {
  int? get row => throw _privateConstructorUsedError;
  int? get column => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res, Seat>;
  @useResult
  $Res call({int? row, int? column});
}

/// @nodoc
class _$SeatCopyWithImpl<$Res, $Val extends Seat>
    implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_value.copyWith(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeatCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$$_SeatCopyWith(_$_Seat value, $Res Function(_$_Seat) then) =
      __$$_SeatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? row, int? column});
}

/// @nodoc
class __$$_SeatCopyWithImpl<$Res> extends _$SeatCopyWithImpl<$Res, _$_Seat>
    implements _$$_SeatCopyWith<$Res> {
  __$$_SeatCopyWithImpl(_$_Seat _value, $Res Function(_$_Seat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_$_Seat(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Seat implements _Seat {
  const _$_Seat({required this.row, required this.column});

  factory _$_Seat.fromJson(Map<String, dynamic> json) => _$$_SeatFromJson(json);

  @override
  final int? row;
  @override
  final int? column;

  @override
  String toString() {
    return 'Seat(row: $row, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Seat &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, row, column);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeatCopyWith<_$_Seat> get copyWith =>
      __$$_SeatCopyWithImpl<_$_Seat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeatToJson(
      this,
    );
  }
}

abstract class _Seat implements Seat {
  const factory _Seat({required final int? row, required final int? column}) =
      _$_Seat;

  factory _Seat.fromJson(Map<String, dynamic> json) = _$_Seat.fromJson;

  @override
  int? get row;
  @override
  int? get column;
  @override
  @JsonKey(ignore: true)
  _$$_SeatCopyWith<_$_Seat> get copyWith => throw _privateConstructorUsedError;
}
