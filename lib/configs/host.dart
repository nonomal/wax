import 'package:event/event.dart';
import 'package:flutter/material.dart';
import 'package:wax/basic/commons.dart';
import 'package:wax/basic/methods.dart';

late String host;
final hostEvent = Event();

Future initHost() async {
  host = await methods.loadProperty(k: "host");
}

Future _updateHost(String choose) async {
  await methods.saveProperty(k: "host", v: choose);
  host = choose;
  hostEvent.broadcast();
}

Future chooseHost(BuildContext context) async {
  var choose = await displayTextInputDialog(context, src: host);
  if (choose != null) {
    // 正则判断是否未网站uri
    if (!RegExp(r"^https://[A-Za-z0-9\-_]+(\.[A-Za-z0-9\-_]+)+$").hasMatch(choose)) {
      defaultToast(context, "请输入正确的网站地址, 必须以https开头, 结尾不能添加斜线。例如 https://aa.bb.cc");
      return;
    }
    await _updateHost(choose);
  }
}

Widget hostSetting() {
  return StatefulBuilder(
    builder: (BuildContext context, void Function(void Function()) setState) {
      return ListTile(
        title: const Text("分流"),
        subtitle: Text(host),
        onTap: () async {
          await chooseHost(context);
          setState(() {});
        },
      );
    },
  );
}
