import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Info Cards")),

      body: Column(
        children: [

          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const ListTile(
              leading: Icon(Icons.person),
              title: Text("Sehar Ajmal"),
              subtitle: Text("Registration No: 23-NTU-CS-1207"),
            ),
          ),

          Card(
            color: Colors.blue[100],
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("SEHAR AJMAL"),
              subtitle: Text("Registration No: 23-TT-CS-1122"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}