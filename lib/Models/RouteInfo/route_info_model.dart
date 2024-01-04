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
    @Default(0) int travel_time,
    @Default("0") String strt_time,
    @Default([]) List<ViaLocationModel> vialoc,
    @Default([]) List<StartLocationModel> start_loc,
    @Default([]) List<DestinationLocationModel> dest_loc,
  }) = _RouteInfoModel;

  factory RouteInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RouteInfoModelFromJson(json);
}