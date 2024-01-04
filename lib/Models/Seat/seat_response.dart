
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_buddy/Models/Seat/seat.dart';

part 'seat_response.freezed.dart';

part 'seat_response.g.dart';

@Freezed()
class SeatResponse with _$SeatResponse {
  const factory SeatResponse({
    @Default(false) bool success,
    required String? message,
    @Default([]) List<Seat> seats,

  }) = _SeatResponse;

  factory SeatResponse.fromJson(Map<String, dynamic> json) =>
      _$SeatResponseFromJson(json);

  factory SeatResponse.error(String message) => SeatResponse(
    message: message,
  );
}