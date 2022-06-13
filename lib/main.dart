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
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //declaration of  methods and vars

  int LeftDiceNumber = 1;

  int rightdicenumber = 1;

  Getnumber() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1; //(0-5)+1
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          //our children is are in an equal space
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$LeftDiceNumber.png'),
                //on pressed is anonymous function : with no arguments nedded
                onPressed: () {
                  //nextint is the max number and the value empty in random is 0
                  Getnumber();
                }),
            //flex: 2, to add the space of the widget wisch like in expanded
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightdicenumber.png'),
              onPressed: () {
                // we make the two in the same place to update them both in the same time
                //LeftDiceNumber= Random().nextInt(6)+1; //(0-5)+1
                //rightdicenumber = Random().nextInt(6)+1;
                Getnumber();
              },
            ),
            //flex: 1,
          ),
        ],
      ),
    );
  }
}
