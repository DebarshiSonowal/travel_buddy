import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_response.freezed.dart';

part 'generic_response.g.dart';

@Freezed()
class GenericResponse with _$GenericResponse {
  const factory GenericResponse({
    @Default(false) bool status,
    required String? message,
    String? token,
  }) = _GenericResponse;

  factory GenericResponse.fromJson(Map<String, dynamic> json) =>
      _$GenericResponseFromJson(json);

  factory GenericResponse.error(String message) => GenericResponse(
        message: message,
      );
}
