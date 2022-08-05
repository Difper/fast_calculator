import 'package:fast_calculator/screen_Main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fast Calculator',
      debugShowCheckedModeBanner: false,
      home: FastCalculatorMainPage(),
    );
  }
}
