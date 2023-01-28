import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_getx/view/home.dart';

late SharedPreferences sharedPreferences;

class SettingsServices extends GetxService {
  Future<SettingsServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

class ChangeColor extends GetxController {
  ThemeData theme = sharedPreferences.getBool("light") == true
      ? MyTheme.darkTheme
      : sharedPreferences.getBool("dark") == true
          ? MyTheme.lightTheme
          : ThemeData.dark();

  setColors() {
    if (Get.isDarkMode) {
      print("dark: ${sharedPreferences.getBool("dark")}");
      Get.changeTheme(MyTheme.lightTheme);
    } else {
      sharedPreferences.setBool("light", true);
      print("light: ${sharedPreferences.getBool("light")}");
      Get.changeTheme(MyTheme.darkTheme);
    }
  }
}
