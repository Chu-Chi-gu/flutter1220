import 'package:flutter/material.dart';
import 'firstPage.dart';

void main() {
  runApp(FlutterBlueApp());
}

class FlutterBlueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: firstPage(),
    );
  }
}
