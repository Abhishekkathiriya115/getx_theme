import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mode/page/Settings.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {

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
