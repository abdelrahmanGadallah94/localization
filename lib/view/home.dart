import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/services/services.dart';

class HomePage extends GetView<SettingsServices> {
  const HomePage({super.key});

  // final SettingsServices c = Get.put(SettingsServices());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingsServices>(
              builder: (cr) => Text("${cr.counter}"),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                child: const Text("+")),
            ElevatedButton(
                onPressed: () {
                  sharedPreferences.clear();
                },
                child: const Text("clear")),
          ],
        ),
      ),
    );
  }
}
