// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'via_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViaLocationModel _$$_ViaLocationModelFromJson(Map<String, dynamic> json) =>
    _$_ViaLocationModel(
      is_board: json['is_board'] as int?,
      vialoc_id: json['vialoc_id'] as String?,
      vialoc_name: json['vialoc_name'] as String?,
      long: json['long'] as String?,
      lat: json['lat'] as String?,
      reachtime: json['reachtime'] as String?,
    );

Map<String, dynamic> _$$_ViaLocationModelToJson(_$_ViaLocationModel instance) =>
    <String, dynamic>{
      'is_board': instance.is_board,
      'vialoc_id': instance.vialoc_id,
      'vialoc_name': instance.vialoc_name,
      'long': instance.long,
      'lat': instance.lat,
      'reachtime': instance.reachtime,
    };
