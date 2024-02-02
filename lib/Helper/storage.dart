import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/SeatData/seat_data.dart';

class Storage {
  Storage._();

  static final Storage instance = Storage._();
  late SharedPreferences sharedPreferences;

  Future<void> initializeStorage() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> setUser(String token) async {
    debugPrint('set token $token');
    await sharedPreferences.setString("token", token);
    await sharedPreferences.setBool("isLoggedIn", true);
  }

  Future<void> setToken(String token) async {
    await sharedPreferences.setString("token", token);
  }

  Future<void> setSeatData(List<SeatData> val) async {
    List<String> seatDataListString =
    val.map((seatData) => jsonEncode(seatData.toJson())).toList();

    await sharedPreferences.setStringList("seatData", seatDataListString);
  }


  Future<List<SeatData>> getSeatData() async {
    List<String>? seatDataListString = sharedPreferences.getStringList("seatData");

    if (seatDataListString != null) {
      try {
        List<Map<String, dynamic>> seatDataListMap = seatDataListString
            .map((data) => jsonDecode(data) as Map<String, dynamic>)
            .toList();

        List<SeatData> seatDataList =
        seatDataListMap.map((data) => SeatData.fromJson(data)).toList();

        return seatDataList;
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle the error (e.g., return an empty list or show an error message)
        return [];
      }
    } else {
      return [];
    }
  }



  Future<void> setClosedForDay(bool val) async {
    await sharedPreferences.setBool("closed", val);
  }

  Future<void> setDarkMode(bool selected) async {
    await sharedPreferences.setBool("dark", selected);
  }

  get token => sharedPreferences.getString("token") ?? "";

  get isLoggedIn => sharedPreferences.getBool("isLoggedIn") ?? false;

  get isClosed => sharedPreferences.getBool("isClosed") ?? false;

  Future<void> logout() async {
    await sharedPreferences.clear();
  }
}
