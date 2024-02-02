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
  SearchVehicleData? get data => throw _privateConstructorUsedError;

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
  $Res call({bool success, String? message, SearchVehicleData? data});

  $SearchVehicleDataCopyWith<$Res>? get data;
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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchVehicleData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchVehicleDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchVehicleDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({bool success, String? message, SearchVehicleData? data});

  @override
  $SearchVehicleDataCopyWith<$Res>? get data;
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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchVehicleData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchVehicleResponse implements _SearchVehicleResponse {
  const _$_SearchVehicleResponse(
      {this.success = false, required this.message, this.data});

  factory _$_SearchVehicleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchVehicleResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final SearchVehicleData? data;

  @override
  String toString() {
    return 'SearchVehicleResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchVehicleResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

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
      final SearchVehicleData? data}) = _$_SearchVehicleResponse;

  factory _SearchVehicleResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchVehicleResponse.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  SearchVehicleData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchVehicleResponseCopyWith<_$_SearchVehicleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
