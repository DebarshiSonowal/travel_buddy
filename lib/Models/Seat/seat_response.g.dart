// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeatResponse _$$_SeatResponseFromJson(Map<String, dynamic> json) =>
    _$_SeatResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      seats: (json['seats'] as List<dynamic>?)
              ?.map((e) => Seat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SeatResponseToJson(_$_SeatResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'seats': instance.seats,
    };
