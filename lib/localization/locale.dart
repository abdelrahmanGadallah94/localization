import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "الصفحة الرئيسية", "2": "العربية", "3": "الانجليزية"},
        "en": {"1": "Main Page", "2": "Arabic", "3": "English"}
      };
}
