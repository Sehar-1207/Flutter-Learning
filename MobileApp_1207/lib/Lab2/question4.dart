import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: 100, width: double.infinity, color: Colors.blue),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 80, height: 50, color: Colors.red),
              Container(width: 80, height: 50, color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}

