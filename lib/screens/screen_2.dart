import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/screen_1.dart';
import 'package:getx_tutorial/services/services.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

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
              "Screen 2",
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
