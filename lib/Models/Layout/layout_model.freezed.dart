// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LayoutModel _$LayoutModelFromJson(Map<String, dynamic> json) {
  return _LayoutModel.fromJson(json);
}

/// @nodoc
mixin _$LayoutModel {
  int? get row => throw _privateConstructorUsedError;
  int? get column => throw _privateConstructorUsedError;
  bool? get is_seat => throw _privateConstructorUsedError;
  String? get seat_status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayoutModelCopyWith<LayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutModelCopyWith<$Res> {
  factory $LayoutModelCopyWith(
          LayoutModel value, $Res Function(LayoutModel) then) =
      _$LayoutModelCopyWithImpl<$Res, LayoutModel>;
  @useResult
  $Res call(
      {int? row,
      int? column,
      bool? is_seat,
      String? seat_status,
      String? image,
      String? label});
}

/// @nodoc
class _$LayoutModelCopyWithImpl<$Res, $Val extends LayoutModel>
    implements $LayoutModelCopyWith<$Res> {
  _$LayoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
    Object? is_seat = freezed,
    Object? seat_status = freezed,
    Object? image = freezed,
    Object? label = freezed,
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
      is_seat: freezed == is_seat
          ? _value.is_seat
          : is_seat // ignore: cast_nullable_to_non_nullable
              as bool?,
      seat_status: freezed == seat_status
          ? _value.seat_status
          : seat_status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LayoutModelCopyWith<$Res>
    implements $LayoutModelCopyWith<$Res> {
  factory _$$_LayoutModelCopyWith(
          _$_LayoutModel value, $Res Function(_$_LayoutModel) then) =
      __$$_LayoutModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? row,
      int? column,
      bool? is_seat,
      String? seat_status,
      String? image,
      String? label});
}

/// @nodoc
class __$$_LayoutModelCopyWithImpl<$Res>
    extends _$LayoutModelCopyWithImpl<$Res, _$_LayoutModel>
    implements _$$_LayoutModelCopyWith<$Res> {
  __$$_LayoutModelCopyWithImpl(
      _$_LayoutModel _value, $Res Function(_$_LayoutModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
    Object? is_seat = freezed,
    Object? seat_status = freezed,
    Object? image = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_LayoutModel(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
      is_seat: freezed == is_seat
          ? _value.is_seat
          : is_seat // ignore: cast_nullable_to_non_nullable
              as bool?,
      seat_status: freezed == seat_status
          ? _value.seat_status
          : seat_status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LayoutModel implements _LayoutModel {
  const _$_LayoutModel(
      {required this.row,
      required this.column,
      required this.is_seat,
      required this.seat_status,
      required this.image,
      required this.label});

  factory _$_LayoutModel.fromJson(Map<String, dynamic> json) =>
      _$$_LayoutModelFromJson(json);

  @override
  final int? row;
  @override
  final int? column;
  @override
  final bool? is_seat;
  @override
  final String? seat_status;
  @override
  final String? image;
  @override
  final String? label;

  @override
  String toString() {
    return 'LayoutModel(row: $row, column: $column, is_seat: $is_seat, seat_status: $seat_status, image: $image, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LayoutModel &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.is_seat, is_seat) || other.is_seat == is_seat) &&
            (identical(other.seat_status, seat_status) ||
                other.seat_status == seat_status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, row, column, is_seat, seat_status, image, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LayoutModelCopyWith<_$_LayoutModel> get copyWith =>
      __$$_LayoutModelCopyWithImpl<_$_LayoutModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LayoutModelToJson(
      this,
    );
  }
}

abstract class _LayoutModel implements LayoutModel {
  const factory _LayoutModel(
      {required final int? row,
      required final int? column,
      required final bool? is_seat,
      required final String? seat_status,
      required final String? image,
      required final String? label}) = _$_LayoutModel;

  factory _LayoutModel.fromJson(Map<String, dynamic> json) =
      _$_LayoutModel.fromJson;

  @override
  int? get row;
  @override
  int? get column;
  @override
  bool? get is_seat;
  @override
  String? get seat_status;
  @override
  String? get image;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$_LayoutModelCopyWith<_$_LayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}
