// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_vehicle_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchVehicleData _$$_SearchVehicleDataFromJson(Map<String, dynamic> json) =>
    _$_SearchVehicleData(
      vehicle_info: (json['vehicle_info'] as List<dynamic>?)
              ?.map((e) => VehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SearchVehicleDataToJson(
        _$_SearchVehicleData instance) =>
    <String, dynamic>{
      'vehicle_info': instance.vehicle_info,
    };
