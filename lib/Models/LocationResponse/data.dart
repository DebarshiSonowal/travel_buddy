import 'package:freezed_annotation/freezed_annotation.dart';

import '../Location/location_model.dart';

part 'data.freezed.dart';

part 'data.g.dart';
@Freezed()
class Data with _$Data {
  const factory Data({
    @Default([]) List<LocationModel> location,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}