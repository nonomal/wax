import 'package:flutter/material.dart';
import 'package:wax/configs/host.dart';
import 'package:wax/configs/is_pro.dart';
import 'package:wax/configs/pager_column_number.dart';
import 'package:wax/configs/pager_controller_mode.dart';
import 'package:wax/configs/pager_view_mode.dart';

import '../configs/android_display_mode.dart';
import '../configs/android_version.dart';
import '../configs/auto_clean.dart';
import '../configs/reader_controller_type.dart';
import '../configs/reader_direction.dart';
import '../configs/reader_slider_position.dart';
import '../configs/reader_type.dart';
import '../configs/themes.dart';
import '../configs/versions.dart';
import '../configs/volume_controller.dart';
import 'app_screen.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  Future _init() async {
    await initAndroidVersion();
    await initAndroidDisplayMode();
    await initAutoClean();
    await initReaderControllerType();
    await initReaderDirection();
    await initReaderSliderPosition();
    await initReaderType();
    await initVersion();
    await initTheme();
    await initPagerColumnCount();
    await initPagerControllerMode();
    await initPagerViewMode();
    await initHost();
    await initVolumeController();
    await reloadIsPro();
    autoCheckNewVersion();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context) => const AppScreen()),
    );
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5eee6),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            var min = constraints.maxWidth > constraints.maxHeight
                ? constraints.maxHeight
                : constraints.maxWidth;
            var padding = min / 6;
            return Container(
              padding: EdgeInsets.all(padding),
              child: const Text("Loading"),
            );
          },
        ),
      ),
    );
  }
}
