// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartLocationModel _$StartLocationModelFromJson(Map<String, dynamic> json) {
  return _StartLocationModel.fromJson(json);
}

/// @nodoc
mixin _$StartLocationModel {
  String? get startloc_id => throw _privateConstructorUsedError;
  String? get startloc_name => throw _privateConstructorUsedError;
  String? get reachtime => throw _privateConstructorUsedError;
  String? get startloc_long => throw _privateConstructorUsedError;
  String? get startloc_lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartLocationModelCopyWith<StartLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartLocationModelCopyWith<$Res> {
  factory $StartLocationModelCopyWith(
          StartLocationModel value, $Res Function(StartLocationModel) then) =
      _$StartLocationModelCopyWithImpl<$Res, StartLocationModel>;
  @useResult
  $Res call(
      {String? startloc_id,
      String? startloc_name,
      String? reachtime,
      String? startloc_long,
      String? startloc_lat});
}

/// @nodoc
class _$StartLocationModelCopyWithImpl<$Res, $Val extends StartLocationModel>
    implements $StartLocationModelCopyWith<$Res> {
  _$StartLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startloc_id = freezed,
    Object? startloc_name = freezed,
    Object? reachtime = freezed,
    Object? startloc_long = freezed,
    Object? startloc_lat = freezed,
  }) {
    return _then(_value.copyWith(
      startloc_id: freezed == startloc_id
          ? _value.startloc_id
          : startloc_id // ignore: cast_nullable_to_non_nullable
              as String?,
      startloc_name: freezed == startloc_name
          ? _value.startloc_name
          : startloc_name // ignore: cast_nullable_to_non_nullable
              as String?,
      reachtime: freezed == reachtime
          ? _value.reachtime
          : reachtime // ignore: cast_nullable_to_non_nullable
              as String?,
      startloc_long: freezed == startloc_long
          ? _value.startloc_long
          : startloc_long // ignore: cast_nullable_to_non_nullable
              as String?,
      startloc_lat: freezed == startloc_lat
          ? _value.startloc_lat
          : startloc_lat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartLocationModelCopyWith<$Res>
    implements $StartLocationModelCopyWith<$Res> {
  factory _$$_StartLocationModelCopyWith(_$_StartLocationModel value,
          $Res Function(_$_StartLocationModel) then) =
      __$$_StartLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? startloc_id,
      String? startloc_name,
      String? reachtime,
      String? startloc_long,
      String? startloc_lat});
}

/// @nodoc
class __$$_StartLocationModelCopyWithImpl<$Res>
    extends _$StartLocationModelCopyWithImpl<$Res, _$_StartLocationModel>
    implements _$$_StartLocationModelCopyWith<$Res> {
  __$$_StartLocationModelCopyWithImpl(
      _$_StartLocationModel _value, $Res Function(_$_StartLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startloc_id = freezed,
    Object? startloc_name = freezed,
    Object? reachtime = freezed,
    Object? startloc_long = freezed,
    Object? startloc_lat = freezed,
  }) {
    return _then(_$_StartLocationModel(
      startloc_id: freezed == startloc_id
          ? _value.startloc_id
          : startloc_id // ignore: cast_nullable_to_non_nullable
              as String?,
      startloc_name: freezed == startloc_name
          ? _value.startloc_name
          : startloc_name // ignore: cast_nullable_to_non_nullable
              as String?,
      reachtime: freezed == reachtime
          ? _value.reachtime
          : reachtime // ignore: cast_nullable_to_non_nullable
              as String?,
      startloc_long: freezed == startloc_long
          ? _value.startloc_long
          : startloc_long // ignore: cast_nullable_to_non_nullable
              as String?,
      startloc_lat: freezed == startloc_lat
          ? _value.startloc_lat
          : startloc_lat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartLocationModel implements _StartLocationModel {
  const _$_StartLocationModel(
      {required this.startloc_id,
      required this.startloc_name,
      required this.reachtime,
      required this.startloc_long,
      required this.startloc_lat});

  factory _$_StartLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_StartLocationModelFromJson(json);

  @override
  final String? startloc_id;
  @override
  final String? startloc_name;
  @override
  final String? reachtime;
  @override
  final String? startloc_long;
  @override
  final String? startloc_lat;

  @override
  String toString() {
    return 'StartLocationModel(startloc_id: $startloc_id, startloc_name: $startloc_name, reachtime: $reachtime, startloc_long: $startloc_long, startloc_lat: $startloc_lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartLocationModel &&
            (identical(other.startloc_id, startloc_id) ||
                other.startloc_id == startloc_id) &&
            (identical(other.startloc_name, startloc_name) ||
                other.startloc_name == startloc_name) &&
            (identical(other.reachtime, reachtime) ||
                other.reachtime == reachtime) &&
            (identical(other.startloc_long, startloc_long) ||
                other.startloc_long == startloc_long) &&
            (identical(other.startloc_lat, startloc_lat) ||
                other.startloc_lat == startloc_lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startloc_id, startloc_name,
      reachtime, startloc_long, startloc_lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartLocationModelCopyWith<_$_StartLocationModel> get copyWith =>
      __$$_StartLocationModelCopyWithImpl<_$_StartLocationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartLocationModelToJson(
      this,
    );
  }
}

abstract class _StartLocationModel implements StartLocationModel {
  const factory _StartLocationModel(
      {required final String? startloc_id,
      required final String? startloc_name,
      required final String? reachtime,
      required final String? startloc_long,
      required final String? startloc_lat}) = _$_StartLocationModel;

  factory _StartLocationModel.fromJson(Map<String, dynamic> json) =
      _$_StartLocationModel.fromJson;

  @override
  String? get startloc_id;
  @override
  String? get startloc_name;
  @override
  String? get reachtime;
  @override
  String? get startloc_long;
  @override
  String? get startloc_lat;
  @override
  @JsonKey(ignore: true)
  _$$_StartLocationModelCopyWith<_$_StartLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
