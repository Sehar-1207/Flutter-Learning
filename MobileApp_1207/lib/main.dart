import 'package:flutter/material.dart';
// import 'package:mobile_application_development/Lab2/question1.dart';
//Lab 1 questions
// import 'Lab1/question1.dart';
// import 'Lab1/question2.dart';
// //Lab 2 questions
// import 'Lab2/question1.dart';
// import 'Lab2/question2.dart';
// import 'Lab2/question3.dart';
// import 'Lab2/question4.dart';
// lab 3
// import 'Lab3/question1.dart';
// import 'Lab3/question2.dart';
// import 'Lab3/question3.dart';
// import 'Lab3/question4.dart';

//Lab 4
// import 'Lab4/task1.dart';

//Lab 5
//  import 'Lab5/task1.dart';
 import 'Lab6/task1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
          return MaterialApp(
      //Lab 1
      // home: Question1(),
      // home: Question2(),

      //Lab 2 uncomment when running that specific question...
      // home: Task1(),
      // home: Task2(),
      // home: Task3(),
      // home: Task4(),

      //lab 3
      // home: Task1(),
      // home: Task2(),
      // home: Task3(),
      // home: Task4(),

      //lab4
      // home: Task1(),
      // debugShowCheckedModeBanner: false,

      //Lab 5
      // home:XylophoneApp(),
      home:Task1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
