//
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../Vehicle/vehicle_model.dart';

part 'search_vehicle_data.freezed.dart';

part 'search_vehicle_data.g.dart';

@Freezed()
class SearchVehicleData with _$SearchVehicleData {
  const factory SearchVehicleData({
    @Default([]) List<VehicleModel> vehicle_info,

  }) = _SearchVehicleData;

  factory SearchVehicleData.fromJson(Map<String, dynamic> json) =>
      _$SearchVehicleDataFromJson(json);

}


//
// part 'search_vehicle_data.freezed.dart';
//
// part 'search_vehicle_data.g.dart';
//
// @Freezed()
// class SearchVehicleData with _$SearchVehicleData {
//   const factory SearchVehicleData({
//     @Default([]) List<VehicleModel> vehicle_info,
//
//   }) = _SearchVehicleData;
//
//   factory SearchVehicleData.fromJson(Map<String, dynamic> json) =>
//       _$SearchVehicleDataFromJson(json);
//
//
// }



