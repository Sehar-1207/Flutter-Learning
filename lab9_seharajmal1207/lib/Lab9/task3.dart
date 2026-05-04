import 'package:flutter/material.dart';

class PizzaSize extends StatefulWidget {
  const PizzaSize({super.key});

  @override
  State<PizzaSize> createState() => _PizzaSizeState();
}

class _PizzaSizeState extends State<PizzaSize> {
  String selectedSize = "Small";

  List<String> pizzaSizes = ["Small", "Medium", "Large", "Party Size"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SMT Cuisine Order")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
            value: selectedSize,
            isExpanded: true,
            items: pizzaSizes.map((size) {
            return DropdownMenuItem(
            value: size,
            child: Text(size),
             );
         }).toList(),

  onChanged: (value) {
    setState(() {
      selectedSize = value!;
    });
  },
),
          ],
        ),
      ),
    );
  }
}
