import 'package:flutter/material.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile UI"),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              // Note: Ensure this file exists in your pubspec.yaml assets!
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 65, 
              backgroundColor: Colors.blueAccent, 
              child: CircleAvatar(
                radius: 60, // Inner image size
                backgroundColor: Colors.grey[200],
                backgroundImage: const AssetImage("assets/images/profile.jpg"),
               
                // Fallback icon if the image fails to load
                onBackgroundImageError: (exception, stackTrace) {
                  debugPrint("Image failed to load: $exception");
                },
                child: const Align(
                   alignment: Alignment.bottomRight,
                   child: CircleAvatar(
                     backgroundColor: Colors.white,
                     radius: 15,
                     child: Icon(Icons.edit, size: 15, color: Colors.blue),
                   ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Sehar",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}