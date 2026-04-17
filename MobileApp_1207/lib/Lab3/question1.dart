import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Cards")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Card(
            color: Colors.blue[100],
            elevation: 5,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone, size: 30, color: Colors.blue),
                  Icon(Icons.message, size: 40, color: Colors.green),
                  Icon(Icons.email, size: 35, color: Colors.red),
                ],
              ),
            ),
          ),

          Card(
            color: Colors.green[100],
            elevation: 8,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, size: 30, color: Colors.green),
                  Icon(Icons.favorite, size: 40, color: Colors.pink),
                  Icon(Icons.star, size: 35, color: Colors.orange),
                ],
              ),
            ),
          ),

          Card(
            color: Colors.orange[100],
            elevation: 12,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.camera, size: 30, color: Colors.black),
                  Icon(Icons.music_note, size: 40, color: Colors.purple),
                  Icon(Icons.movie, size: 35, color: Colors.red),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}