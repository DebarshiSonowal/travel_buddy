import 'package:freezed_annotation/freezed_annotation.dart';

//  "trip_tickets_seat_id": 5,
//                 "seat_no": "",
//                 "passenger_name": "dd",
//                 "passenger_contact": "99738943",
//                 "is_insured": "1"

part 'seat_data.freezed.dart';

part 'seat_data.g.dart';

@Freezed()
class SeatData with _$SeatData {
  const factory SeatData({
    @Default(0) int trip_tickets_seat_id,
    @Default("") String seat_no,
    @Default("") String passenger_name,
    @Default("") String passenger_contact,
    @Default("") String is_insured,

  }) = _SeatData;

  factory SeatData.fromJson(Map<String, dynamic> json) =>
      _$SeatDataFromJson(json);
}