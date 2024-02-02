// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return _VehicleModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleModel {
  String? get chassis_no => throw _privateConstructorUsedError;
  String? get model_no => throw _privateConstructorUsedError;
  String? get total_seats => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get registration_no => throw _privateConstructorUsedError;
  String? get vehicle_pic => throw _privateConstructorUsedError;
  List<CounterInfoModel> get counter_info => throw _privateConstructorUsedError;
  List<RouteInfoModel> get route_info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelCopyWith<VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelCopyWith<$Res> {
  factory $VehicleModelCopyWith(
          VehicleModel value, $Res Function(VehicleModel) then) =
      _$VehicleModelCopyWithImpl<$Res, VehicleModel>;
  @useResult
  $Res call(
      {String? chassis_no,
      String? model_no,
      String? total_seats,
      String? name,
      String? registration_no,
      String? vehicle_pic,
      List<CounterInfoModel> counter_info,
      List<RouteInfoModel> route_info});
}

/// @nodoc
class _$VehicleModelCopyWithImpl<$Res, $Val extends VehicleModel>
    implements $VehicleModelCopyWith<$Res> {
  _$VehicleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chassis_no = freezed,
    Object? model_no = freezed,
    Object? total_seats = freezed,
    Object? name = freezed,
    Object? registration_no = freezed,
    Object? vehicle_pic = freezed,
    Object? counter_info = null,
    Object? route_info = null,
  }) {
    return _then(_value.copyWith(
      chassis_no: freezed == chassis_no
          ? _value.chassis_no
          : chassis_no // ignore: cast_nullable_to_non_nullable
              as String?,
      model_no: freezed == model_no
          ? _value.model_no
          : model_no // ignore: cast_nullable_to_non_nullable
              as String?,
      total_seats: freezed == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      registration_no: freezed == registration_no
          ? _value.registration_no
          : registration_no // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_pic: freezed == vehicle_pic
          ? _value.vehicle_pic
          : vehicle_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      counter_info: null == counter_info
          ? _value.counter_info
          : counter_info // ignore: cast_nullable_to_non_nullable
              as List<CounterInfoModel>,
      route_info: null == route_info
          ? _value.route_info
          : route_info // ignore: cast_nullable_to_non_nullable
              as List<RouteInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleModelCopyWith<$Res>
    implements $VehicleModelCopyWith<$Res> {
  factory _$$_VehicleModelCopyWith(
          _$_VehicleModel value, $Res Function(_$_VehicleModel) then) =
      __$$_VehicleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? chassis_no,
      String? model_no,
      String? total_seats,
      String? name,
      String? registration_no,
      String? vehicle_pic,
      List<CounterInfoModel> counter_info,
      List<RouteInfoModel> route_info});
}

/// @nodoc
class __$$_VehicleModelCopyWithImpl<$Res>
    extends _$VehicleModelCopyWithImpl<$Res, _$_VehicleModel>
    implements _$$_VehicleModelCopyWith<$Res> {
  __$$_VehicleModelCopyWithImpl(
      _$_VehicleModel _value, $Res Function(_$_VehicleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chassis_no = freezed,
    Object? model_no = freezed,
    Object? total_seats = freezed,
    Object? name = freezed,
    Object? registration_no = freezed,
    Object? vehicle_pic = freezed,
    Object? counter_info = null,
    Object? route_info = null,
  }) {
    return _then(_$_VehicleModel(
      chassis_no: freezed == chassis_no
          ? _value.chassis_no
          : chassis_no // ignore: cast_nullable_to_non_nullable
              as String?,
      model_no: freezed == model_no
          ? _value.model_no
          : model_no // ignore: cast_nullable_to_non_nullable
              as String?,
      total_seats: freezed == total_seats
          ? _value.total_seats
          : total_seats // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      registration_no: freezed == registration_no
          ? _value.registration_no
          : registration_no // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_pic: freezed == vehicle_pic
          ? _value.vehicle_pic
          : vehicle_pic // ignore: cast_nullable_to_non_nullable
              as String?,
      counter_info: null == counter_info
          ? _value._counter_info
          : counter_info // ignore: cast_nullable_to_non_nullable
              as List<CounterInfoModel>,
      route_info: null == route_info
          ? _value._route_info
          : route_info // ignore: cast_nullable_to_non_nullable
              as List<RouteInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleModel implements _VehicleModel {
  const _$_VehicleModel(
      {required this.chassis_no,
      required this.model_no,
      required this.total_seats,
      required this.name,
      required this.registration_no,
      required this.vehicle_pic,
      final List<CounterInfoModel> counter_info = const [],
      final List<RouteInfoModel> route_info = const []})
      : _counter_info = counter_info,
        _route_info = route_info;

  factory _$_VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleModelFromJson(json);

  @override
  final String? chassis_no;
  @override
  final String? model_no;
  @override
  final String? total_seats;
  @override
  final String? name;
  @override
  final String? registration_no;
  @override
  final String? vehicle_pic;
  final List<CounterInfoModel> _counter_info;
  @override
  @JsonKey()
  List<CounterInfoModel> get counter_info {
    if (_counter_info is EqualUnmodifiableListView) return _counter_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_counter_info);
  }

  final List<RouteInfoModel> _route_info;
  @override
  @JsonKey()
  List<RouteInfoModel> get route_info {
    if (_route_info is EqualUnmodifiableListView) return _route_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_route_info);
  }

  @override
  String toString() {
    return 'VehicleModel(chassis_no: $chassis_no, model_no: $model_no, total_seats: $total_seats, name: $name, registration_no: $registration_no, vehicle_pic: $vehicle_pic, counter_info: $counter_info, route_info: $route_info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleModel &&
            (identical(other.chassis_no, chassis_no) ||
                other.chassis_no == chassis_no) &&
            (identical(other.model_no, model_no) ||
                other.model_no == model_no) &&
            (identical(other.total_seats, total_seats) ||
                other.total_seats == total_seats) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.registration_no, registration_no) ||
                other.registration_no == registration_no) &&
            (identical(other.vehicle_pic, vehicle_pic) ||
                other.vehicle_pic == vehicle_pic) &&
            const DeepCollectionEquality()
                .equals(other._counter_info, _counter_info) &&
            const DeepCollectionEquality()
                .equals(other._route_info, _route_info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chassis_no,
      model_no,
      total_seats,
      name,
      registration_no,
      vehicle_pic,
      const DeepCollectionEquality().hash(_counter_info),
      const DeepCollectionEquality().hash(_route_info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      __$$_VehicleModelCopyWithImpl<_$_VehicleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleModelToJson(
      this,
    );
  }
}

abstract class _VehicleModel implements VehicleModel {
  const factory _VehicleModel(
      {required final String? chassis_no,
      required final String? model_no,
      required final String? total_seats,
      required final String? name,
      required final String? registration_no,
      required final String? vehicle_pic,
      final List<CounterInfoModel> counter_info,
      final List<RouteInfoModel> route_info}) = _$_VehicleModel;

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleModel.fromJson;

  @override
  String? get chassis_no;
  @override
  String? get model_no;
  @override
  String? get total_seats;
  @override
  String? get name;
  @override
  String? get registration_no;
  @override
  String? get vehicle_pic;
  @override
  List<CounterInfoModel> get counter_info;
  @override
  List<RouteInfoModel> get route_info;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
