import 'package:freezed_annotation/freezed_annotation.dart';

import '../layout_model.dart';

part 'layout_response_data.freezed.dart';

part 'layout_response_data.g.dart';

@Freezed()
class LayoutResponseData with _$LayoutResponseData {
  const factory LayoutResponseData({
    @Default([]) List<LayoutModel> layout,
    int? trip_id,
    int? rows,
    int? columns,
  }) = _LayoutResponseData;

  factory LayoutResponseData.fromJson(Map<String, dynamic> json) =>
      _$LayoutResponseDataFromJson(json);
}
