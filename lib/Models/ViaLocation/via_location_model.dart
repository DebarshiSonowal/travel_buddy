// {
//                             "vialoc_id": "5",
//                             "vialoc_name": "daff",
//                             "is_board": 1,
//                             "reachtime": "40",
//                             "long": "3454533",
//                             "lat": "54336665"
//                         }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'via_location_model.freezed.dart';

part 'via_location_model.g.dart';

@Freezed()
class ViaLocationModel with _$ViaLocationModel {
  const factory ViaLocationModel({
    required int? is_board,
    required String? vialoc_id,
    required String? vialoc_name,
    required String? long,
    required String? lat,
    required String? reachtime,
  }) = _ViaLocationModel;

  factory ViaLocationModel.fromJson(Map<String, dynamic> json) =>
      _$ViaLocationModelFromJson(json);
}