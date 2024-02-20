// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleModel _$$_VehicleModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleModel(
      chassis_no: json['chassis_no'] as String?,
      model_no: json['model_no'] as String?,
      total_seats: json['total_seats'] as String?,
      rating: json['rating'] as int?,
      name: json['name'] as String?,
      registration_no: json['registration_no'] as String?,
      vehicle_pic: json['vehicle_pic'] as String?,
      counter_info: (json['counter_info'] as List<dynamic>?)
              ?.map((e) => CounterInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      route_info: (json['route_info'] as List<dynamic>?)
              ?.map((e) => RouteInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VehicleModelToJson(_$_VehicleModel instance) =>
    <String, dynamic>{
      'chassis_no': instance.chassis_no,
      'model_no': instance.model_no,
      'total_seats': instance.total_seats,
      'rating': instance.rating,
      'name': instance.name,
      'registration_no': instance.registration_no,
      'vehicle_pic': instance.vehicle_pic,
      'counter_info': instance.counter_info,
      'route_info': instance.route_info,
    };
