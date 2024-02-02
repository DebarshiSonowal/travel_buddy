// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LayoutResponse _$$_LayoutResponseFromJson(Map<String, dynamic> json) =>
    _$_LayoutResponse(
      success: json['success'] as bool?,
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LayoutResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LayoutResponseToJson(_$_LayoutResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
