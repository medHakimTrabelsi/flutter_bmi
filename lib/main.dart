import 'package:flutter/material.dart';
import 'screens/Firstpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : ThemeData.dark().copyWith(

        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black 
      ),
      debugShowCheckedModeBanner: false,
        
      
      home: FirstPage(),
    );
  }
}

