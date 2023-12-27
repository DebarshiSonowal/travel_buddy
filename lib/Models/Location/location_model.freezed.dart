// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  int? get id => throw _privateConstructorUsedError;
  int? get is_boarding => throw _privateConstructorUsedError;
  int? get is_destination => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get display_name => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {int? id,
      int? is_boarding,
      int? is_destination,
      int? status,
      String? full_name,
      String? display_name,
      String? longitude,
      String? latitude,
      String? created_at});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? is_boarding = freezed,
    Object? is_destination = freezed,
    Object? status = freezed,
    Object? full_name = freezed,
    Object? display_name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      is_boarding: freezed == is_boarding
          ? _value.is_boarding
          : is_boarding // ignore: cast_nullable_to_non_nullable
              as int?,
      is_destination: freezed == is_destination
          ? _value.is_destination
          : is_destination // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name: freezed == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$_LocationModelCopyWith(
          _$_LocationModel value, $Res Function(_$_LocationModel) then) =
      __$$_LocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? is_boarding,
      int? is_destination,
      int? status,
      String? full_name,
      String? display_name,
      String? longitude,
      String? latitude,
      String? created_at});
}

/// @nodoc
class __$$_LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$_LocationModel>
    implements _$$_LocationModelCopyWith<$Res> {
  __$$_LocationModelCopyWithImpl(
      _$_LocationModel _value, $Res Function(_$_LocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? is_boarding = freezed,
    Object? is_destination = freezed,
    Object? status = freezed,
    Object? full_name = freezed,
    Object? display_name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$_LocationModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      is_boarding: freezed == is_boarding
          ? _value.is_boarding
          : is_boarding // ignore: cast_nullable_to_non_nullable
              as int?,
      is_destination: freezed == is_destination
          ? _value.is_destination
          : is_destination // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      display_name: freezed == display_name
          ? _value.display_name
          : display_name // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel(
      {required this.id,
      required this.is_boarding,
      required this.is_destination,
      required this.status,
      required this.full_name,
      required this.display_name,
      required this.longitude,
      required this.latitude,
      required this.created_at});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  final int? id;
  @override
  final int? is_boarding;
  @override
  final int? is_destination;
  @override
  final int? status;
  @override
  final String? full_name;
  @override
  final String? display_name;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'LocationModel(id: $id, is_boarding: $is_boarding, is_destination: $is_destination, status: $status, full_name: $full_name, display_name: $display_name, longitude: $longitude, latitude: $latitude, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_boarding, is_boarding) ||
                other.is_boarding == is_boarding) &&
            (identical(other.is_destination, is_destination) ||
                other.is_destination == is_destination) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.display_name, display_name) ||
                other.display_name == display_name) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, is_boarding, is_destination,
      status, full_name, display_name, longitude, latitude, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      __$$_LocationModelCopyWithImpl<_$_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {required final int? id,
      required final int? is_boarding,
      required final int? is_destination,
      required final int? status,
      required final String? full_name,
      required final String? display_name,
      required final String? longitude,
      required final String? latitude,
      required final String? created_at}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  int? get id;
  @override
  int? get is_boarding;
  @override
  int? get is_destination;
  @override
  int? get status;
  @override
  String? get full_name;
  @override
  String? get display_name;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  String? get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
