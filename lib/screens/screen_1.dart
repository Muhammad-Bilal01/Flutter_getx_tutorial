import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screens/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => Screen2()));

            // Using Getx

            Get.to(() => Screen2());
          },
          child: const Text(
            "Screen1",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
