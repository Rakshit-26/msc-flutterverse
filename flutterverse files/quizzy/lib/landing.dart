// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'question.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'score.dart';

class LandingPage extends StatefulWidget {
  //const LandingPage({ Key? key }) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  /*List<String> question = ['question 1', 'question 2', 'question 3'];
  int count = 0;

  void next() {
    //similar to vid
    setState(() {
      count++;
    });
  }*/

  QuestionBank question = QuestionBank(); //Object declaration- good practice

  List<Icon> scoreKeeper = [];
  int scoreCount = 0;

  void checkAnswer(bool userpicked) {
    if (question.isFinished()) {
      /*Fluttertoast.showToast(
        msg: "Score Updating",
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
      );*/
      Fluttertoast.showToast(
          msg: "Score Updating",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Score(score: scoreCount)));
    }

    setState(() {
      //setState is must- otherwise the changes won't reflect
      if (userpicked == question.getAnswer()) {
        scoreCount++;
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      }
      question.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          //<Widget>??
          Expanded(
            flex: 5, //flex:1 is default
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  //question[count],
                  question.getQuestion(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1, //default-> therefore, no difference
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                checkAnswer(true);
                /*setState(() {
                  //  count++;
                  question.nextQuestion();
                });*/
              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                checkAnswer(false);
                /*setState(() {
                  //  count++;
                  question.nextQuestion();
                });*/
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
            ),
          ),
          Row(
              children:
                  scoreKeeper //if scorekeeper is empty then no row is made on the page
              /*children: <Widget>[
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Icon(
                Icons.check,
                color: Colors.green,
              ),
            ],*/
              )
        ],
      ),
    );
  }
}
