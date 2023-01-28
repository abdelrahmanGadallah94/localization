import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/localization/locale_controller.dart';
import 'package:study_getx/localization2/language_controller.dart';
import 'package:study_getx/localization2/locale.dart';
import 'package:study_getx/services/services.dart';
import 'package:study_getx/view/language_page.dart';
import 'localization/locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialService();

  runApp(const MyApp());
}

Future initialService() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController controller = Get.put(LanguageController());
    return GetMaterialApp(
      home: const LanguagePage(),
      debugShowCheckedModeBanner: false,
      locale: controller.initialLang,
      translations: MyLocalizationStrings(),
    );
  }
}
