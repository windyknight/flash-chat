import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNum = 1;
  int rightNum = 1;

  void roll() {
    setState(() {
      leftNum = Random().nextInt(6) + 1;
      rightNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image.asset("images/dice$leftNum.png"),
              onPressed: (){
                roll();
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image.asset("images/dice$rightNum.png"),
              onPressed: (){
                roll();
              },
            ),
          ),
        ],
      ),
    );
  }
}
