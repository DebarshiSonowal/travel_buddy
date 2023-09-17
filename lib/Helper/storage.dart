import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
