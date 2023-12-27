// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenericResponse _$GenericResponseFromJson(Map<String, dynamic> json) {
  return _GenericResponse.fromJson(json);
}

/// @nodoc
mixin _$GenericResponse {
  bool get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericResponseCopyWith<GenericResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericResponseCopyWith<$Res> {
  factory $GenericResponseCopyWith(
          GenericResponse value, $Res Function(GenericResponse) then) =
      _$GenericResponseCopyWithImpl<$Res, GenericResponse>;
  @useResult
  $Res call({bool status, String? message, String? token});
}

/// @nodoc
class _$GenericResponseCopyWithImpl<$Res, $Val extends GenericResponse>
    implements $GenericResponseCopyWith<$Res> {
  _$GenericResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenericResponseCopyWith<$Res>
    implements $GenericResponseCopyWith<$Res> {
  factory _$$_GenericResponseCopyWith(
          _$_GenericResponse value, $Res Function(_$_GenericResponse) then) =
      __$$_GenericResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String? message, String? token});
}

/// @nodoc
class __$$_GenericResponseCopyWithImpl<$Res>
    extends _$GenericResponseCopyWithImpl<$Res, _$_GenericResponse>
    implements _$$_GenericResponseCopyWith<$Res> {
  __$$_GenericResponseCopyWithImpl(
      _$_GenericResponse _value, $Res Function(_$_GenericResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_GenericResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenericResponse implements _GenericResponse {
  const _$_GenericResponse(
      {this.status = false, required this.message, this.token});

  factory _$_GenericResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GenericResponseFromJson(json);

  @override
  @JsonKey()
  final bool status;
  @override
  final String? message;
  @override
  final String? token;

  @override
  String toString() {
    return 'GenericResponse(status: $status, message: $message, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericResponseCopyWith<_$_GenericResponse> get copyWith =>
      __$$_GenericResponseCopyWithImpl<_$_GenericResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenericResponseToJson(
      this,
    );
  }
}

abstract class _GenericResponse implements GenericResponse {
  const factory _GenericResponse(
      {final bool status,
      required final String? message,
      final String? token}) = _$_GenericResponse;

  factory _GenericResponse.fromJson(Map<String, dynamic> json) =
      _$_GenericResponse.fromJson;

  @override
  bool get status;
  @override
  String? get message;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_GenericResponseCopyWith<_$_GenericResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
