import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../services/services.dart';

class LanguageController extends GetxController {
  Locale? initialLang = sharedPreferences.getString("lang") == null
      ? Get.deviceLocale
      : Locale(sharedPreferences.getString("lang")!);
  changeLanguage({required String langCode}) {
    Locale locale = Locale(langCode);
    sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }
}
