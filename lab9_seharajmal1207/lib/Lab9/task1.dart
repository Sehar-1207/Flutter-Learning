import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget{
  const OrderScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Order Screen") 
      ), 
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon:(Icon(Icons.person)),
            hintText: "Enter Customer Name",
            border: OutlineInputBorder(),
          )
        )
      )
    );
  } 
}