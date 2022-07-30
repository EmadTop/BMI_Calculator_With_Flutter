import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final bool? isMale;
  final int? result;
  final int? age;

  BMIResultScreen({
    @required this.isMale,
    @required this.result,
    @required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale! ? "Male":"Female"}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Result : ${result}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Text(
              "Age : ${age}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}