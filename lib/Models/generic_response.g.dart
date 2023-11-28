// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenericResponse _$$_GenericResponseFromJson(Map<String, dynamic> json) =>
    _$_GenericResponse(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_GenericResponseToJson(_$_GenericResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
    };
