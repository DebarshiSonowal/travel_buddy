// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  return _LocationResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<LocationModel> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res, LocationResponse>;
  @useResult
  $Res call({bool success, String? message, List<LocationModel> location});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res, $Val extends LocationResponse>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? location = null,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$$_LocationResponseCopyWith(
          _$_LocationResponse value, $Res Function(_$_LocationResponse) then) =
      __$$_LocationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, List<LocationModel> location});
}

/// @nodoc
class __$$_LocationResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res, _$_LocationResponse>
    implements _$$_LocationResponseCopyWith<$Res> {
  __$$_LocationResponseCopyWithImpl(
      _$_LocationResponse _value, $Res Function(_$_LocationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? location = null,
  }) {
    return _then(_$_LocationResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationResponse implements _LocationResponse {
  const _$_LocationResponse(
      {this.success = false,
      required this.message,
      final List<LocationModel> location = const []})
      : _location = location;

  factory _$_LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  final List<LocationModel> _location;
  @override
  @JsonKey()
  List<LocationModel> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  String toString() {
    return 'LocationResponse(success: $success, message: $message, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationResponseCopyWith<_$_LocationResponse> get copyWith =>
      __$$_LocationResponseCopyWithImpl<_$_LocationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationResponseToJson(
      this,
    );
  }
}

abstract class _LocationResponse implements LocationResponse {
  const factory _LocationResponse(
      {final bool success,
      required final String? message,
      final List<LocationModel> location}) = _$_LocationResponse;

  factory _LocationResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<LocationModel> get location;
  @override
  @JsonKey(ignore: true)
  _$$_LocationResponseCopyWith<_$_LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
