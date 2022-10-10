import 'package:flutter/material.dart';

import '../basic/commons.dart';
import '../basic/methods.dart';
import '../configs/is_pro.dart';

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
                        final f = await registerDialog(context);
                        if (f != null) {
                          try {
                            await f;
                            defaultToast(context, "注册成功");
                          } catch (e) {
                            defaultToast(context, "$e");
                          }
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
                        final f = await loginDialog(context);
                        if (f != null) {
                          try {
                            await f;
                            defaultToast(context, "登录");
                          } catch (e) {
                            defaultToast(context, "$e");
                          } finally {
                            await reloadIsPro();
                            _username =
                                await methods.loadProperty(k: 'last_username');
                            setState(() {});
                          }
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

Future<Future?> loginDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        width: 30,
        height: 30,
        color: Colors.black.withOpacity(.1),
        child: Center(
          child: _LoginDialog(),
        ),
      );
    },
  );
}

Future<Future?> registerDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        width: 30,
        height: 30,
        color: Colors.black.withOpacity(.1),
        child: Center(
          child: _RegisterDialog(),
        ),
      );
    },
  );
}

class _LoginDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<_LoginDialog> {
  static var _username = "";
  static var _password = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width - 90,
      margin: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Expanded(child: Container()),
              ],
            ),
            ListTile(
              title: const Text("账号"),
              subtitle: Text(_username == "" ? "未设置" : _username),
              onTap: () async {
                String? input = await displayTextInputDialog(
                  context,
                  src: _username,
                  title: '账号',
                  hint: '请输入账号',
                );
                if (input != null) {
                  setState(() {
                    _username = input;
                  });
                }
              },
            ),
            ListTile(
              title: const Text("密码"),
              subtitle: Text(_password == "" ? "未设置" : '\u2022' * 10),
              onTap: () async {
                String? input = await displayTextInputDialog(
                  context,
                  src: _password,
                  title: '密码',
                  hint: '请输入密码',
                  isPasswd: true,
                );
                if (input != null) {
                  setState(() {
                    _password = input;
                  });
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: MaterialButton(
                    color: Colors.orange.shade700,
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "取消",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: MaterialButton(
                    color: Colors.orange.shade700,
                    onPressed: () async {
                      Navigator.of(context)
                          .pop(methods.login(_username, _password));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "登录",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _RegisterDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterDialogState();
}

class _RegisterDialogState extends State<_RegisterDialog> {
  static var _username = "";
  static var _password = "";
  static var _email = "";
  static var _nickname = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width - 90,
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Expanded(child: Container()),
              ],
            ),
            ListTile(
              title: const Text("账号"),
              subtitle: Text(_username == "" ? "未设置" : _username),
              onTap: () async {
                String? input = await displayTextInputDialog(
                  context,
                  src: _username,
                  title: '账号',
                  hint: '请输入账号',
                );
                if (input != null) {
                  setState(() {
                    _username = input;
                  });
                }
              },
            ),
            ListTile(
              title: const Text("密码"),
              subtitle: Text(_password == "" ? "未设置" : '\u2022' * 10),
              onTap: () async {
                String? input = await displayTextInputDialog(
                  context,
                  src: _password,
                  title: '密码',
                  hint: '请输入密码',
                  isPasswd: true,
                );
                if (input != null) {
                  setState(() {
                    _password = input;
                  });
                }
              },
            ),
            ListTile(
              title: const Text("邮箱"),
              subtitle: Text(_email == "" ? "未设置" : _email),
              onTap: () async {
                String? input = await displayTextInputDialog(
                  context,
                  src: _email,
                  title: '邮箱',
                  hint: '请输入邮箱',
                );
                if (input != null) {
                  setState(() {
                    _email = input;
                  });
                }
              },
            ),
            ListTile(
              title: const Text("昵称"),
              subtitle: Text(_nickname == "" ? "未设置" : _nickname),
              onTap: () async {
                String? input = await displayTextInputDialog(
                  context,
                  src: _nickname,
                  title: '昵称',
                  hint: '请输入昵称',
                );
                if (input != null) {
                  setState(() {
                    _nickname = input;
                  });
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: MaterialButton(
                    color: Colors.orange.shade700,
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "取消",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: MaterialButton(
                    color: Colors.orange.shade700,
                    onPressed: () async {
                      Navigator.of(context).pop(methods.register(
                        username: _username,
                        pass: _password,
                        passAgain: _password,
                        email: _email,
                        nickname: _nickname,
                        sex: '3',
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "注册",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
