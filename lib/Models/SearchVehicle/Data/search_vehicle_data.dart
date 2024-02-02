//{
//     "success": true,
//     "status": 200,
//     "message": "Vehicles fetched successfully",
//     "data": {
//         "vehicle_info": [
//             {
//                 "name": "v12",
//                 "registration_no": "Adsd1123455",
//                 "model_no": 121245,
//                 "chassis_no": 122,
//                 "vehicle_pic": "http://dev.gotravelbuddy.com/v12.jpg"
//             }
//         ],
//         "counter_info": [
//             {
//                 "name": "c11",
//                 "address": "desdsf",
//                 "admin_name_id": 4,
//                 "contact_name": "asdd",
//                 "longitude": "34545",
//                 "latitude": "222",
//                 "credit_balance": "90"
//             }
//         ],
//         "route_info": [
//             {
//                 "data": {
//                     "vialoc": [
//                         {
//                             "vialoc_id": "5",
//                             "vialoc_name": "daff",
//                             "is_board": 1,
//                             "reachtime": "40",
//                             "long": "3454533",
//                             "lat": "54336665"
//                         }
//                     ],
//                     "start_loc": [
//                         {
//                             "startloc_id": "3",
//                             "startloc_name": "newloc",
//                             "reachtime": "40",
//                             "startloc_long": "34545",
//                             "startloc_lat": "222"
//                         }
//                     ],
//                     "dest_loc": [
//                         {
//                             "destloc_id": "4",
//                             "destloc_name": "newloc",
//                             "reachtime": "40",
//                             "destloc_long": "34545",
//                             "destloc_lat": "222"
//                         }
//                     ]
//                 }
//             }
//         ]
//     }
// }

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



