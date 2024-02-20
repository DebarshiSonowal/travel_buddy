//

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_buddy/Models/RouteInfo/route_info_model.dart';
import 'package:travel_buddy/Models/Vehicle/vehicle_model.dart';

import '../Counter/counter_info.dart';
import 'Data/search_vehicle_data.dart';

part 'search_vehicle.freezed.dart';

part 'search_vehicle.g.dart';

@Freezed()
class SearchVehicleResponse with _$SearchVehicleResponse {
  const factory SearchVehicleResponse({
    @Default(false) bool success,
    required String? message,
    SearchVehicleData? data,

  }) = _SearchVehicleResponse;

  factory SearchVehicleResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchVehicleResponseFromJson(json);

  factory SearchVehicleResponse.error(String message) => SearchVehicleResponse(
    message: message,
  );
}
