import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static String routerName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkmode = false;
  int gender = 1;
  String name = 'Roger';

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
                  value: isDarkmode,
                  title: const Text('Darkmode'),
                  onChanged: (value) {
                    isDarkmode = value;
                    setState(() {});
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 0,
                  title: Text('Masculino'),
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value ?? 0;
                    setState(() {});
                  },
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 1,
                  title: Text('Femenino'),
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value ?? 1;
                    setState(() {});
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: 'Marc',
                    decoration: const InputDecoration(
                        labelText: 'Nombre', helperText: 'Nombre del usuario'),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
