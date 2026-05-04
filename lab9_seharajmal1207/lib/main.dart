import 'package:flutter/material.dart';
// import 'Lab9/task1.dart' as task1;
// import 'Lab9/task2.dart';
// import 'Lab9/task3.dart';
//  import 'Lab9/task4.dart';
import 'Lab9/order_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const OrderScreen(),
      // home: OrderScreen(),
      // home: PizzaSize(),
      home: const OrderScreen(),
    );
  }
}
