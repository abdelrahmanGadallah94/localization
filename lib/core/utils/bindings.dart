import 'package:get/get.dart';
import 'package:study_getx/controller/get_counter.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }
}
