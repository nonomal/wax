/// 显示模式, 仅安卓有效

import 'dart:io';

import 'package:flutter/material.dart';
import '../basic/commons.dart';
import '../basic/methods.dart';
import 'android_version.dart';

const _propertyName = "androidDisplayMode";
List<String> _modes = [];
String _androidDisplayMode = "";

Future initAndroidDisplayMode() async {
  if (Platform.isAndroid) {
    _androidDisplayMode = await methods.loadProperty(k: _propertyName);
    _modes = await methods.loadAndroidModes();
    await _changeMode();
  }
}

Future _changeMode() async {
  await methods.setAndroidMode(_androidDisplayMode);
}

Future<void> _chooseAndroidDisplayMode(BuildContext context) async {
  if (Platform.isAndroid) {
    List<String> list = [""];
    list.addAll(_modes);
    String? result = await chooseListDialog<String>(
      context,
      title: "安卓屏幕刷新率",
      values: list,
    );
    if (result != null) {
      await methods.saveProperty(k: _propertyName, v: result);
      _androidDisplayMode = result;
      await _changeMode();
    }
  }
}

Widget androidDisplayModeSetting() {
  if (Platform.isAndroid && androidVersion >= 23) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return ListTile(
          title: const Text("屏幕刷新率(安卓)"),
          subtitle: Text(_androidDisplayMode),
          onTap: () async {
            await _chooseAndroidDisplayMode(context);
            setState(() {});
          },
        );
      },
    );
  }
  return Container();
}
