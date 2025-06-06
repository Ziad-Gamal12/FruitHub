// ignore_for_file: file_names, camel_case_types

import 'package:shared_preferences/shared_preferences.dart';

abstract class shared_preferences_Services {
  static late SharedPreferences sharedPreferences;
  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> boolSetter(
      {required String key, required bool value}) async {
    await sharedPreferences.setBool(key, value);
  }

  static bool? boolgetter({required String key}) {
    return sharedPreferences.getBool(key);
  }

  static Future<void> stringSetter(
      {required String key, required String value}) async {
    await sharedPreferences.setString(key, value);
  }

  static String? stringgetter({required String key}) {
    return sharedPreferences.getString(key);
  }

  static Future<void> intSetter(
      {required String key, required int value}) async {
    await sharedPreferences.setInt(key, value);
  }

  static int? intgetter({required String key}) {
    return sharedPreferences.getInt(key);
  }
}
