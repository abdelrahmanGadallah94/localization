import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<SettingsServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}
