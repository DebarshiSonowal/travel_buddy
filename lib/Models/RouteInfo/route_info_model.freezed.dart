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
  String get travel_time => throw _privateConstructorUsedError;
  String get strt_time => throw _privateConstructorUsedError;
  List<ViaLocationModel> get vialoc => throw _privateConstructorUsedError;
  List<StartLocationModel> get start_loc => throw _privateConstructorUsedError;
  List<DestinationLocationModel> get dest_loc =>
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
      String travel_time,
      String strt_time,
      List<ViaLocationModel> vialoc,
      List<StartLocationModel> start_loc,
      List<DestinationLocationModel> dest_loc});
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
    Object? travel_time = null,
    Object? strt_time = null,
    Object? vialoc = null,
    Object? start_loc = null,
    Object? dest_loc = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      travel_time: null == travel_time
          ? _value.travel_time
          : travel_time // ignore: cast_nullable_to_non_nullable
              as String,
      strt_time: null == strt_time
          ? _value.strt_time
          : strt_time // ignore: cast_nullable_to_non_nullable
              as String,
      vialoc: null == vialoc
          ? _value.vialoc
          : vialoc // ignore: cast_nullable_to_non_nullable
              as List<ViaLocationModel>,
      start_loc: null == start_loc
          ? _value.start_loc
          : start_loc // ignore: cast_nullable_to_non_nullable
              as List<StartLocationModel>,
      dest_loc: null == dest_loc
          ? _value.dest_loc
          : dest_loc // ignore: cast_nullable_to_non_nullable
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
      String travel_time,
      String strt_time,
      List<ViaLocationModel> vialoc,
      List<StartLocationModel> start_loc,
      List<DestinationLocationModel> dest_loc});
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
    Object? travel_time = null,
    Object? strt_time = null,
    Object? vialoc = null,
    Object? start_loc = null,
    Object? dest_loc = null,
  }) {
    return _then(_$_RouteInfoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      travel_time: null == travel_time
          ? _value.travel_time
          : travel_time // ignore: cast_nullable_to_non_nullable
              as String,
      strt_time: null == strt_time
          ? _value.strt_time
          : strt_time // ignore: cast_nullable_to_non_nullable
              as String,
      vialoc: null == vialoc
          ? _value._vialoc
          : vialoc // ignore: cast_nullable_to_non_nullable
              as List<ViaLocationModel>,
      start_loc: null == start_loc
          ? _value._start_loc
          : start_loc // ignore: cast_nullable_to_non_nullable
              as List<StartLocationModel>,
      dest_loc: null == dest_loc
          ? _value._dest_loc
          : dest_loc // ignore: cast_nullable_to_non_nullable
              as List<DestinationLocationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RouteInfoModel implements _RouteInfoModel {
  const _$_RouteInfoModel(
      {this.id = 0,
      this.travel_time = "0",
      this.strt_time = "0",
      final List<ViaLocationModel> vialoc = const [],
      final List<StartLocationModel> start_loc = const [],
      final List<DestinationLocationModel> dest_loc = const []})
      : _vialoc = vialoc,
        _start_loc = start_loc,
        _dest_loc = dest_loc;

  factory _$_RouteInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_RouteInfoModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String travel_time;
  @override
  @JsonKey()
  final String strt_time;
  final List<ViaLocationModel> _vialoc;
  @override
  @JsonKey()
  List<ViaLocationModel> get vialoc {
    if (_vialoc is EqualUnmodifiableListView) return _vialoc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vialoc);
  }

  final List<StartLocationModel> _start_loc;
  @override
  @JsonKey()
  List<StartLocationModel> get start_loc {
    if (_start_loc is EqualUnmodifiableListView) return _start_loc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_start_loc);
  }

  final List<DestinationLocationModel> _dest_loc;
  @override
  @JsonKey()
  List<DestinationLocationModel> get dest_loc {
    if (_dest_loc is EqualUnmodifiableListView) return _dest_loc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dest_loc);
  }

  @override
  String toString() {
    return 'RouteInfoModel(id: $id, travel_time: $travel_time, strt_time: $strt_time, vialoc: $vialoc, start_loc: $start_loc, dest_loc: $dest_loc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.travel_time, travel_time) ||
                other.travel_time == travel_time) &&
            (identical(other.strt_time, strt_time) ||
                other.strt_time == strt_time) &&
            const DeepCollectionEquality().equals(other._vialoc, _vialoc) &&
            const DeepCollectionEquality()
                .equals(other._start_loc, _start_loc) &&
            const DeepCollectionEquality().equals(other._dest_loc, _dest_loc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      travel_time,
      strt_time,
      const DeepCollectionEquality().hash(_vialoc),
      const DeepCollectionEquality().hash(_start_loc),
      const DeepCollectionEquality().hash(_dest_loc));

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
      final String travel_time,
      final String strt_time,
      final List<ViaLocationModel> vialoc,
      final List<StartLocationModel> start_loc,
      final List<DestinationLocationModel> dest_loc}) = _$_RouteInfoModel;

  factory _RouteInfoModel.fromJson(Map<String, dynamic> json) =
      _$_RouteInfoModel.fromJson;

  @override
  int get id;
  @override
  String get travel_time;
  @override
  String get strt_time;
  @override
  List<ViaLocationModel> get vialoc;
  @override
  List<StartLocationModel> get start_loc;
  @override
  List<DestinationLocationModel> get dest_loc;
  @override
  @JsonKey(ignore: true)
  _$$_RouteInfoModelCopyWith<_$_RouteInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
