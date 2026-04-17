import 'package:flutter/material.dart';

// Main Screen Widget
class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Electronics List",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: const ElectronicsList(),
    );
  }
}

// List Widget
class ElectronicsList extends StatelessWidget {
  const ElectronicsList({super.key});

  // List of items
  final List<String> electronics = const [
    "Smartphone",
    "Laptop",
    "Tablet",
    "Smartwatch",
    "Headphones",
    "Bluetooth Speaker",
    "Smart TV",
    "Camera",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: electronics.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.folder),
          title: Text(electronics[index]),
          trailing: const Icon(Icons.add),

          // Snackbar when tapped
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Tapped on ${electronics[index]}"),
                duration: const Duration(seconds: 2),
              ),
            );
          },
        );
      },
    );
  }
}