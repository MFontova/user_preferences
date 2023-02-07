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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                  value: true,
                  title: const Text('Darkmode'),
                  onChanged: (value) {},
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 0,
                  title: Text('Masculino'),
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 1,
                  title: Text('Femenino'),
                  groupValue: 1,
                  onChanged: (value) {},
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: 'Marc',
                    decoration: const InputDecoration(
                        labelText: 'Nombre', helperText: 'Nombre del usuario'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
