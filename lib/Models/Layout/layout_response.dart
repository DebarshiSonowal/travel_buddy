import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_buddy/Models/Layout/layout_model.dart';

import 'data/layout_response_data.dart';

part 'layout_response.freezed.dart';

part 'layout_response.g.dart';

//"trip_id": 1,
//         "rows": 3,
//         "columns": 3,

@Freezed()
class LayoutResponse with _$LayoutResponse {
  const factory LayoutResponse({
    required bool? success,
    required int? status,
    required String? message,
    LayoutResponseData? data,
  }) = _LayoutResponse;

  factory LayoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LayoutResponseFromJson(json);
  factory LayoutResponse.error(String message) => LayoutResponse(
    message: message, success: false, status: null,
  );
}