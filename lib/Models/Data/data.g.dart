// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      ticket_id: json['ticket_id'] as int? ?? 0,
      ticket_number: json['ticket_number'] as String? ?? "",
      total_amount: json['total_amount'] as int? ?? 0,
      gst: json['gst'] as int? ?? 0,
      timeout_time: json['timeout_time'] as String? ?? '0',
      seatData: (json['seatData'] as List<dynamic>?)
              ?.map((e) => CustomSeatData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'ticket_id': instance.ticket_id,
      'ticket_number': instance.ticket_number,
      'total_amount': instance.total_amount,
      'gst': instance.gst,
      'timeout_time': instance.timeout_time,
      'seatData': instance.seatData,
    };
