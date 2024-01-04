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

part 'data.freezed.dart';

part 'data.g.dart';

@Freezed()
class Data with _$Data {
  const factory Data({
    @Default(0) int ticket_id,
    @Default(0) int total_amount,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
