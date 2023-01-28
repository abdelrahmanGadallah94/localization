import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Dialog "),
          ElevatedButton(
              onPressed: () {
                Get.snackbar("title", "be careful",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                    titleText: const Text(
                      "warning",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    animationDuration: const Duration(seconds: 3),
                    icon: const Icon(Icons.close),
                    duration: const Duration(seconds: 3),
                    mainButton: TextButton(
                        onPressed: () {}, child: const Text("cancel")),
                    // snackStyle: SnackStyle.GROUNDED
                    messageText: const Text("Message"),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.yellow);
              },
              child: const Text("show"))
        ]),
      ),
    );
  }
}
