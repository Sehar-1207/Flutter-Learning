import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  final String customerName;
  final String pizzaSize;

  const ConfirmationScreen({
    super.key,
    required this.customerName,
    required this.pizzaSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Order")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Customer: $customerName"),
            Text("Pizza Size: $pizzaSize"),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true); 
              },
              child: const Text("Confirm"),
            )
          ],
        ),
      ),
    );
  }
}