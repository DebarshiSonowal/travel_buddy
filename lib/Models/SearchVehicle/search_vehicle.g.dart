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
      vehicle_info: (json['data']['vehicle_info'] as List<dynamic>?)
              ?.map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SearchVehicleResponseToJson(
        _$_SearchVehicleResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'vehicle_info': instance.vehicle_info,
    };
