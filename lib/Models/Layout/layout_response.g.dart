// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LayoutResponse _$$_LayoutResponseFromJson(Map<String, dynamic> json) =>
    _$_LayoutResponse(
      success: json['success'] as bool?,
      status: json['status'] as int?,
      trip_id: json['data']['trip_id'] as int?,
      rows: json['data']['rows'] as int?,
      columns: json['data']['columns'] as int?,
      message: json['message'] as String?,
      layouts: (json['data']['layout'] as List<dynamic>?)
              ?.map((e) => LayoutModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LayoutResponseToJson(_$_LayoutResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'trip_id': instance.trip_id,
      'rows': instance.rows,
      'columns': instance.columns,
      'message': instance.message,
      'layouts': instance.layouts,
    };
