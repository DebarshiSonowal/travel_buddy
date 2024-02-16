//         "counter_info": [
//             {
//                 "name": "c11",
//                 "address": "desdsf",
//                 "admin_name_id": 4,
//                 "contact_name": "asdd",
//                 "longitude": "34545",
//                 "latitude": "222",
//                 "credit_balance": "90"
//             }


import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_info.freezed.dart';

part 'counter_info.g.dart';

@Freezed()
class CounterInfoModel with _$CounterInfoModel {
  const factory CounterInfoModel({
    required int? admin_name_id,
    required String? name,
    required String? address,
    required String? longitude,
    required String? latitude,
    required String? contact_name,
    required String? credit_balance,
  }) = _CounterInfoModel;

  factory CounterInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CounterInfoModelFromJson(json);
}
