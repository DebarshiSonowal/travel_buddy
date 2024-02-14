// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) {
  return _DataResponse.fromJson(json);
}

/// @nodoc
mixin _$DataResponse {
  bool get success => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CustomSeatData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataResponseCopyWith<DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseCopyWith<$Res> {
  factory $DataResponseCopyWith(
          DataResponse value, $Res Function(DataResponse) then) =
      _$DataResponseCopyWithImpl<$Res, DataResponse>;
  @useResult
  $Res call({bool success, int? status, String? message, CustomSeatData? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DataResponseCopyWithImpl<$Res, $Val extends DataResponse>
    implements $DataResponseCopyWith<$Res> {
  _$DataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as CustomSeatData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataResponseCopyWith<$Res>
    implements $DataResponseCopyWith<$Res> {
  factory _$$_DataResponseCopyWith(
          _$_DataResponse value, $Res Function(_$_DataResponse) then) =
      __$$_DataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int? status, String? message, CustomSeatData? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DataResponseCopyWithImpl<$Res>
    extends _$DataResponseCopyWithImpl<$Res, _$_DataResponse>
    implements _$$_DataResponseCopyWith<$Res> {
  __$$_DataResponseCopyWithImpl(
      _$_DataResponse _value, $Res Function(_$_DataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DataResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as CustomSeatData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataResponse implements _DataResponse {
  const _$_DataResponse(
      {this.success = false, this.status, required this.message, this.data});

  factory _$_DataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final int? status;
  @override
  final String? message;
  @override
  final CustomSeatData? data;

  @override
  String toString() {
    return 'DataResponse(success: $success, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataResponse &&
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
  _$$_DataResponseCopyWith<_$_DataResponse> get copyWith =>
      __$$_DataResponseCopyWithImpl<_$_DataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataResponseToJson(
      this,
    );
  }
}

abstract class _DataResponse implements DataResponse {
  const factory _DataResponse(
      {final bool success,
      final int? status,
      required final String? message,
      final CustomSeatData? data}) = _$_DataResponse;

  factory _DataResponse.fromJson(Map<String, dynamic> json) =
      _$_DataResponse.fromJson;

  @override
  bool get success;
  @override
  int? get status;
  @override
  String? get message;
  @override
  CustomSeatData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataResponseCopyWith<_$_DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
