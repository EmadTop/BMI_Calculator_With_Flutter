import 'dart:math';

import 'package:bmi_calculator/bmi_result_sceen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 70;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          elevation: 0.0,
          title:  Text(
            "BMI CALCULATOR",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          color: Colors.blue[900],
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isMale? Colors.blue : Colors.grey[400],
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("images/g54.png"),
                                  width: 100,
                                  height: 100,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: !isMale? Colors.blue : Colors.grey[400],
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("images/g24.png"),
                                  width: 1000,
                                  height: 100,
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${height.round()}",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          min: 80,
                          max: 220,
                          value: height, 
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                            print("slider in changed to ${value.round()}");
                          }),
                          
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "${age}",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                      print("left - button is clicked");
                                    } ,
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(width: 5,),
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                      print("left + button is clicked");
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "weight",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "${weight}",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                      print("left - button is clicked");
                                      } ,
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(width: 5,),
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                      print("left + button is clicked");
                                    } ,
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  color: Colors.pink,
                  onPressed: () {
                    setState(() {
                      double result = weight / pow(height / 100,2);
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => BMIResultScreen(
                        isMale: isMale,
                        result: result.round(),
                        age: age,
                      ))));
                    });
                    print("button is clicked");
                  } ,
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),      
    );
  }
}