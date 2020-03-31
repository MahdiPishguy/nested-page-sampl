import 'package:flutter/material.dart';
import 'package:fluttercustomnavigation/navigator/main_body_app.dart';

void main() {
  runApp(StartupApplication());
}
class StartupApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackStack Support App',
      home: MainBodyApp(),
    );
  }
}


