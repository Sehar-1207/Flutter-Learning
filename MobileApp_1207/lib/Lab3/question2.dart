import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Padding & Margin")),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            color: Colors.white,
            child: const Text(
              "Sehar Ajmal 1207 Lab 3 Task 2",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}