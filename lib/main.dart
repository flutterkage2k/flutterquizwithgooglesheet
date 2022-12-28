import 'package:flutter/material.dart';
import 'package:flutterquizwithgooglesheet/pages/test_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: TestPage(),
    );
  }
}
