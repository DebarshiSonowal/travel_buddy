import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';
//         "vehicle_info": [
//             {
//                 "name": "v12",
//                 "registration_no": "Adsd1123455",
//                 "model_no": 121245,
//                 "chassis_no": 122,
//                 "vehicle_pic": "http://dev.gotravelbuddy.com/v12.jpg"
//             }
@Freezed()
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required int? chassis_no,
    required int? model_no,
    required String? name,
    required String? registration_no,
    required String? vehicle_pic,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}


