import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int variabledicenumber = 1;
  int variabledicenumber2 = 1;
  void getnumber() {
    setState(() {
      variabledicenumber = Random().nextInt(6) + 1;
      variabledicenumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                getnumber();
              },
              child: Image.asset('images/dice$variabledicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                getnumber();
              },
              child: Image.asset('images/dice$variabledicenumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
