import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_mode/controller/my_controller.dart';
import 'package:getx_mode/messages.dart';
import 'package:getx_mode/page/home.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appdata = GetStorage();
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    appdata.writeIfNull('darkmode', true);
    return SimpleBuilder(
        builder: (_) {
          bool isDarkMode = appdata.read('darkmode');
          return GetMaterialApp(
            theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
            debugShowCheckedModeBanner: false,
            translations: Messages(),
            locale: Locale('en', 'US'),
            fallbackLocale: Locale('en', 'US'),
            title: "Inter",
            home: Home(),
          );
        }
    );
  }
}