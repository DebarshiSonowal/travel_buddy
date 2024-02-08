import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_buddy/Models/Data/data_response.dart';
import 'package:travel_buddy/Models/Generic/generic_response.dart';
import 'package:travel_buddy/Models/Layout/layout_response.dart';
import 'package:travel_buddy/Models/SearchVehicle/search_vehicle.dart';

import '../Helper/storage.dart';
import '../Models/LocationResponse/location_response.dart';
import '../Models/Login/login_response.dart';
import '../Models/Seat/seat_response.dart';

class ApiProvider {
  // ApiProvider._();
  //
  // static final ApiProvider instance = ApiProvider._();

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
      debugPrint("sendOTP  error: ${e.error} ${e.response?.data} ${e.message}");
      return GenericResponse.error(e.response?.data['message'] ?? "");
    }
  }

  Future<LoginResponse> login(mobile_no, otp) async {
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
        return LoginResponse.fromJson(response?.data);
      } else {
        debugPrint("login error response: ${response?.data}");
        return LoginResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint("login  error: ${e.error} ${e.response?.data} ${e.message}");
      return LoginResponse.error(e.response?.data['message']??e.message);
    }
  }

  Future<GenericResponse> logOut() async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/logout";
    dio = Dio(option);
    // var data = {
    //   "mobile_no": mobile_no,
    //   "otp": otp,
    // };
    debugPrint(url.toString());
    // debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.post(
        url,
        // data: jsonEncode(data),
      );
      debugPrint("logout response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return GenericResponse.fromJson(response?.data);
      } else {
        debugPrint("logout error response: ${response?.data}");
        return GenericResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint("logout  error: ${e.error} ${e.message}");
      return GenericResponse.error(e.message ?? "");
    }
  }

  //AUTHORIZED
  Future<LocationResponse> searchFrom() async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/search/from";
    dio = Dio(option);
    debugPrint(url.toString());
    debugPrint('Bearer ${Storage.instance.token}');

    try {
      Response? response = await dio?.get(
        url,
        // data: jsonEncode(data),
      );
      debugPrint("searchFrom response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return LocationResponse.fromJson(response?.data);
      } else {
        debugPrint("searchFrom error response: ${response?.data}");
        return LocationResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint(
          "searchFrom  error: ${e.error} ${e.response?.data} ${e.message}");
      return LocationResponse.error(
          e.response?.data['message'] ?? e.message ?? "");
    }
  }

  Future<LocationResponse> searchTo() async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/search/to";
    dio = Dio(option);
    debugPrint(url.toString());
    // debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.get(
        url,
        // data: jsonEncode(data),
      );
      debugPrint("searchTo response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return LocationResponse.fromJson(response?.data);
      } else {
        debugPrint("searchTo error response: ${response?.data}");
        return LocationResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint(
          "searchTo  error: ${e.error} ${e.response?.data} ${e.message}");
      return LocationResponse.error(
          e.response?.data['message'] ?? e.message ?? "");
    }
  }

  Future<SearchVehicleResponse> searchVehicle(
    String date,
    String strloc,
    String endloc,
  ) async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/search/vehicle";
    dio = Dio(option);
    debugPrint(url.toString());
    debugPrint("My Data $date $strloc $endloc }");
    var data = {
      'date': date,
      'strtloc': strloc,
      'endloc': endloc,
    };
    debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.post(
        url,
        data: jsonEncode(data),
      );
      debugPrint(
          "searchVehicle response: ${response?.data} ${response?.data['vehicle_info']}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return SearchVehicleResponse.fromJson(response?.data);
      } else {
        debugPrint("searchVehicle error response: ${response?.data}");
        return SearchVehicleResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint(
          "searchVehicle error: ${e.error} ${e.response?.data} ${e.message}");
      return SearchVehicleResponse.error(
          e.response?.data['message'] ?? e.message ?? "");
    }
  }

  Future<LayoutResponse> getLayout(route_id, date, start_time) async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/booking/layout";
    dio = Dio(option);
    debugPrint(url.toString());
    var data = {
      'route_id': route_id,
      'date': date,
      'start_time': start_time,
    };
    debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.post(
        url,
        data: jsonEncode(data),
      );
      debugPrint("layout response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        // ref.read(repositoryProvider).setAllLayouts( await data);
        return LayoutResponse.fromJson(response?.data);
      } else {
        debugPrint("layout error response: ${response?.data}");
        return LayoutResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint("layout  error: ${e.error} ${e.response?.data} ${e.message}");
      return LayoutResponse.error(
          e.response?.data['message'] ?? e.message ?? "");
    }
  }

  Future<SeatResponse> selectSeats(trip_id, seats) async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/booking/seat";
    dio = Dio(option);
    debugPrint(url.toString());
    var data = {
      'trip_id': trip_id,
      'seats': seats,
    };
    debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.post(
        url,
        data: jsonEncode(data),
      );
      debugPrint("SeatResponse response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return SeatResponse.fromJson(response?.data);
      } else {
        debugPrint("SeatResponse error response: ${response?.data}");
        return SeatResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint("SeatResponse error: ${e.error} ${e.response?.data} ${e.message}");
      return SeatResponse.error(
          e.response?.data['message'] ?? e.message ?? "");
    }
  }

  Future<DataResponse> bookSeats(trip_id,is_insured, seats) async {
    BaseOptions option = BaseOptions(
        connectTimeout: const Duration(seconds: waitTime),
        receiveTimeout: const Duration(seconds: waitTime),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${Storage.instance.token}'
          // 'APP-KEY': ConstanceData.app_key
        });
    var url = "$endpoint/$path/booking/data";
    dio = Dio(option);
    debugPrint(url.toString());
    var data = {
      'trip_id': trip_id,
      'is_insured': is_insured,
      'seats': seats,
    };
    debugPrint(jsonEncode(data));

    try {
      Response? response = await dio?.post(
        url,
        data: jsonEncode(data),
      );
      debugPrint("DataResponse response: ${response?.data} ${response?.headers}");
      if (response?.statusCode == 200 || response?.statusCode == 201) {
        return DataResponse.fromJson(response?.data);
      } else {
        debugPrint("DataResponse error response: ${response?.data}");
        return DataResponse.error(response?.data['error']
            ? response?.data['message']['success']
            : response?.data['message']['error']);
      }
    } on DioError catch (e) {
      debugPrint("DataResponse error: ${e.error} ${e.response?.data} ${e.message}");
      return DataResponse.error(
          e.response?.data['message'] ?? e.message);
    }
  }

}

final apiProvider = Provider<ApiProvider>((ref) => ApiProvider());
