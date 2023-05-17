import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wax/basic/methods.dart';
import '../basic/commons.dart';
import '../configs/host.dart';
import '../configs/login_state.dart';
import '../configs/versions.dart';
import 'components/content_loading.dart';
import '../configs/is_pro.dart';
import 'app_screen.dart';

const firstLoginScreen = FirstLoginScreen();

class FirstLoginScreen extends StatefulWidget {
  const FirstLoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FirstLoginScreenState();
}

class _FirstLoginScreenState extends State<FirstLoginScreen> {

  late final _saveButton = IconButton(
    onPressed: () async {
      if (host.isEmpty) {
        defaultToast(context, "请填写分流");
        return;
      }
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return const AppScreen();
        },
      ));
    },
    icon: const Icon(Icons.save),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
        actions: [
          _saveButton,
        ],
      ),
      body: ListView(
        children: [
          hostSetting(),
        ],
      ),
    );
  }
}
