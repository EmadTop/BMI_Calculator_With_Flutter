import 'package:bmi_calculator/bmi_result_sceen.dart';
import 'package:flutter/material.dart';

import 'bmi_screen.dart';
main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIScreen()
    );
  }
}

//var result = weight / pow(height / 100,2);
// print(result.round());