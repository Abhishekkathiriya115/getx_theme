import 'dart:ui';
import 'package:get/get.dart';

class MyController extends GetxController {
  void changeLanguage(var param1,param2){
    var local = Locale(param1,param2);
    Get.updateLocale(local);
  }
}