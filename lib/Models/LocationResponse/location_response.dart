import 'package:freezed_annotation/freezed_annotation.dart';

import '../Location/location_model.dart';

part 'location_response.freezed.dart';

part 'location_response.g.dart';

//  {success: true, status: 200,
//  message: Destination Locations fetched successfully,
//  data: {
//  location: [
//  {id: 4, full_name: newww222, display_name: newloc2, longitude: 34545, latitude: 5433}
//  ]
//  }
//  }

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
