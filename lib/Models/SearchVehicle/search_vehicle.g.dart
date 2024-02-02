// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchVehicleResponse _$$_SearchVehicleResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchVehicleResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SearchVehicleData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchVehicleResponseToJson(
        _$_SearchVehicleResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
