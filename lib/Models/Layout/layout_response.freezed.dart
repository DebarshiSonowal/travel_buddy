// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LayoutResponse _$LayoutResponseFromJson(Map<String, dynamic> json) {
  return _LayoutResponse.fromJson(json);
}

/// @nodoc
mixin _$LayoutResponse {
  bool? get success => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  LayoutResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayoutResponseCopyWith<LayoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutResponseCopyWith<$Res> {
  factory $LayoutResponseCopyWith(
          LayoutResponse value, $Res Function(LayoutResponse) then) =
      _$LayoutResponseCopyWithImpl<$Res, LayoutResponse>;
  @useResult
  $Res call(
      {bool? success, int? status, String? message, LayoutResponseData? data});

  $LayoutResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LayoutResponseCopyWithImpl<$Res, $Val extends LayoutResponse>
    implements $LayoutResponseCopyWith<$Res> {
  _$LayoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LayoutResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LayoutResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LayoutResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LayoutResponseCopyWith<$Res>
    implements $LayoutResponseCopyWith<$Res> {
  factory _$$_LayoutResponseCopyWith(
          _$_LayoutResponse value, $Res Function(_$_LayoutResponse) then) =
      __$$_LayoutResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, int? status, String? message, LayoutResponseData? data});

  @override
  $LayoutResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LayoutResponseCopyWithImpl<$Res>
    extends _$LayoutResponseCopyWithImpl<$Res, _$_LayoutResponse>
    implements _$$_LayoutResponseCopyWith<$Res> {
  __$$_LayoutResponseCopyWithImpl(
      _$_LayoutResponse _value, $Res Function(_$_LayoutResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LayoutResponse(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LayoutResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LayoutResponse implements _LayoutResponse {
  const _$_LayoutResponse(
      {required this.success,
      required this.status,
      required this.message,
      this.data});

  factory _$_LayoutResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LayoutResponseFromJson(json);

  @override
  final bool? success;
  @override
  final int? status;
  @override
  final String? message;
  @override
  final LayoutResponseData? data;

  @override
  String toString() {
    return 'LayoutResponse(success: $success, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LayoutResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LayoutResponseCopyWith<_$_LayoutResponse> get copyWith =>
      __$$_LayoutResponseCopyWithImpl<_$_LayoutResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LayoutResponseToJson(
      this,
    );
  }
}

abstract class _LayoutResponse implements LayoutResponse {
  const factory _LayoutResponse(
      {required final bool? success,
      required final int? status,
      required final String? message,
      final LayoutResponseData? data}) = _$_LayoutResponse;

  factory _LayoutResponse.fromJson(Map<String, dynamic> json) =
      _$_LayoutResponse.fromJson;

  @override
  bool? get success;
  @override
  int? get status;
  @override
  String? get message;
  @override
  LayoutResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LayoutResponseCopyWith<_$_LayoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
