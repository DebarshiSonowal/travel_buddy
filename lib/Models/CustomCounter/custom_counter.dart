// "counter_info": {
// "id": 1,
// "name": "c11",
// "address": "desdsf",
// "admin_name_id": 4,
// "contact_name": "asdd",
// "contact_number": 234554,
// "longitude": "34545",
// "latitude": "222",
// "credit_balance": "90",
// "status": 1,
// "created_at": "2023-11-08 17:23:03",
// "updated_at": null
// },

import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_counter.freezed.dart';

part 'custom_counter.g.dart';

@Freezed()
class CustomCounter with _$CustomCounter {
  const factory CustomCounter({
    required int? id,
    required int? admin_name_id,
    required int? contact_number,
    required String? name,
    required String? address,
    required String? longitude,
    required String? latitude,
    required String? contact_name,
    required String? credit_balance,
    required String? status,
    required String? created_at,
  }) = _CustomCounter;

  factory CustomCounter.fromJson(Map<String, dynamic> json) =>
      _$CustomCounterFromJson(json);
}