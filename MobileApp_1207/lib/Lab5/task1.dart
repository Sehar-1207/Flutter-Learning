import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();

  XylophoneApp({super.key});

  void playSound(int note) async {
    await player.play(AssetSource('note$note.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text("Note 1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text("Note 2"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text("Note 3"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.lightGreen),
                    
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text("Note 4"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.brown),
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text("Note 5"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text("Note 6"),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 217, 146, 230)),
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text("Note 7"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}