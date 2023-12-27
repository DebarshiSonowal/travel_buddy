// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartLocationModel _$$_StartLocationModelFromJson(
        Map<String, dynamic> json) =>
    _$_StartLocationModel(
      startloc_id: json['startloc_id'] as String?,
      startloc_name: json['startloc_name'] as String?,
      reachtime: json['reachtime'] as String?,
      startloc_long: json['startloc_long'] as String?,
      startloc_lat: json['startloc_lat'] as String?,
    );

Map<String, dynamic> _$$_StartLocationModelToJson(
        _$_StartLocationModel instance) =>
    <String, dynamic>{
      'startloc_id': instance.startloc_id,
      'startloc_name': instance.startloc_name,
      'reachtime': instance.reachtime,
      'startloc_long': instance.startloc_long,
      'startloc_lat': instance.startloc_lat,
    };
