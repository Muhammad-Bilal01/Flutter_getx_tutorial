import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Screen3 extends StatefulWidget {
  Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  double pw = Get.size.width;

  double ph = Get.size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: pw * 0.5,
          height: ph * 0.8,
          color: Colors.blue,
          child: Text("${Get.isDarkMode}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.changeTheme(ThemeData.dark());

          // setState(() {});
        },
        child: const Icon(Icons.sunny),
      ),
    );
  }
}
