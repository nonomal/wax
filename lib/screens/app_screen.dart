
import 'package:flutter/material.dart';
import 'package:wax/screens/browser_screen.dart';

class AppScreen extends StatefulWidget{
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>_AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return const BrowserScreen();
  }
}