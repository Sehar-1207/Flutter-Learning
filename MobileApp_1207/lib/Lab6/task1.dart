import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),

      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Themes"),
            centerTitle: true,
            actions: [
              Switch(
                value: isDark,
                onChanged: (value) {
                  setState(() {
                    isDark = value;
                  });
                },
              ),
              const SizedBox(width: 10),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "This is the 6th lab of Mobile Application Development , in this i learn about Flutter themes. Flutter themes allow you to define a consistent look and feel for your app by specifying colors, fonts, and other visual properties. You can create a theme using the ThemeData class and apply it to your app using the MaterialApp widget. Themes help maintain a cohesive design across different screens and widgets in your Flutter application.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 15),
                Text(
                  "Hi there its Sehar Ajmal 1207",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 25),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "A Card widget using theme styling.",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("A Themed Button"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}