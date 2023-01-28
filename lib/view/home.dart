import 'dart:ui';

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
                Get.defaultDialog(
                    backgroundColor: Colors.green,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    custom: Text("test"),
                    radius: 50,
                    middleText: "test",
                    titleStyle: TextStyle(color: Colors.red),
                    content: Column(
                      children: [
                        TextField(),
                        TextField(),
                        ElevatedButton(onPressed: () {}, child: Text("ok"))
                      ],
                    )
                    // cancel: const Icon(Icons.close),
                    // confirm: Text("confirm"),
                    // actions: [
                    //   ElevatedButton(
                    //       onPressed: () {}, child: const Text("confirm")),
                    //   ElevatedButton(
                    //       onPressed: () {}, child: const Text("cancel")),
                    // ],
                    );
              },
              child: const Text("show"))
        ]),
      ),
    );
  }
}
