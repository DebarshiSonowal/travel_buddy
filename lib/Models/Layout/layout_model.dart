
// "seat_status": "empty",
// "row": 1,
// "column": 2,
// "image": "http://dev.gotravelbuddy.com/assets/image/empty.png",
// "is_seat": false,
// "label": ""
// },

import 'package:freezed_annotation/freezed_annotation.dart';

part 'layout_model.freezed.dart';

part 'layout_model.g.dart';

@Freezed()
class LayoutModel with _$LayoutModel {
  const factory LayoutModel({
    required int? row,
    required int? column,
    required bool? is_seat,
    required String? seat_status,
    required String? image,
    required String? label,
  }) = _LayoutModel;

  factory LayoutModel.fromJson(Map<String, dynamic> json) =>
      _$LayoutModelFromJson(json);

}