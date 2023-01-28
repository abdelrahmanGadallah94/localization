import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/view/services/service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeColor controller = Get.put(ChangeColor());
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // if (Get.isDarkMode) {
                    //   Get.changeTheme(ThemeData.light());
                    // } else {
                    //   Get.changeTheme(ThemeData.dark());
                    // }
                    controller.setColors();
                  },
                  child: const Text("Change Color"))
            ],
          ),
        ));
  }
}

class MyTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.cyanAccent,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.pink));
  static ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.green,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.green));
}
