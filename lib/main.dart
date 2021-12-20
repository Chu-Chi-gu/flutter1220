import 'package:flutter/material.dart';
import 'HomePage.dart';
void main() {
  return runApp(MyApp());
}
class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 框架',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}
