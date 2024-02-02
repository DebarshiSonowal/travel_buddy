// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RouteInfoModel _$$_RouteInfoModelFromJson(Map<String, dynamic> json) =>
    _$_RouteInfoModel(
      id: json['id'] as int? ?? 0,
      travel_time: json['travel_time'] as String? ?? "0",
      strt_time: json['strt_time'] as String? ?? "0",
      vialoc: (json['vialoc'] as List<dynamic>?)
              ?.map((e) => ViaLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      start_loc: (json['start_loc'] as List<dynamic>?)
              ?.map(
                  (e) => StartLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dest_loc: (json['dest_loc'] as List<dynamic>?)
              ?.map((e) =>
                  DestinationLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RouteInfoModelToJson(_$_RouteInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'travel_time': instance.travel_time,
      'strt_time': instance.strt_time,
      'vialoc': instance.vialoc,
      'start_loc': instance.start_loc,
      'dest_loc': instance.dest_loc,
    };
