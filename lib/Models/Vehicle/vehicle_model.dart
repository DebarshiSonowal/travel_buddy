

import 'package:freezed_annotation/freezed_annotation.dart';

import '../Counter/counter_info.dart';
import '../RouteInfo/route_info_model.dart';

part 'vehicle_model.freezed.dart';

part 'vehicle_model.g.dart';

@Freezed()
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    required String? chassis_no,
    required String? model_no,
    required String? total_seats,
    required int? rating,
    required String? name,
    required String? registration_no,
    required String? vehicle_pic,
    @Default([]) List<CounterInfoModel> counter_info,
    @Default([]) List<RouteInfoModel> route_info,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);
}


