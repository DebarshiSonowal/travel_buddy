import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_model.dart';

part 'location_response.freezed.dart';

part 'location_response.g.dart';

@Freezed()
class LocationResponse with _$LocationResponse {
  const factory LocationResponse({
    @Default(false) bool success,
    required String? message,
    @Default([]) List<LocationModel> location,
  }) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  factory LocationResponse.error(String message) => LocationResponse(
    message: message,
  );
}
