import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/screen_2.dart';
import 'package:getx_tutorial/services/services.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  // Services service = Services();
  final service = Get.find<Services>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Screen 1",
              style: TextStyle(fontSize: 32),
            ),
            Obx(
              () => Text(
                "${service.count}",
                style: const TextStyle(fontSize: 40),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                service.increament();
              },
              child: const Text("Increament"),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Snackbar",
                  "Hello world",
                  snackPosition: SnackPosition.BOTTOM,
                  margin: EdgeInsets.all(10),
                  icon: Icon(Icons.thumb_up),
                );
              },
              child: const Text("Show Snackbar"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Screen2());
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
