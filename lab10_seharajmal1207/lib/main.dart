import 'package:flutter/material.dart';
// import 'task1.dart';
import 'task2.dart';
import 'task3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {

  //   return MaterialApp(
  //     title: 'Flutter Demo',

  //     // home: const FirstRoute(),
  //     // home: const FirstScreen(),
  //   );

  @override
  Widget build(BuildContext context) {
    final List<Todo> todos = List.generate(
      20,
      (index) => Todo(
        'Todo ${index + 1}',
        'This is the description of Todo ${index + 1}',
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: TodosScreen(todos: todos),
    );
  }
}
