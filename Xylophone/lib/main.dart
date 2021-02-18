import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static AudioCache player = AudioCache();
  Expanded xbutton({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$num.wav');
        },
        child: Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xbutton(color: Colors.purple[900], num: 1),
              xbutton(color: Colors.blue[900], num: 2),
              xbutton(color: Colors.blue[300], num: 3),
              xbutton(color: Colors.green, num: 4),
              xbutton(color: Colors.yellow, num: 5),
              xbutton(color: Colors.orange, num: 6),
              xbutton(color: Colors.red, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
