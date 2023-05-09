import 'package:event/event.dart';
import 'package:flutter/material.dart';
import 'package:wax/basic/commons.dart';
import 'package:wax/basic/methods.dart';

const _defaultHost = "https://www.htmanga2.top/";
const _hostMap = {
  "https://www.htmanga3.top/": "TOP3",
  "https://www.htmanga4.top/": "TOP4",
  "https://www.htmanga5.top/": "TOP5",
};

late String host;
final hostEvent = Event();

Future initHost() async {
  host = await methods.loadProperty(k: "host");
  if (host == "") {
    host = _defaultHost;
  }
}

Future _updateHost(String choose) async {
  await methods.saveProperty(k: "host", v: choose);
  host = choose;
  hostEvent.broadcast();
}

currentHost() {
  return _hostMap[host] ?? "自定义";
}

Future chooseHost(BuildContext context) async {
  var choose =
      await chooseListDialog(context, values: ["选择预设", "手动输入"], title: '分流');
  if ("选择预设" == choose) {
    choose = await chooseMapDialog(context,
        title: "分流",
        values: _hostMap.map((key, value) => MapEntry(value, key)));
    if (choose != null) {
      await _updateHost(choose);
    }
  } else if ("手动输入" == choose) {
    choose = await displayTextInputDialog(context, src: host);
    if (choose != null) {
      await _updateHost(choose);
    }
  }
}

Widget hostSetting() {
  return StatefulBuilder(
    builder: (BuildContext context, void Function(void Function()) setState) {
      return ListTile(
        title: const Text("分流"),
        subtitle: Text("${_hostMap[host]} (登录注册不上试试换分流)"),
        onTap: () async {
          await chooseHost(context);
          setState(() {});
        },
      );
    },
  );
}
