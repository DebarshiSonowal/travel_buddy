// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      id: json['id'] as int?,
      is_boarding: json['is_boarding'] as int?,
      is_destination: json['is_destination'] as int?,
      status: json['status'] as int?,
      full_name: json['full_name'] as String?,
      display_name: json['display_name'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_boarding': instance.is_boarding,
      'is_destination': instance.is_destination,
      'status': instance.status,
      'full_name': instance.full_name,
      'display_name': instance.display_name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'created_at': instance.created_at,
    };
