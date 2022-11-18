import 'package:flutter/material.dart';

import '../basic/commons.dart';
import '../basic/methods.dart';
import '../configs/is_pro.dart';
import '../configs/login_state.dart';

class ProScreen extends StatefulWidget {
  const ProScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProScreenState();
}

class _ProScreenState extends State<ProScreen> {
  String _username = "";

  @override
  void initState() {
    methods.loadProperty(k: 'last_username').then((value) {
      setState(() {
        _username = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var min = size.width < size.height ? size.width : size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("发电中心"),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: min / 2,
            height: min / 2,
            child: Center(
              child: Icon(
                isPro ? Icons.offline_bolt : Icons.offline_bolt_outlined,
                size: min / 3,
                color: Colors.grey.shade500,
              ),
            ),
          ),
          _username.isEmpty
              ? Row(
                  children: [
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () async {
                        try {
                          if (await registerDialog(context)) {
                            defaultToast(context, "注册成功");
                          }
                        } catch (e) {
                          defaultToast(context, "$e");
                        }
                      },
                      child: Text(
                        "注册",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                    const Text(" / "),
                    GestureDetector(
                      onTap: () async {
                        try {
                          if (await loginDialog(context)) {
                            defaultToast(context, "登录成功");
                          }
                        } catch (e) {
                          defaultToast(context, "$e");
                        } finally {
                          await reloadIsPro();
                          _username =
                              await methods.loadProperty(k: 'last_username');
                          setState(() {});
                        }
                      },
                      child: Text(
                        "登录",
                        style: TextStyle(
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                )
              : Center(child: Text(_username)),
          Container(height: 20),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "点击\"我曾经发过电\"进同步发电状态\n"
              "点击\"我刚才发了电\"兑换作者给您的礼物卡\n"
              "去\"关于\"界面找到维护地址用爱发电",
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "发电小功能 \n"
              "  多线程下载\n"
              "  批量导入导出\n"
              "  跳页",
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text("发电详情"),
            subtitle: Text(
              isPro
                  ? "发电中 (${DateTime.fromMillisecondsSinceEpoch(1000 * isProEx).toString()})"
                  : "未发电",
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text("我曾经发过电"),
            onTap: () async {
              if (_username.isEmpty) {
                defaultToast(context, "先登录");
                return;
              }
              try {
                await methods.reloadPro();
                defaultToast(context, "SUCCESS");
              } catch (e, s) {
                defaultToast(context, "FAIL");
              }
              await reloadIsPro();
              setState(() {});
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("我刚才发了电"),
            onTap: () async {
              if (_username.isEmpty) {
                defaultToast(context, "先登录");
                return;
              }
              final code = await displayTextInputDialog(context, title: "输入代码");
              if (code != null && code.isNotEmpty) {
                try {
                  await methods.inputCdKey(code);
                  defaultToast(context, "SUCCESS");
                } catch (e, s) {
                  defaultToast(context, "FAIL");
                }
              }
              await reloadIsPro();
              setState(() {});
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
