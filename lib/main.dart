import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/view/home.dart';
import 'package:study_getx/view/services/service.dart';

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
    ChangeColor controller = Get.put(ChangeColor());
    return GetMaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: controller.theme,
    );
  }
}
