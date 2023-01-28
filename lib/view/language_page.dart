import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/localization2/language_controller.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    // MyLocaleController controller = Get.find();

    LanguageController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("title".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.changeLanguage(langCode: "ar");
                // controller.changeLang(langCode: "ar");
              },
              child: const Text("ar"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.changeLanguage(langCode: "en");
                // controller.changeLang(langCode: "en");
              },
              child: const Text("en"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.changeLanguage(langCode: "fr");
                // controller.changeLang(langCode: "en");
              },
              child: const Text("fr"),
            ),
          ],
        ),
      ),
    );
  }
}
