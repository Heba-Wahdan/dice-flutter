import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xFFf2e6d9),
      appBar: AppBar(
        backgroundColor: Color(0xFF7e4a35),
        title: Text(
          "Dice",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNum = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("images/dice$leftDiceNum.png"))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNum = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("images/dice$rightDiceNum.png")))
        ],
      ),
    );
  }
}
