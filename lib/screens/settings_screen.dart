import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static String routerName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: Sidemenu(),
      body: Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
