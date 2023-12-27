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
      vehicleInfo: (json['vehicleInfo'] as List<dynamic>?)
              ?.map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      counterInfo: (json['counterInfo'] as List<dynamic>?)
              ?.map((e) => CounterInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      routeInfo: (json['routeInfo'] as List<dynamic>?)
              ?.map((e) => RouteInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SearchVehicleResponseToJson(
        _$_SearchVehicleResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'vehicleInfo': instance.vehicleInfo,
      'counterInfo': instance.counterInfo,
      'routeInfo': instance.routeInfo,
    };
