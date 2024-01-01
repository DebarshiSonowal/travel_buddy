import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_buddy/Models/Layout/layout_model.dart';

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
    int? trip_id,
    int? rows,
    int? columns,
    required String? message,
    @Default([]) List<LayoutModel> layouts,
  }) = _LayoutResponse;

  factory LayoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LayoutResponseFromJson(json);
  factory LayoutResponse.error(String message) => LayoutResponse(
    message: message, success: false, status: null,
  );
}