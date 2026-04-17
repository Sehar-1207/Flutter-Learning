import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

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
        body: Container(
          width: double.infinity,
          height: 400,
          margin: const EdgeInsets.all(25.0),
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.favorite, color: Colors.red, size: 50),

              //Custom spacing of 60 pixels
              const SizedBox(height: 60.0),

              const Icon(Icons.thumb_up, color: Colors.blue, size: 50),
              const SizedBox(height: 60.0),
              const Icon(Icons.share, color: Colors.green, size: 50),
            ],
          ),
        ),
      ),
    );
  }
}
