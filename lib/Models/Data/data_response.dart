// {
// "success": true,
// "status": 200,
// "message": "",
// "data": {
// "ticket_id": 1,
// "total_amount": 200
// }
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_buddy/Models/Data/data.dart';

part 'data_response.freezed.dart';

part 'data_response.g.dart';

@Freezed()
class DataResponse with _$DataResponse {
  const factory DataResponse({
    @Default(false) bool success,
    int? status,
    required String? message,
    CustomSeatData? data
  }) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);

  factory DataResponse.error(String message) => DataResponse(
    message: message,
  );
}
