// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_vehicle_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchVehicleData _$SearchVehicleDataFromJson(Map<String, dynamic> json) {
  return _SearchVehicleData.fromJson(json);
}

/// @nodoc
mixin _$SearchVehicleData {
  List<VehicleModel> get vehicle_info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchVehicleDataCopyWith<SearchVehicleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchVehicleDataCopyWith<$Res> {
  factory $SearchVehicleDataCopyWith(
          SearchVehicleData value, $Res Function(SearchVehicleData) then) =
      _$SearchVehicleDataCopyWithImpl<$Res, SearchVehicleData>;
  @useResult
  $Res call({List<VehicleModel> vehicle_info});
}

/// @nodoc
class _$SearchVehicleDataCopyWithImpl<$Res, $Val extends SearchVehicleData>
    implements $SearchVehicleDataCopyWith<$Res> {
  _$SearchVehicleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle_info = null,
  }) {
    return _then(_value.copyWith(
      vehicle_info: null == vehicle_info
          ? _value.vehicle_info
          : vehicle_info // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchVehicleDataCopyWith<$Res>
    implements $SearchVehicleDataCopyWith<$Res> {
  factory _$$_SearchVehicleDataCopyWith(_$_SearchVehicleData value,
          $Res Function(_$_SearchVehicleData) then) =
      __$$_SearchVehicleDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VehicleModel> vehicle_info});
}

/// @nodoc
class __$$_SearchVehicleDataCopyWithImpl<$Res>
    extends _$SearchVehicleDataCopyWithImpl<$Res, _$_SearchVehicleData>
    implements _$$_SearchVehicleDataCopyWith<$Res> {
  __$$_SearchVehicleDataCopyWithImpl(
      _$_SearchVehicleData _value, $Res Function(_$_SearchVehicleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle_info = null,
  }) {
    return _then(_$_SearchVehicleData(
      vehicle_info: null == vehicle_info
          ? _value._vehicle_info
          : vehicle_info // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchVehicleData implements _SearchVehicleData {
  const _$_SearchVehicleData({final List<VehicleModel> vehicle_info = const []})
      : _vehicle_info = vehicle_info;

  factory _$_SearchVehicleData.fromJson(Map<String, dynamic> json) =>
      _$$_SearchVehicleDataFromJson(json);

  final List<VehicleModel> _vehicle_info;
  @override
  @JsonKey()
  List<VehicleModel> get vehicle_info {
    if (_vehicle_info is EqualUnmodifiableListView) return _vehicle_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicle_info);
  }

  @override
  String toString() {
    return 'SearchVehicleData(vehicle_info: $vehicle_info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchVehicleData &&
            const DeepCollectionEquality()
                .equals(other._vehicle_info, _vehicle_info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vehicle_info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchVehicleDataCopyWith<_$_SearchVehicleData> get copyWith =>
      __$$_SearchVehicleDataCopyWithImpl<_$_SearchVehicleData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchVehicleDataToJson(
      this,
    );
  }
}

abstract class _SearchVehicleData implements SearchVehicleData {
  const factory _SearchVehicleData({final List<VehicleModel> vehicle_info}) =
      _$_SearchVehicleData;

  factory _SearchVehicleData.fromJson(Map<String, dynamic> json) =
      _$_SearchVehicleData.fromJson;

  @override
  List<VehicleModel> get vehicle_info;
  @override
  @JsonKey(ignore: true)
  _$$_SearchVehicleDataCopyWith<_$_SearchVehicleData> get copyWith =>
      throw _privateConstructorUsedError;
}
