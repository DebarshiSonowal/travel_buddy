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
      platform_charge: json['platform_charge'] as int? ?? 0,
      timeout_time: json['timeout_time'] as String? ?? '0',
      fair: json['fair'] as String? ?? '0',
      insurance_charge: json['insurance_charge'] as String? ?? '0',
      counter_info: json['counter_info'] == null
          ? null
          : CustomCounter.fromJson(
              json['counter_info'] as Map<String, dynamic>),
      seats: (json['seats'] as List<dynamic>?)
              ?.map((e) => SeatData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'ticket_id': instance.ticket_id,
      'ticket_number': instance.ticket_number,
      'total_amount': instance.total_amount,
      'gst': instance.gst,
      'platform_charge': instance.platform_charge,
      'timeout_time': instance.timeout_time,
      'fair': instance.fair,
      'insurance_charge': instance.insurance_charge,
      'counter_info': instance.counter_info,
      'seats': instance.seats,
    };
