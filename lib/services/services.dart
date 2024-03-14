import 'package:get/get.dart';

class Services extends GetxController {
  RxInt count = 1.obs;

  increament() => count++;
}
