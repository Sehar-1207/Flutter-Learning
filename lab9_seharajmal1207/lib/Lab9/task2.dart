import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SMT Cuisine Order")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            TextFormField(
              decoration: InputDecoration(
                labelText: "Promo Code",
                border: OutlineInputBorder(),
                errorText: errorText,
              ),

              onChanged: (value) {
                setState(() {
                  if (value.contains(" ")) {
                    errorText = "Don't use blank spaces";
                  } else {
                    errorText = null;
                  }
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}