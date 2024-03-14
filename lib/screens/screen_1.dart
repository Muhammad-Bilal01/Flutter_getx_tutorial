import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/screen_2.dart';
import 'package:getx_tutorial/screens/screen_3.dart';
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
            const SizedBox(height: 5),
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
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Warning",
                    content: Text("Are You sure you want to proceed?"),
                    actions: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.thumb_up),
                        label: const Text("Yes"),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.thumb_down),
                        label: const Text("No"),
                      ),
                    ]);
              },
              child: const Text("Show Dialog"),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.white,
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text("Bottom Sheet"),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Show Bottom Sheet"),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Get.to(Screen3());
              },
              child: Text("Go to screen 3"),
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
