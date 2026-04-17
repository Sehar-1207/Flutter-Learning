import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Lab 2 1207 Sehar Ajmal"),
          centerTitle: true,
          backgroundColor: Colors.grey,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: SafeArea(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.cyan,
            margin: const EdgeInsets.all(25.0),
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: const Text("Inside the Box"),
          ),
        ),
      ),
    );
  }
}
