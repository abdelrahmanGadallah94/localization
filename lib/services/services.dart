import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;

class SettingsServices extends GetxService {
  RxInt counter = 0.obs;

  Future<SettingsServices> init() async {
    //start service
    sharedPreferences = await SharedPreferences.getInstance();

    counter.value = sharedPreferences.getInt("counter") ?? 0;

    //end
    return this;
  }

  increase() {
    counter.value++;
    sharedPreferences.setInt("counter", counter.value);
  }
}
