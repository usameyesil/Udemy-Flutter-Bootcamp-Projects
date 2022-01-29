import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void cevir() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  Expanded zar(int number) {
    return Expanded(
      child: TextButton(
        onPressed: cevir,
        child: Image.asset(
          'images/dice$number.png',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('DICEE'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: [
                zar(leftDiceNumber),
                zar(rightDiceNumber),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
