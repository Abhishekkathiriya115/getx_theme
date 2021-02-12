import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mode/page/Settings.dart';


class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: null, accountEmail: null),
          ListTile(
            title: Text("settings".tr),
            leading: Icon(Icons.settings),
            onTap: () {
              Get.to(Settings());
            },
          ),
        ],
      ),
    );
  }
}

