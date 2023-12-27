// {
// //                             "destloc_id": "4",
// //                             "destloc_name": "newloc",
// //                             "reachtime": "40",
// //                             "destloc_long": "34545",
// //                             "destloc_lat": "222"
// //                         }
import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_location.freezed.dart';

part 'destination_location.g.dart';

@Freezed()
class DestinationLocationModel with _$DestinationLocationModel {
  const factory DestinationLocationModel({
    required String? destloc_id,
    required String? destloc_name,
    required String? reachtime,
    required String? destloc_long,
    required String? destloc_lat,
  }) = _DestinationLocationModel;

  factory DestinationLocationModel.fromJson(Map<String, dynamic> json) =>
      _$DestinationLocationModelFromJson(json);
}