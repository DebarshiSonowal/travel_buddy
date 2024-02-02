// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LayoutResponseData _$LayoutResponseDataFromJson(Map<String, dynamic> json) {
  return _LayoutResponseData.fromJson(json);
}

/// @nodoc
mixin _$LayoutResponseData {
  List<LayoutModel> get layout => throw _privateConstructorUsedError;
  int? get trip_id => throw _privateConstructorUsedError;
  int? get rows => throw _privateConstructorUsedError;
  int? get columns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayoutResponseDataCopyWith<LayoutResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutResponseDataCopyWith<$Res> {
  factory $LayoutResponseDataCopyWith(
          LayoutResponseData value, $Res Function(LayoutResponseData) then) =
      _$LayoutResponseDataCopyWithImpl<$Res, LayoutResponseData>;
  @useResult
  $Res call({List<LayoutModel> layout, int? trip_id, int? rows, int? columns});
}

/// @nodoc
class _$LayoutResponseDataCopyWithImpl<$Res, $Val extends LayoutResponseData>
    implements $LayoutResponseDataCopyWith<$Res> {
  _$LayoutResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
    Object? trip_id = freezed,
    Object? rows = freezed,
    Object? columns = freezed,
  }) {
    return _then(_value.copyWith(
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as List<LayoutModel>,
      trip_id: freezed == trip_id
          ? _value.trip_id
          : trip_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as int?,
      columns: freezed == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LayoutResponseDataCopyWith<$Res>
    implements $LayoutResponseDataCopyWith<$Res> {
  factory _$$_LayoutResponseDataCopyWith(_$_LayoutResponseData value,
          $Res Function(_$_LayoutResponseData) then) =
      __$$_LayoutResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LayoutModel> layout, int? trip_id, int? rows, int? columns});
}

/// @nodoc
class __$$_LayoutResponseDataCopyWithImpl<$Res>
    extends _$LayoutResponseDataCopyWithImpl<$Res, _$_LayoutResponseData>
    implements _$$_LayoutResponseDataCopyWith<$Res> {
  __$$_LayoutResponseDataCopyWithImpl(
      _$_LayoutResponseData _value, $Res Function(_$_LayoutResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
    Object? trip_id = freezed,
    Object? rows = freezed,
    Object? columns = freezed,
  }) {
    return _then(_$_LayoutResponseData(
      layout: null == layout
          ? _value._layout
          : layout // ignore: cast_nullable_to_non_nullable
              as List<LayoutModel>,
      trip_id: freezed == trip_id
          ? _value.trip_id
          : trip_id // ignore: cast_nullable_to_non_nullable
              as int?,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as int?,
      columns: freezed == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LayoutResponseData implements _LayoutResponseData {
  const _$_LayoutResponseData(
      {final List<LayoutModel> layout = const [],
      this.trip_id,
      this.rows,
      this.columns})
      : _layout = layout;

  factory _$_LayoutResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_LayoutResponseDataFromJson(json);

  final List<LayoutModel> _layout;
  @override
  @JsonKey()
  List<LayoutModel> get layout {
    if (_layout is EqualUnmodifiableListView) return _layout;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layout);
  }

  @override
  final int? trip_id;
  @override
  final int? rows;
  @override
  final int? columns;

  @override
  String toString() {
    return 'LayoutResponseData(layout: $layout, trip_id: $trip_id, rows: $rows, columns: $columns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LayoutResponseData &&
            const DeepCollectionEquality().equals(other._layout, _layout) &&
            (identical(other.trip_id, trip_id) || other.trip_id == trip_id) &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.columns, columns) || other.columns == columns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_layout), trip_id, rows, columns);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LayoutResponseDataCopyWith<_$_LayoutResponseData> get copyWith =>
      __$$_LayoutResponseDataCopyWithImpl<_$_LayoutResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LayoutResponseDataToJson(
      this,
    );
  }
}

abstract class _LayoutResponseData implements LayoutResponseData {
  const factory _LayoutResponseData(
      {final List<LayoutModel> layout,
      final int? trip_id,
      final int? rows,
      final int? columns}) = _$_LayoutResponseData;

  factory _LayoutResponseData.fromJson(Map<String, dynamic> json) =
      _$_LayoutResponseData.fromJson;

  @override
  List<LayoutModel> get layout;
  @override
  int? get trip_id;
  @override
  int? get rows;
  @override
  int? get columns;
  @override
  @JsonKey(ignore: true)
  _$$_LayoutResponseDataCopyWith<_$_LayoutResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
