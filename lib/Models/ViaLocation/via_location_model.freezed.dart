// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'via_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViaLocationModel _$ViaLocationModelFromJson(Map<String, dynamic> json) {
  return _ViaLocationModel.fromJson(json);
}

/// @nodoc
mixin _$ViaLocationModel {
  int? get is_board => throw _privateConstructorUsedError;
  String? get vialoc_id => throw _privateConstructorUsedError;
  String? get vialoc_name => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get reachtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViaLocationModelCopyWith<ViaLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViaLocationModelCopyWith<$Res> {
  factory $ViaLocationModelCopyWith(
          ViaLocationModel value, $Res Function(ViaLocationModel) then) =
      _$ViaLocationModelCopyWithImpl<$Res, ViaLocationModel>;
  @useResult
  $Res call(
      {int? is_board,
      String? vialoc_id,
      String? vialoc_name,
      String? long,
      String? lat,
      String? reachtime});
}

/// @nodoc
class _$ViaLocationModelCopyWithImpl<$Res, $Val extends ViaLocationModel>
    implements $ViaLocationModelCopyWith<$Res> {
  _$ViaLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_board = freezed,
    Object? vialoc_id = freezed,
    Object? vialoc_name = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? reachtime = freezed,
  }) {
    return _then(_value.copyWith(
      is_board: freezed == is_board
          ? _value.is_board
          : is_board // ignore: cast_nullable_to_non_nullable
              as int?,
      vialoc_id: freezed == vialoc_id
          ? _value.vialoc_id
          : vialoc_id // ignore: cast_nullable_to_non_nullable
              as String?,
      vialoc_name: freezed == vialoc_name
          ? _value.vialoc_name
          : vialoc_name // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      reachtime: freezed == reachtime
          ? _value.reachtime
          : reachtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViaLocationModelCopyWith<$Res>
    implements $ViaLocationModelCopyWith<$Res> {
  factory _$$_ViaLocationModelCopyWith(
          _$_ViaLocationModel value, $Res Function(_$_ViaLocationModel) then) =
      __$$_ViaLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? is_board,
      String? vialoc_id,
      String? vialoc_name,
      String? long,
      String? lat,
      String? reachtime});
}

/// @nodoc
class __$$_ViaLocationModelCopyWithImpl<$Res>
    extends _$ViaLocationModelCopyWithImpl<$Res, _$_ViaLocationModel>
    implements _$$_ViaLocationModelCopyWith<$Res> {
  __$$_ViaLocationModelCopyWithImpl(
      _$_ViaLocationModel _value, $Res Function(_$_ViaLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_board = freezed,
    Object? vialoc_id = freezed,
    Object? vialoc_name = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? reachtime = freezed,
  }) {
    return _then(_$_ViaLocationModel(
      is_board: freezed == is_board
          ? _value.is_board
          : is_board // ignore: cast_nullable_to_non_nullable
              as int?,
      vialoc_id: freezed == vialoc_id
          ? _value.vialoc_id
          : vialoc_id // ignore: cast_nullable_to_non_nullable
              as String?,
      vialoc_name: freezed == vialoc_name
          ? _value.vialoc_name
          : vialoc_name // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      reachtime: freezed == reachtime
          ? _value.reachtime
          : reachtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViaLocationModel implements _ViaLocationModel {
  const _$_ViaLocationModel(
      {required this.is_board,
      required this.vialoc_id,
      required this.vialoc_name,
      required this.long,
      required this.lat,
      required this.reachtime});

  factory _$_ViaLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ViaLocationModelFromJson(json);

  @override
  final int? is_board;
  @override
  final String? vialoc_id;
  @override
  final String? vialoc_name;
  @override
  final String? long;
  @override
  final String? lat;
  @override
  final String? reachtime;

  @override
  String toString() {
    return 'ViaLocationModel(is_board: $is_board, vialoc_id: $vialoc_id, vialoc_name: $vialoc_name, long: $long, lat: $lat, reachtime: $reachtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViaLocationModel &&
            (identical(other.is_board, is_board) ||
                other.is_board == is_board) &&
            (identical(other.vialoc_id, vialoc_id) ||
                other.vialoc_id == vialoc_id) &&
            (identical(other.vialoc_name, vialoc_name) ||
                other.vialoc_name == vialoc_name) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.reachtime, reachtime) ||
                other.reachtime == reachtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, is_board, vialoc_id, vialoc_name, long, lat, reachtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViaLocationModelCopyWith<_$_ViaLocationModel> get copyWith =>
      __$$_ViaLocationModelCopyWithImpl<_$_ViaLocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViaLocationModelToJson(
      this,
    );
  }
}

abstract class _ViaLocationModel implements ViaLocationModel {
  const factory _ViaLocationModel(
      {required final int? is_board,
      required final String? vialoc_id,
      required final String? vialoc_name,
      required final String? long,
      required final String? lat,
      required final String? reachtime}) = _$_ViaLocationModel;

  factory _ViaLocationModel.fromJson(Map<String, dynamic> json) =
      _$_ViaLocationModel.fromJson;

  @override
  int? get is_board;
  @override
  String? get vialoc_id;
  @override
  String? get vialoc_name;
  @override
  String? get long;
  @override
  String? get lat;
  @override
  String? get reachtime;
  @override
  @JsonKey(ignore: true)
  _$$_ViaLocationModelCopyWith<_$_ViaLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
