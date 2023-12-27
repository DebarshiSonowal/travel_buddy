// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DestinationLocationModel _$$_DestinationLocationModelFromJson(
        Map<String, dynamic> json) =>
    _$_DestinationLocationModel(
      destloc_id: json['destloc_id'] as String?,
      destloc_name: json['destloc_name'] as String?,
      reachtime: json['reachtime'] as String?,
      destloc_long: json['destloc_long'] as String?,
      destloc_lat: json['destloc_lat'] as String?,
    );

Map<String, dynamic> _$$_DestinationLocationModelToJson(
        _$_DestinationLocationModel instance) =>
    <String, dynamic>{
      'destloc_id': instance.destloc_id,
      'destloc_name': instance.destloc_name,
      'reachtime': instance.reachtime,
      'destloc_long': instance.destloc_long,
      'destloc_lat': instance.destloc_lat,
    };
