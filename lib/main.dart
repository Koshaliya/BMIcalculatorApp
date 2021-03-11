import 'dart:ui';
import 'screens/input_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        /*colorScheme: ColorScheme.light(
      primary: Color(0xFF2C5EA8),
      secondary: Color(0XFF42C9F3),
    ),*/
      scaffoldBackgroundColor: Color(0xFF0A0E21),
      primaryColor: Color(0xFF0A0E21),
       
        
    ),
      home: InputPage(),
    );
  }
}

