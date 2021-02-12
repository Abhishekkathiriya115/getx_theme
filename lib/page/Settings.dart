import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_mode/controller/my_controller.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final appdata = GetStorage();
  MyController myController = Get.put(MyController());


  @override
  Widget build(BuildContext context) {
    appdata.writeIfNull('darkmode', true);
    return SimpleBuilder(
        builder: (_) {
          bool isDarkMode = appdata.read('darkmode');
          return Scaffold(
            appBar: AppBar(title: Text("settings".tr),),
            body: ListView(
              children: [
                ListTile(
                  title: Text("lang".tr),
                  leading: Icon(Icons.language),
                  onTap: () {
                    Get.bottomSheet(

                        Container(
                          child: Wrap(
                            children: [
                              ListTile(
                                title: Text("हिंदी/Hindi"),
                                onTap: () =>
                                {
                                  myController.changeLanguage('hi', 'IN')
                                },
                              ),
                              ListTile(
                                title: Text("English/अंग्रेज़ी"),
                                onTap: () =>
                                {
                                  myController.changeLanguage('en', 'US')
                                },
                              ),
                            ],
                          ),
                        )
                    );
                  },
                ),
                SwitchListTile(
                  value: isDarkMode,
                  onChanged: (value) => appdata.write('darkmode', value),
                  title: Text("darktheme".tr),
                  secondary: Icon(Icons.wb_sunny),
                ),
              ],
            ),
          );
        }
    );
  }
}


