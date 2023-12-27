// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchVehicleResponse _$SearchVehicleResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchVehicleResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchVehicleResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<VehicleModel> get vehicleInfo => throw _privateConstructorUsedError;
  List<CounterInfoModel> get counterInfo => throw _privateConstructorUsedError;
  List<RouteInfoModel> get routeInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchVehicleResponseCopyWith<SearchVehicleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchVehicleResponseCopyWith<$Res> {
  factory $SearchVehicleResponseCopyWith(SearchVehicleResponse value,
          $Res Function(SearchVehicleResponse) then) =
      _$SearchVehicleResponseCopyWithImpl<$Res, SearchVehicleResponse>;
  @useResult
  $Res call(
      {bool success,
      String? message,
      List<VehicleModel> vehicleInfo,
      List<CounterInfoModel> counterInfo,
      List<RouteInfoModel> routeInfo});
}

/// @nodoc
class _$SearchVehicleResponseCopyWithImpl<$Res,
        $Val extends SearchVehicleResponse>
    implements $SearchVehicleResponseCopyWith<$Res> {
  _$SearchVehicleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? vehicleInfo = null,
    Object? counterInfo = null,
    Object? routeInfo = null,
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
      vehicleInfo: null == vehicleInfo
          ? _value.vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel>,
      counterInfo: null == counterInfo
          ? _value.counterInfo
          : counterInfo // ignore: cast_nullable_to_non_nullable
              as List<CounterInfoModel>,
      routeInfo: null == routeInfo
          ? _value.routeInfo
          : routeInfo // ignore: cast_nullable_to_non_nullable
              as List<RouteInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchVehicleResponseCopyWith<$Res>
    implements $SearchVehicleResponseCopyWith<$Res> {
  factory _$$_SearchVehicleResponseCopyWith(_$_SearchVehicleResponse value,
          $Res Function(_$_SearchVehicleResponse) then) =
      __$$_SearchVehicleResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String? message,
      List<VehicleModel> vehicleInfo,
      List<CounterInfoModel> counterInfo,
      List<RouteInfoModel> routeInfo});
}

/// @nodoc
class __$$_SearchVehicleResponseCopyWithImpl<$Res>
    extends _$SearchVehicleResponseCopyWithImpl<$Res, _$_SearchVehicleResponse>
    implements _$$_SearchVehicleResponseCopyWith<$Res> {
  __$$_SearchVehicleResponseCopyWithImpl(_$_SearchVehicleResponse _value,
      $Res Function(_$_SearchVehicleResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? vehicleInfo = null,
    Object? counterInfo = null,
    Object? routeInfo = null,
  }) {
    return _then(_$_SearchVehicleResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleInfo: null == vehicleInfo
          ? _value._vehicleInfo
          : vehicleInfo // ignore: cast_nullable_to_non_nullable
              as List<VehicleModel>,
      counterInfo: null == counterInfo
          ? _value._counterInfo
          : counterInfo // ignore: cast_nullable_to_non_nullable
              as List<CounterInfoModel>,
      routeInfo: null == routeInfo
          ? _value._routeInfo
          : routeInfo // ignore: cast_nullable_to_non_nullable
              as List<RouteInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchVehicleResponse implements _SearchVehicleResponse {
  const _$_SearchVehicleResponse(
      {this.success = false,
      required this.message,
      final List<VehicleModel> vehicleInfo = const [],
      final List<CounterInfoModel> counterInfo = const [],
      final List<RouteInfoModel> routeInfo = const []})
      : _vehicleInfo = vehicleInfo,
        _counterInfo = counterInfo,
        _routeInfo = routeInfo;

  factory _$_SearchVehicleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchVehicleResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  final List<VehicleModel> _vehicleInfo;
  @override
  @JsonKey()
  List<VehicleModel> get vehicleInfo {
    if (_vehicleInfo is EqualUnmodifiableListView) return _vehicleInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleInfo);
  }

  final List<CounterInfoModel> _counterInfo;
  @override
  @JsonKey()
  List<CounterInfoModel> get counterInfo {
    if (_counterInfo is EqualUnmodifiableListView) return _counterInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_counterInfo);
  }

  final List<RouteInfoModel> _routeInfo;
  @override
  @JsonKey()
  List<RouteInfoModel> get routeInfo {
    if (_routeInfo is EqualUnmodifiableListView) return _routeInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routeInfo);
  }

  @override
  String toString() {
    return 'SearchVehicleResponse(success: $success, message: $message, vehicleInfo: $vehicleInfo, counterInfo: $counterInfo, routeInfo: $routeInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchVehicleResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._vehicleInfo, _vehicleInfo) &&
            const DeepCollectionEquality()
                .equals(other._counterInfo, _counterInfo) &&
            const DeepCollectionEquality()
                .equals(other._routeInfo, _routeInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      const DeepCollectionEquality().hash(_vehicleInfo),
      const DeepCollectionEquality().hash(_counterInfo),
      const DeepCollectionEquality().hash(_routeInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchVehicleResponseCopyWith<_$_SearchVehicleResponse> get copyWith =>
      __$$_SearchVehicleResponseCopyWithImpl<_$_SearchVehicleResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchVehicleResponseToJson(
      this,
    );
  }
}

abstract class _SearchVehicleResponse implements SearchVehicleResponse {
  const factory _SearchVehicleResponse(
      {final bool success,
      required final String? message,
      final List<VehicleModel> vehicleInfo,
      final List<CounterInfoModel> counterInfo,
      final List<RouteInfoModel> routeInfo}) = _$_SearchVehicleResponse;

  factory _SearchVehicleResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchVehicleResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<VehicleModel> get vehicleInfo;
  @override
  List<CounterInfoModel> get counterInfo;
  @override
  List<RouteInfoModel> get routeInfo;
  @override
  @JsonKey(ignore: true)
  _$$_SearchVehicleResponseCopyWith<_$_SearchVehicleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}