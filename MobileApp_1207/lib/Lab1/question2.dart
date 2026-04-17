import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  const Question2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My lab 1 1207'),
          centerTitle: true,
          backgroundColor: Colors.purple[600],
        ),

        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row inside Column
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('First Row Item'),
                  SizedBox(width: 20),
                  Text('Second Row Item'),
                ],
              ),

              // Space
              const SizedBox(height: 30),

              // Asset Image
              const Text('First Image Asset Image:'),
              Image.asset('assets/images/image.jpg', height: 150),

              const SizedBox(height: 30),

              const Text('Network Image:'),
              Image.network('https://picsum.photos/200', height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
