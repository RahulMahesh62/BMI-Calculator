import 'package:flutter/material.dart';
import 'input.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff10ac84),
        scaffoldBackgroundColor: Color(0xff1e272e),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          body1:TextStyle(
            color: Colors.white
            ),
            ),
      ),
      home: InputPage(),
    );
  }
}
