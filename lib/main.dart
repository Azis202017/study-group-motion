import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/HomeController.dart';
import 'controller/TestController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var testController = Get.put(TestController(), permanent: true);
    return GetBuilder(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            body: Column(
              children: [
                Text('${controller.counter}'),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: controller.increment,
            ),
          );
        });
  }
}
