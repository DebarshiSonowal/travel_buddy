import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:travel_buddy/Models/generic_response.dart';

class ApiProvider {
  ApiProvider._();

  static final ApiProvider instance = ApiProvider._();

  static const waitTime = 10000;

  String endpoint = "https://dev.gotravelbuddy.com";
  String path = "api";
  Dio? dio;

  //LOGIN API

  Future<GenericResponse> sendOTP(String mobile_no) async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          // 'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/customer/generateOtp";
    dio = Dio(option);
    debugPrint(url.toString());
    var data = {
      "mobile_no": mobile_no,
    };
    debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.post(
        url,
        data: jsonEncode(data),
      );
      debugPrint("sendOTP response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return GenericResponse.fromJson(response?.data);
      } else {
        debugPrint("sendOTP error response: ${response?.data}");
        return GenericResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint("sendOTP  error: ${e.error} ${e.message}");
      return GenericResponse.error(e.message ?? "");
    }
  }

  Future<GenericResponse> login(mobile_no, otp) async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          // 'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/customer/login";
    dio = Dio(option);
    var data = {
      "mobile_no": mobile_no,
      "otp": otp,
    };
    debugPrint(url.toString());
    debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.post(
        url,
        data: jsonEncode(data),
      );
      debugPrint("login response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return GenericResponse.fromJson(response?.data);
      } else {
        debugPrint("login error response: ${response?.data}");
        return GenericResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint("login  error: ${e.error} ${e.message}");
      return GenericResponse.error(e.message ?? "");
    }
  }

  //AUTHORIZED




}
