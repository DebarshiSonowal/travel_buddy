// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RouteInfoModel _$$_RouteInfoModelFromJson(Map<String, dynamic> json) =>
    _$_RouteInfoModel(
      viaLocation: (json['data']['vialoc'] as List<dynamic>?)
              ?.map((e) => ViaLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      startLocation: (json['data']['start_loc'] as List<dynamic>?)
              ?.map(
                  (e) => StartLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      destLocation: (json['data']['dest_loc'] as List<dynamic>?)
              ?.map((e) =>
                  DestinationLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RouteInfoModelToJson(_$_RouteInfoModel instance) =>
    <String, dynamic>{
      'viaLocation': instance.viaLocation,
      'startLocation': instance.startLocation,
      'destLocation': instance.destLocation,
    };
