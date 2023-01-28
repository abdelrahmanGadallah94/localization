import 'package:get/get.dart';

class MyController extends GetxController {
  String? name;
  String? age;
  @override
  void onInit() {
    name = Get.arguments["name"];
    age = Get.arguments["age"];
    super.onInit();
  }
}
