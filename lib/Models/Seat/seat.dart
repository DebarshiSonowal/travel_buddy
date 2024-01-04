import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat.freezed.dart';

part 'seat.g.dart';

@Freezed()
class Seat with _$Seat {
  const factory Seat({
    required int? row,
    required int? column,

  }) = _Seat;

  factory Seat.fromJson(Map<String, dynamic> json) =>
      _$SeatFromJson(json);

}