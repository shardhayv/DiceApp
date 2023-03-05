import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text('Dice App'),
          ),
        ),
        body: const DiceApp(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNum= 1;
  int rightDiceNum=1 ;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: () {
                setState(() {
                  leftDiceNum=Random().nextInt(6) +1;
                  print(leftDiceNum);
                });

              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNum.png'),
              onPressed: () {
                setState(() {
                  rightDiceNum=Random().nextInt(6) +1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}


