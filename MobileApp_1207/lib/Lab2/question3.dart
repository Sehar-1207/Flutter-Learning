import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

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
          color:
              Colors.white24, // Added color to see the Container's boundaries
          child: Row(
            // Requirement: Center the icons horizontally
            mainAxisAlignment: MainAxisAlignment.center,
            // Requirement: Force children to fill the vertical height of the Container
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Icon(Icons.volume_up, color: Colors.amber, size: 50),
              Icon(Icons.bluetooth, color: Colors.blue, size: 50),
              Icon(Icons.wifi, color: Colors.green, size: 50),
            ],
          ),
        ),
      ),
    );
  }
}
