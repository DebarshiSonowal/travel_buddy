

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_buddy/Models/SeatData/seat_data.dart';
import 'package:travel_buddy/Models/User/user.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';

@Freezed()
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @Default(false) bool status,
    required String? message,
    String? token,
    User? user,
    @Default([]) List<SeatData> seats,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  factory LoginResponse.error(String message) => LoginResponse(
    message: message,
  );
}