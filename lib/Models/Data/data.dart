// "platform_charge": 0,
// "insurance_charge": "100",
// "fair": "4000.00",
// "total_amount": 4200,
// "timeout_time": "600"

import 'package:freezed_annotation/freezed_annotation.dart';

import '../CustomCounter/custom_counter.dart';
import 'SeatData/seat_data.dart';
// import '../SeatData/seat_data.dart';

part 'data.freezed.dart';

part 'data.g.dart';

@Freezed()
class CustomSeatData with _$CustomSeatData {
  const factory CustomSeatData({
    @Default(0) int ticket_id,
    @Default("") String ticket_number,
    @Default(0) int total_amount,
    @Default(0) int gst,
    @Default(0) int platform_charge,
    @Default('0') String timeout_time,
    @Default('0') String fair,
    @Default('0') String insurance_charge,
    CustomCounter? counter_info,
    @Default([]) List<SeatData> seats,
  }) = _Data;

  factory CustomSeatData.fromJson(Map<String, dynamic> json) =>
      _$CustomSeatDataFromJson(json);
}
