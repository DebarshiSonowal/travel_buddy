import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

part 'location_model.g.dart';

@Freezed()
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required int? id,
    required int? is_boarding,
    required int? is_destination,
    required int? status,
    required String? full_name,
    required String? display_name,
    required String? longitude,
    required String? latitude,
    required String? created_at,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

// "id": 3,
// "full_name": "newww",
// "display_name": "newloc",
// "longitude": "34545",
// "latitude": "222",
// "is_boarding": 1,
// "is_destination": 1,
// "status": 1,
// "created_at": "2023-11-25 14:47:35",
// "updated_at": null
