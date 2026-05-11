import 'package:flutter/material.dart';


class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class TodosScreen extends StatelessWidget {

  final List<Todo> todos;

  const TodosScreen({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos List"),
      ),

      body: ListView.builder(

        itemCount: todos.length,

        itemBuilder: (context, index) {

          return ListTile(

            title: Text(todos[index].title),

            onTap: () {

              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    todo: todos[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {

  final Todo todo;

  const DetailScreen({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(todo.title),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Text(
          todo.description,
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}