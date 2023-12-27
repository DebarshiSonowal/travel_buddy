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
  int? get chassis_no => throw _privateConstructorUsedError;
  int? get model_no => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get registration_no => throw _privateConstructorUsedError;
  String? get vehicle_pic => throw _privateConstructorUsedError;

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
      {int? chassis_no,
      int? model_no,
      String? name,
      String? registration_no,
      String? vehicle_pic});
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
    Object? name = freezed,
    Object? registration_no = freezed,
    Object? vehicle_pic = freezed,
  }) {
    return _then(_value.copyWith(
      chassis_no: freezed == chassis_no
          ? _value.chassis_no
          : chassis_no // ignore: cast_nullable_to_non_nullable
              as int?,
      model_no: freezed == model_no
          ? _value.model_no
          : model_no // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {int? chassis_no,
      int? model_no,
      String? name,
      String? registration_no,
      String? vehicle_pic});
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
    Object? name = freezed,
    Object? registration_no = freezed,
    Object? vehicle_pic = freezed,
  }) {
    return _then(_$_VehicleModel(
      chassis_no: freezed == chassis_no
          ? _value.chassis_no
          : chassis_no // ignore: cast_nullable_to_non_nullable
              as int?,
      model_no: freezed == model_no
          ? _value.model_no
          : model_no // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleModel implements _VehicleModel {
  const _$_VehicleModel(
      {required this.chassis_no,
      required this.model_no,
      required this.name,
      required this.registration_no,
      required this.vehicle_pic});

  factory _$_VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleModelFromJson(json);

  @override
  final int? chassis_no;
  @override
  final int? model_no;
  @override
  final String? name;
  @override
  final String? registration_no;
  @override
  final String? vehicle_pic;

  @override
  String toString() {
    return 'VehicleModel(chassis_no: $chassis_no, model_no: $model_no, name: $name, registration_no: $registration_no, vehicle_pic: $vehicle_pic)';
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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.registration_no, registration_no) ||
                other.registration_no == registration_no) &&
            (identical(other.vehicle_pic, vehicle_pic) ||
                other.vehicle_pic == vehicle_pic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, chassis_no, model_no, name, registration_no, vehicle_pic);

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
      {required final int? chassis_no,
      required final int? model_no,
      required final String? name,
      required final String? registration_no,
      required final String? vehicle_pic}) = _$_VehicleModel;

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$_VehicleModel.fromJson;

  @override
  int? get chassis_no;
  @override
  int? get model_no;
  @override
  String? get name;
  @override
  String? get registration_no;
  @override
  String? get vehicle_pic;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleModelCopyWith<_$_VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
