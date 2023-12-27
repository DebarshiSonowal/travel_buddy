// "startloc_id": "3",
//                             "startloc_name": "newloc",
//                             "reachtime": "40",
//                             "startloc_long": "34545",
//                             "startloc_lat": "222"

import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_location.freezed.dart';

part 'start_location.g.dart';

@Freezed()
class StartLocationModel with _$StartLocationModel {
  const factory StartLocationModel({
    required String? startloc_id,
    required String? startloc_name,
    required String? reachtime,
    required String? startloc_long,
    required String? startloc_lat,
  }) = _StartLocationModel;

  factory StartLocationModel.fromJson(Map<String, dynamic> json) =>
      _$StartLocationModelFromJson(json);
}


