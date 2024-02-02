

import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat_image.freezed.dart';

part 'seat_image.g.dart';

@Freezed()
class SeatImage with _$SeatImage {
  const factory SeatImage({
    String? seat_selected,
    String? seat_occupied,
    String? seat_available,

  }) = _SeatImage;

  factory SeatImage.fromJson(Map<String, dynamic> json) =>
      _$SeatImageFromJson(json);

}