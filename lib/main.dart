// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, use_key_in_widget_constructors, avoid_print, must_be_immutable
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: const Color.fromARGB(255, 168, 28, 18),
    appBar: AppBar(
      title: const Center(child: Text('Dice App')),
      backgroundColor: const Color.fromARGB(255, 160, 28, 19),
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 3;
  void dicePicture() {
    setState(
      () {
        leftDicenumber = Random().nextInt(6) + 1;
        rightDicenumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              dicePicture();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image(
                  width: 200.0,
                  image: AssetImage('images/Dice$leftDicenumber.png'),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              dicePicture();
            },
            //i created a function above a variable(line 25-31). instead of typing the setststate i just have to call the variable name dicePicture and the effects is initiated //
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image(
                  width: 200.0,
                  image: AssetImage('images/Dice$rightDicenumber.png'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
