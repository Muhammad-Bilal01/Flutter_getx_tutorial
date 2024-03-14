import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/screen_1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => Screen1()));

            // Using Getx
            // Get.to(() => Screen1());
            Get.back();
          },
          child: const Text(
            "Screen 2",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
