// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DestinationLocationModel _$DestinationLocationModelFromJson(
    Map<String, dynamic> json) {
  return _DestinationLocationModel.fromJson(json);
}

/// @nodoc
mixin _$DestinationLocationModel {
  String? get destloc_id => throw _privateConstructorUsedError;
  String? get destloc_name => throw _privateConstructorUsedError;
  String? get reachtime => throw _privateConstructorUsedError;
  String? get destloc_long => throw _privateConstructorUsedError;
  String? get destloc_lat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationLocationModelCopyWith<DestinationLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationLocationModelCopyWith<$Res> {
  factory $DestinationLocationModelCopyWith(DestinationLocationModel value,
          $Res Function(DestinationLocationModel) then) =
      _$DestinationLocationModelCopyWithImpl<$Res, DestinationLocationModel>;
  @useResult
  $Res call(
      {String? destloc_id,
      String? destloc_name,
      String? reachtime,
      String? destloc_long,
      String? destloc_lat});
}

/// @nodoc
class _$DestinationLocationModelCopyWithImpl<$Res,
        $Val extends DestinationLocationModel>
    implements $DestinationLocationModelCopyWith<$Res> {
  _$DestinationLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destloc_id = freezed,
    Object? destloc_name = freezed,
    Object? reachtime = freezed,
    Object? destloc_long = freezed,
    Object? destloc_lat = freezed,
  }) {
    return _then(_value.copyWith(
      destloc_id: freezed == destloc_id
          ? _value.destloc_id
          : destloc_id // ignore: cast_nullable_to_non_nullable
              as String?,
      destloc_name: freezed == destloc_name
          ? _value.destloc_name
          : destloc_name // ignore: cast_nullable_to_non_nullable
              as String?,
      reachtime: freezed == reachtime
          ? _value.reachtime
          : reachtime // ignore: cast_nullable_to_non_nullable
              as String?,
      destloc_long: freezed == destloc_long
          ? _value.destloc_long
          : destloc_long // ignore: cast_nullable_to_non_nullable
              as String?,
      destloc_lat: freezed == destloc_lat
          ? _value.destloc_lat
          : destloc_lat // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DestinationLocationModelCopyWith<$Res>
    implements $DestinationLocationModelCopyWith<$Res> {
  factory _$$_DestinationLocationModelCopyWith(
          _$_DestinationLocationModel value,
          $Res Function(_$_DestinationLocationModel) then) =
      __$$_DestinationLocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? destloc_id,
      String? destloc_name,
      String? reachtime,
      String? destloc_long,
      String? destloc_lat});
}

/// @nodoc
class __$$_DestinationLocationModelCopyWithImpl<$Res>
    extends _$DestinationLocationModelCopyWithImpl<$Res,
        _$_DestinationLocationModel>
    implements _$$_DestinationLocationModelCopyWith<$Res> {
  __$$_DestinationLocationModelCopyWithImpl(_$_DestinationLocationModel _value,
      $Res Function(_$_DestinationLocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destloc_id = freezed,
    Object? destloc_name = freezed,
    Object? reachtime = freezed,
    Object? destloc_long = freezed,
    Object? destloc_lat = freezed,
  }) {
    return _then(_$_DestinationLocationModel(
      destloc_id: freezed == destloc_id
          ? _value.destloc_id
          : destloc_id // ignore: cast_nullable_to_non_nullable
              as String?,
      destloc_name: freezed == destloc_name
          ? _value.destloc_name
          : destloc_name // ignore: cast_nullable_to_non_nullable
              as String?,
      reachtime: freezed == reachtime
          ? _value.reachtime
          : reachtime // ignore: cast_nullable_to_non_nullable
              as String?,
      destloc_long: freezed == destloc_long
          ? _value.destloc_long
          : destloc_long // ignore: cast_nullable_to_non_nullable
              as String?,
      destloc_lat: freezed == destloc_lat
          ? _value.destloc_lat
          : destloc_lat // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DestinationLocationModel implements _DestinationLocationModel {
  const _$_DestinationLocationModel(
      {required this.destloc_id,
      required this.destloc_name,
      required this.reachtime,
      required this.destloc_long,
      required this.destloc_lat});

  factory _$_DestinationLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_DestinationLocationModelFromJson(json);

  @override
  final String? destloc_id;
  @override
  final String? destloc_name;
  @override
  final String? reachtime;
  @override
  final String? destloc_long;
  @override
  final String? destloc_lat;

  @override
  String toString() {
    return 'DestinationLocationModel(destloc_id: $destloc_id, destloc_name: $destloc_name, reachtime: $reachtime, destloc_long: $destloc_long, destloc_lat: $destloc_lat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DestinationLocationModel &&
            (identical(other.destloc_id, destloc_id) ||
                other.destloc_id == destloc_id) &&
            (identical(other.destloc_name, destloc_name) ||
                other.destloc_name == destloc_name) &&
            (identical(other.reachtime, reachtime) ||
                other.reachtime == reachtime) &&
            (identical(other.destloc_long, destloc_long) ||
                other.destloc_long == destloc_long) &&
            (identical(other.destloc_lat, destloc_lat) ||
                other.destloc_lat == destloc_lat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, destloc_id, destloc_name,
      reachtime, destloc_long, destloc_lat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DestinationLocationModelCopyWith<_$_DestinationLocationModel>
      get copyWith => __$$_DestinationLocationModelCopyWithImpl<
          _$_DestinationLocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DestinationLocationModelToJson(
      this,
    );
  }
}

abstract class _DestinationLocationModel implements DestinationLocationModel {
  const factory _DestinationLocationModel(
      {required final String? destloc_id,
      required final String? destloc_name,
      required final String? reachtime,
      required final String? destloc_long,
      required final String? destloc_lat}) = _$_DestinationLocationModel;

  factory _DestinationLocationModel.fromJson(Map<String, dynamic> json) =
      _$_DestinationLocationModel.fromJson;

  @override
  String? get destloc_id;
  @override
  String? get destloc_name;
  @override
  String? get reachtime;
  @override
  String? get destloc_long;
  @override
  String? get destloc_lat;
  @override
  @JsonKey(ignore: true)
  _$$_DestinationLocationModelCopyWith<_$_DestinationLocationModel>
      get copyWith => throw _privateConstructorUsedError;
}
