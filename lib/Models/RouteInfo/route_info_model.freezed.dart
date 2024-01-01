// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouteInfoModel _$RouteInfoModelFromJson(Map<String, dynamic> json) {
  return _RouteInfoModel.fromJson(json);
}

/// @nodoc
mixin _$RouteInfoModel {
  int get id => throw _privateConstructorUsedError;
  List<ViaLocationModel> get viaLocation => throw _privateConstructorUsedError;
  List<StartLocationModel> get startLocation =>
      throw _privateConstructorUsedError;
  List<DestinationLocationModel> get destLocation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteInfoModelCopyWith<RouteInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteInfoModelCopyWith<$Res> {
  factory $RouteInfoModelCopyWith(
          RouteInfoModel value, $Res Function(RouteInfoModel) then) =
      _$RouteInfoModelCopyWithImpl<$Res, RouteInfoModel>;
  @useResult
  $Res call(
      {int id,
      List<ViaLocationModel> viaLocation,
      List<StartLocationModel> startLocation,
      List<DestinationLocationModel> destLocation});
}

/// @nodoc
class _$RouteInfoModelCopyWithImpl<$Res, $Val extends RouteInfoModel>
    implements $RouteInfoModelCopyWith<$Res> {
  _$RouteInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? viaLocation = null,
    Object? startLocation = null,
    Object? destLocation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      viaLocation: null == viaLocation
          ? _value.viaLocation
          : viaLocation // ignore: cast_nullable_to_non_nullable
              as List<ViaLocationModel>,
      startLocation: null == startLocation
          ? _value.startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as List<StartLocationModel>,
      destLocation: null == destLocation
          ? _value.destLocation
          : destLocation // ignore: cast_nullable_to_non_nullable
              as List<DestinationLocationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RouteInfoModelCopyWith<$Res>
    implements $RouteInfoModelCopyWith<$Res> {
  factory _$$_RouteInfoModelCopyWith(
          _$_RouteInfoModel value, $Res Function(_$_RouteInfoModel) then) =
      __$$_RouteInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<ViaLocationModel> viaLocation,
      List<StartLocationModel> startLocation,
      List<DestinationLocationModel> destLocation});
}

/// @nodoc
class __$$_RouteInfoModelCopyWithImpl<$Res>
    extends _$RouteInfoModelCopyWithImpl<$Res, _$_RouteInfoModel>
    implements _$$_RouteInfoModelCopyWith<$Res> {
  __$$_RouteInfoModelCopyWithImpl(
      _$_RouteInfoModel _value, $Res Function(_$_RouteInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? viaLocation = null,
    Object? startLocation = null,
    Object? destLocation = null,
  }) {
    return _then(_$_RouteInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      viaLocation: null == viaLocation
          ? _value._viaLocation
          : viaLocation // ignore: cast_nullable_to_non_nullable
              as List<ViaLocationModel>,
      startLocation: null == startLocation
          ? _value._startLocation
          : startLocation // ignore: cast_nullable_to_non_nullable
              as List<StartLocationModel>,
      destLocation: null == destLocation
          ? _value._destLocation
          : destLocation // ignore: cast_nullable_to_non_nullable
              as List<DestinationLocationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RouteInfoModel implements _RouteInfoModel {
  const _$_RouteInfoModel(
      {this.id = 0,
      final List<ViaLocationModel> viaLocation = const [],
      final List<StartLocationModel> startLocation = const [],
      final List<DestinationLocationModel> destLocation = const []})
      : _viaLocation = viaLocation,
        _startLocation = startLocation,
        _destLocation = destLocation;

  factory _$_RouteInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_RouteInfoModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  final List<ViaLocationModel> _viaLocation;
  @override
  @JsonKey()
  List<ViaLocationModel> get viaLocation {
    if (_viaLocation is EqualUnmodifiableListView) return _viaLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viaLocation);
  }

  final List<StartLocationModel> _startLocation;
  @override
  @JsonKey()
  List<StartLocationModel> get startLocation {
    if (_startLocation is EqualUnmodifiableListView) return _startLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_startLocation);
  }

  final List<DestinationLocationModel> _destLocation;
  @override
  @JsonKey()
  List<DestinationLocationModel> get destLocation {
    if (_destLocation is EqualUnmodifiableListView) return _destLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destLocation);
  }

  @override
  String toString() {
    return 'RouteInfoModel(id: $id, viaLocation: $viaLocation, startLocation: $startLocation, destLocation: $destLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._viaLocation, _viaLocation) &&
            const DeepCollectionEquality()
                .equals(other._startLocation, _startLocation) &&
            const DeepCollectionEquality()
                .equals(other._destLocation, _destLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_viaLocation),
      const DeepCollectionEquality().hash(_startLocation),
      const DeepCollectionEquality().hash(_destLocation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteInfoModelCopyWith<_$_RouteInfoModel> get copyWith =>
      __$$_RouteInfoModelCopyWithImpl<_$_RouteInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteInfoModelToJson(
      this,
    );
  }
}

abstract class _RouteInfoModel implements RouteInfoModel {
  const factory _RouteInfoModel(
      {final int id,
      final List<ViaLocationModel> viaLocation,
      final List<StartLocationModel> startLocation,
      final List<DestinationLocationModel> destLocation}) = _$_RouteInfoModel;

  factory _RouteInfoModel.fromJson(Map<String, dynamic> json) =
      _$_RouteInfoModel.fromJson;

  @override
  int get id;
  @override
  List<ViaLocationModel> get viaLocation;
  @override
  List<StartLocationModel> get startLocation;
  @override
  List<DestinationLocationModel> get destLocation;
  @override
  @JsonKey(ignore: true)
  _$$_RouteInfoModelCopyWith<_$_RouteInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
