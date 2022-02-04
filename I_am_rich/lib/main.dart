import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Center(
          child: Text('I am Rich'),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
        child: Center(child: Image.asset('images/diamond.png')),
      ),
    )),
  );
}
