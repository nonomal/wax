import 'package:flutter/material.dart';
import 'package:wax/configs/themes.dart';
import 'package:wax/configs/versions.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置"),
      ),
      body: ListView(
        children: [
          const Divider(),
          const VersionInfo(),
          const Divider(),
          lightThemeSetting(),
          darkThemeSetting(),
          const Divider(),
        ],
      ),
    );
  }
}
