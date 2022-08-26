// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  //const Score({ Key? key }) : super(key: key);

  int score =
      0; //to tell that int value is going to pass through it    //declaring a variable for using it as a parameter
  Score({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Your score is: ',
                  style: TextStyle(fontSize: 40, color: Colors.orange)),
              Text(score.toString(),
                  style: TextStyle(fontSize: 50, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
