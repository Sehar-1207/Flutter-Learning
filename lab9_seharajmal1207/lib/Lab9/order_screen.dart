import 'package:flutter/material.dart';
import 'task4.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  TextEditingController nameController = TextEditingController();

  String? errorText;

  String selectedSize = "Small";
  List<String> pizzaSizes = ["Small", "Medium", "Large", "Party Size"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("SMT Cuisine Order"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Enter Customer Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Promo Code",
                border: const OutlineInputBorder(),
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

            const SizedBox(height: 15),

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

            const SizedBox(height: 20),


            ElevatedButton(
              onPressed: () async {

                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmationScreen(
                      customerName: nameController.text,
                      pizzaSize: selectedSize,
                    ),
                  ),
                );

                if (result == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Order Confirmed!")),
                  );
                }
              },
              child: const Text("Submit Order"),
            )

          ],
        ),
      ),
    );
  }
}