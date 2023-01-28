import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:study_getx/services/services.dart';

class MyLocaleController extends GetxController {
  Locale? initialLang = sharedPreferences.getString("lang") == null
      ? Get.deviceLocale
      : Locale(sharedPreferences.getString("lang")!);
  changeLang({required String langCode}) {
    Locale locale = Locale(langCode);

    sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }
}
