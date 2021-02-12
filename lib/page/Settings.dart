import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mode/controller/my_controller.dart';
import 'package:getx_mode/controller/theme_controller.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  MyController myController = Get.put(MyController());

  final controller = Get.put(ModeController());

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("settings".tr),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("lang".tr),
              leading: Icon(Icons.language),
              onTap: () {
                Get.bottomSheet(Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        title: Text("हिंदी/Hindi"),
                        onTap: () => {myController.changeLanguage('hi', 'IN')},
                      ),
                      ListTile(
                        title: Text("English/अंग्रेज़ी"),
                        onTap: () => {myController.changeLanguage('en', 'US')},
                      ),
                    ],
                  ),
                ));
              },
            ),
            SwitchListTile(
              value: controller.isDark,
              onChanged: controller.changeTheme,
              title: Text("darktheme".tr),
              secondary: Icon(Icons.wb_sunny),
            ),
          ],
        ),
      );
    });
  }
}
