//{
//     "success": true,
//     "status": 200,
//     "message": "Vehicles fetched successfully",
//     "data": {
//         "vehicle_info": [
//             {
//                 "name": "TATA Magic Express 10 Seater",
//                 "registration_no": "AS 10 1123",
//                 "model_no": "9988",
//                 "chassis_no": "111111",
//                 "vehicle_pic": "https://dev.gotravelbuddy.com/TATAMagicExpress10Seater.jpg",
//                 "counter_info": [],
//                 "total_seats": "10",
//                 "rating": 5,
//                 "route_info": [
//                     {
//                         "id": 1,
//                         "strt_time": "08:30:00",
//                         "end_time": "7 hours",
//                         "data": {
//                             "vialoc": [
//                                 {
//                                     "vialoc_id": "8",
//                                     "vialoc_name": "ASTC Golaghat",
//                                     "is_board": 1,
//                                     "reachdate": {
//                                         "error": "Undefined array key 1"
//                                     },
//                                     "reachtime": "360",
//                                     "long": "93.97102256159307",
//                                     "lat": "26.511908590482385,"
//                                 },
//                                 {
//                                     "startloc_id": "7",
//                                     "startloc_name": "ISBT",
//                                     "startloc_long": "91.722528852312",
//                                     "startloc_lat": "26.116750212935415"
//                                 },
//                                 {
//                                     "destloc_id": "9",
//                                     "destloc_name": "ISBT",
//                                     "reachdate": {
//                                         "error": "Undefined array key 1"
//                                     },
//                                     "reachtime": "360",
//                                     "destloc_long": "91.722528852312",
//                                     "destloc_lat": "26.116750212935415"
//                                 }
//                             ],
//                             "start_loc": [],
//                             "dest_loc": []
//                         }
//                     }
//                 ]
//             }
//         ]
//     }
// }

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
    @Default("0") String travel_time,
    @Default("0") String strt_time,
    @Default([]) List<ViaLocationModel> vialoc,
    @Default([]) List<StartLocationModel> start_loc,
    @Default([]) List<DestinationLocationModel> dest_loc,
  }) = _RouteInfoModel;

  factory RouteInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RouteInfoModelFromJson(json);
}