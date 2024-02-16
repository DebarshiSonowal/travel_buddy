// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeatData _$$_SeatDataFromJson(Map<String, dynamic> json) => _$_SeatData(
      trip_tickets_seat_id: json['trip_tickets_seat_id'] as int? ?? 0,
      seat_no: json['seat_no'] as String? ?? "",
      passenger_name: json['passenger_name'] as String? ?? "",
      passenger_contact: json['passenger_contact'] as String? ?? "",
      is_insured: json['is_insured'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SeatDataToJson(_$_SeatData instance) =>
    <String, dynamic>{
      'trip_tickets_seat_id': instance.trip_tickets_seat_id,
      'seat_no': instance.seat_no,
      'passenger_name': instance.passenger_name,
      'passenger_contact': instance.passenger_contact,
      'is_insured': instance.is_insured,
    };
