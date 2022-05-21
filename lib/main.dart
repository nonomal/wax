import 'package:flutter/material.dart';
import 'package:wax/screens/components/mouse_and_touch_scroll_behavior.dart';
import 'basic/commons.dart';
import 'configs/themes.dart';
import 'screens/init_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    themeEvent.subscribe(_setState);
    super.initState();
  }

  @override
  void dispose() {
    themeEvent.unsubscribe(_setState);
    super.dispose();
  }

  _setState(_) => setState(() {});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: mouseAndTouchScrollBehavior,
      navigatorObservers: [
        routeObserver,
      ],
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const InitScreen(),
    );
  }
}
