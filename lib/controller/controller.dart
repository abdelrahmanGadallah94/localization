import 'package:get/get.dart';
import 'package:study_getx/view/services/service.dart';

import '../view/home.dart';

class MyController extends GetxController {
  String? name;
  String? age;
  @override
  void onInit() {
    name = Get.arguments["name"];
    age = Get.arguments["age"];

    sharedPreferences.getBool("dark") == true
        ? MyTheme.darkTheme
        : MyTheme.lightTheme;
    super.onInit();
  }
}
