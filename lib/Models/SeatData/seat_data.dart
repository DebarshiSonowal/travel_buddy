

import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:travel_buddy/Models/User/user.dart';

part 'seat_data.freezed.dart';

part 'seat_data.g.dart';

@Freezed()
class SeatData with _$SeatData {
  const factory SeatData({
    required String? seat_selected,
    required String? seat_occupied,
    required String? seat_available,
    // required User? user,
  }) = _SeatData;

  factory SeatData.fromJson(Map<String, dynamic> json) =>
      _$SeatDataFromJson(json);
}