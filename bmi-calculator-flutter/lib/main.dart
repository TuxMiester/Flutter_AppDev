// ignore_for_file: deprecated_member_use
import 'input_page.dart';
import 'package:flutter/material.dart';
import 'results.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
            ),
          )),
      home: InputPage(),
    );
  }
}
