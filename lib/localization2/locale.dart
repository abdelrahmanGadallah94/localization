import 'package:get/get.dart';

class MyLocalizationStrings implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"title": "الصفحة الرئيسية"},
        "en": {"title": "Main page"},
        "fr": {"title": "page d'accueil"},
      };
}
