// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LayoutResponseData _$$_LayoutResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_LayoutResponseData(
      layout: (json['layout'] as List<dynamic>?)
              ?.map((e) => LayoutModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      trip_id: json['trip_id'] as int?,
      rows: json['rows'] as int?,
      columns: json['columns'] as int?,
    );

Map<String, dynamic> _$$_LayoutResponseDataToJson(
        _$_LayoutResponseData instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'trip_id': instance.trip_id,
      'rows': instance.rows,
      'columns': instance.columns,
    };
