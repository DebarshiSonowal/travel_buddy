import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_buddy/Models/ViaLocation/via_location_model.dart';

import '../DestinationLocation/destination_location.dart';
import '../StartLocation/start_location.dart';


part 'route_info_model.freezed.dart';

part 'route_info_model.g.dart';

@Freezed()
class RouteInfoModel with _$RouteInfoModel {
  const factory RouteInfoModel({
    @Default(0) int id,
    @Default([]) List<ViaLocationModel> viaLocation,
    @Default([]) List<StartLocationModel> startLocation,
    @Default([]) List<DestinationLocationModel> destLocation,
  }) = _RouteInfoModel;

  factory RouteInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RouteInfoModelFromJson(json);
}