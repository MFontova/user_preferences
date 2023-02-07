import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static String routerName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
