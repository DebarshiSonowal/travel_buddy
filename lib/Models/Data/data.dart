// {
// "success": true,
// "status": 200,
// "message": "",
// "data": {
// "ticket_id": 3,
// "ticket_number": "GIUS3VZSXBVL",
// "seats": [
// {
// "trip_tickets_seat_id": 5,
// "seat_no": "",
// "passenger_name": "dd",
// "passenger_contact": "99738943",
// "is_insured": "1"
// },
// {
// "trip_tickets_seat_id": 6,
// "seat_no": "",
// "passenger_name": "kk",
// "passenger_contact": "3243278423",
// "is_insured": "1"
// }
// ],
// "gst": 0,
// "total_amount": 200,
// "timeout_time": "600"
// }
// }

import 'package:freezed_annotation/freezed_annotation.dart';

import '../SeatData/seat_data.dart';

part 'data.freezed.dart';

part 'data.g.dart';

@Freezed()
class CustomSeatData with _$CustomSeatData {
  const factory CustomSeatData({
    @Default(0) int ticket_id,
    @Default("") String ticket_number,
    @Default(0) int total_amount,
    @Default(0) int gst,
    @Default('0') String timeout_time,
    @Default([]) List<CustomSeatData> seatData,
  }) = _Data;

  factory CustomSeatData.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
