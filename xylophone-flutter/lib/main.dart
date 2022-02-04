// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
void playSound(int number) {
  final AudioCache player = AudioCache();
  player.play('note$number.wav');
}

Expanded buildKey({Color color, int num}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(num);
      },
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, num: 1),
              buildKey(color: Colors.orange, num: 2),
              buildKey(color: Colors.yellow, num: 3),
              buildKey(color: Colors.green, num: 4),
              buildKey(color: Colors.blue, num: 5),
              buildKey(color: Colors.indigo, num: 6),
              buildKey(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
